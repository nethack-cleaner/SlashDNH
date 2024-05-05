/*	SCCS Id: @(#)unixunix.c	3.4	1994/11/07	*/
/* Copyright (c) Stichting Mathematisch Centrum, Amsterdam, 1985. */
/* NetHack may be freely redistributed.  See license for details. */

/* This file collects some Unix dependencies */

#include "hack.h"	/* mainly for index() which depends on BSD */

#include <errno.h>
#include <sys/stat.h>
#include <limits.h>
#include <fcntl.h>
#include <signal.h>

#ifdef __linux__
extern void NDECL(linux_mapon);
extern void NDECL(linux_mapoff);
#endif

extern int FDECL(restore_savefile, (char *, const char *));

static struct stat buf;

/* see whether we should throw away this xlock file */
static int
veryold(int fd)
{
	time_t date;

	if(fstat(fd, &buf)) return(0);			/* cannot get status */
#ifndef INSURANCE
	if(buf.st_size != sizeof(int)) return(0);	/* not an xlock file */
#endif
	(void) time(&date);
	if(date - buf.st_mtime < 3L*24L*60L*60L) {	/* recent */
		int lockedpid;	/* should be the same size as hackpid */

		if(read(fd, (void *)&lockedpid, sizeof(lockedpid)) !=
			sizeof(lockedpid))
			/* strange ... */
			return(0);

		/* From: Rick Adams <seismo!rick> */
		/* This will work on 4.1cbsd, 4.2bsd and system 3? & 5. */
		/* It will do nothing on V7 or 4.1bsd. */
#ifndef NETWORK
		/* It will do a VERY BAD THING if the playground is shared
		   by more than one machine! -pem */
		if(!(kill(lockedpid, 0) == -1 && errno == ESRCH))
#endif
			return(0);
	}
	(void) close(fd);
	return(1);
}

static int
eraseoldlocks(void)
{
	register int i;

	/* cannot use maxledgerno() here, because we need to find a lock name
	 * before starting everything (including the dungeon initialization
	 * that sets astral_level, needed for maxledgerno()) up
	 */
	for(i = 1; i <= MAXDUNGEON*MAXLEVEL + 1; i++) {
		/* try to remove all */
		set_levelfile_name(lock, i);
		(void) unlink(fqname(lock, LEVELPREFIX, 0));
	}
	set_levelfile_name(lock, 0);
	if (unlink(fqname(lock, LEVELPREFIX, 0)))
		return(0);				/* cannot remove it */
	return(1);					/* success! */
}

void
getlock(void)
{
	register int i = 0, fd, c;
	const char *fq_lock;

#ifdef TTY_GRAPHICS
	/* idea from rpick%ucqais@uccba.uc.edu
	 * prevent automated rerolling of characters
	 * test input (fd0) so that tee'ing output to get a screen dump still
	 * works
	 * also incidentally prevents development of any hack-o-matic programs
	 */
	/* added check for window-system type -dlc */
	if (!strcmp(windowprocs.name, "tty"))
	    if (!isatty(0))
		error("You must play from a terminal.");
#endif

	/* we ignore QUIT and INT at this point */
	if (!lock_file(HLOCK, LOCKPREFIX, 10)) {
		wait_synch();
		error("%s", "");
	}

	regularize(lock);
	set_levelfile_name(lock, 0);

	if(locknum) {
		if(locknum > 25) locknum = 25;

		do {
			lock[0] = 'a' + i++;
			fq_lock = fqname(lock, LEVELPREFIX, 0);

			if((fd = open(fq_lock, 0)) == -1) {
			    if(errno == ENOENT) goto gotlock; /* no such file */
			    perror(fq_lock);
			    unlock_file(HLOCK);
			    error("Cannot open %s", fq_lock);
			}

			if(veryold(fd) /* closes fd if true */
							&& eraseoldlocks())
				goto gotlock;
			(void) close(fd);
		} while(i < locknum);

		unlock_file(HLOCK);
		error("Too many hacks running now.");
	} else {
		fq_lock = fqname(lock, LEVELPREFIX, 0);
		if((fd = open(fq_lock, 0)) == -1) {
			if(errno == ENOENT) goto gotlock;    /* no such file */
			perror(fq_lock);
			unlock_file(HLOCK);
			error("Cannot open %s", fq_lock);
		}

		if(veryold(fd) /* closes fd if true */ && eraseoldlocks())
			goto gotlock;
		(void) close(fd);

		/* drop the "perm" lock while the user decides */
		unlock_file(HLOCK);
		if(iflags.window_inited) {
		    c = yn_function("There is already a game in progress under your name.  Destroy old game [y], Recover it [r], Cancel [n] ?", "ynr", 'n');
		} else {
		    (void) printf("\nThere is already a game in progress under your name. Do what?\n");
		    (void) printf("\n  y - Destroy old game?");
		    (void) printf("\n  r - Try to recover it?");
		    (void) printf("\n  n - Cancel");
		    (void) printf("\n\n  => ");
		    (void) fflush(stdout);
		    do {
			c = getchar();
		    } while (!index("rRyYnN", c) && c != -1);
		    (void) printf("\e[7A"); /* cursor up 7 */
		    (void) printf("\e[J"); /* clear from cursor down */
		}
		if (!lock_file(HLOCK, LOCKPREFIX, 10)) {
			wait_synch();
			error("%s", "");
		}
		if (c == 'r' || c == 'R') {
		    if (restore_savefile(lock, fqn_prefix[SAVEPREFIX]) == 0) {
			const char *msg = "Automatical recovery of save file successful! "
			    "Press any key to continue ...\n";
			fflush(stdout);
			if (iflags.window_inited) {
			    pline("%s", msg);
			} else {
			    printf("\n\n%s", msg);
			    fflush(stdout);
			    c = getchar();
			}
			goto gotlock;
		    }
		} else if (c == 'y' || c == 'Y') {
			if(eraseoldlocks())
				goto gotlock;
			else {
				unlock_file(HLOCK);
				error("Couldn't destroy old game.");
			}
		} else {
			unlock_file(HLOCK);
			error("%s", "");
		}
	}

gotlock:
	fd = creat(fq_lock, FCMASK);
	unlock_file(HLOCK);
	if(fd == -1) {
		error("cannot creat lock file (%s).", fq_lock);
	} else {
		if(write(fd, (void *) &hackpid, sizeof(hackpid))
		    != sizeof(hackpid)){
			error("cannot write lock (%s)", fq_lock);
		}
		if(close(fd) == -1) {
			error("cannot close lock (%s)", fq_lock);
		}
	}
}

void
regularize(	/* normalize file name - we don't like .'s, /'s, spaces */
	register char *s)
{
	register char *lp;

	while((lp=index(s, '.')) || (lp=index(s, '/')) || (lp=index(s,' ')))
		*lp = '_';
}

#if defined(TIMED_DELAY) && !defined(msleep)
#include <poll.h>

void
msleep(msec)
unsigned msec;				/* milliseconds */
{
	struct pollfd unused;
	int msecs = msec;		/* poll API is signed */

	if (msecs < 0) msecs = 0;	/* avoid infinite sleep */
	(void) poll(&unused, (unsigned long)0, msecs);
}
#endif /* TIMED_DELAY for SYSV */

#ifdef SHELL
int
dosh(void)
{
	register char *str;
	if(iflags.debug_fuzzer);
		return 0;
	if(child(0)) {
		if((str = getenv("SHELL")) != (char*)0)
			(void) execl(str, str, (char *)0);
		else
			(void) execl("/bin/sh", "sh", (char *)0);
		raw_print("sh: cannot execute.");
		exit(EXIT_FAILURE);
	}
	return 0;
}
#endif /* SHELL */

#if defined(SHELL) || defined(DEF_PAGER) || defined(DEF_MAILREADER)
int
child(int wt)
{
	register int f;
	suspend_nhwindows((char *)0);	/* also calls end_screen() */
#ifdef __linux__
	linux_mapon();
#endif
	if((f = fork()) == 0){		/* child */
		(void) setgid(getgid());
		(void) setuid(getuid());
		(void) chdir(getenv("HOME"));
		return(1);
	}
	if(f == -1) {	/* cannot fork */
		pline("Fork failed.  Try again.");
		return(0);
	}
	/* fork succeeded; wait for child to exit */
	(void) signal(SIGINT,SIG_IGN);
	(void) signal(SIGQUIT,SIG_IGN);
	(void) wait( (int *) 0);
#ifdef __linux__
	linux_mapoff();
#endif
	(void) signal(SIGINT, (SIG_RET_TYPE) done1);
#ifdef WIZARD
	if(wizard) (void) signal(SIGQUIT,SIG_DFL);
#endif
	if(wt) {
		raw_print("");
		wait_synch();
	}
	resume_nhwindows();
	return(0);
}
#endif

#ifdef GETRES_SUPPORT

extern int FDECL(nh_getresuid, (uid_t *, uid_t *, uid_t *));
extern uid_t NDECL(nh_getuid);
extern uid_t NDECL(nh_geteuid);
extern int FDECL(nh_getresgid, (gid_t *, gid_t *, gid_t *));
extern gid_t NDECL(nh_getgid);
extern gid_t NDECL(nh_getegid);

int
(getresuid)(ruid, euid, suid)
uid_t *ruid, *euid, *suid;
{
    return nh_getresuid(ruid, euid, suid);
}

int
uid_t(int getuid)(void)
{
    return nh_getuid();
}

int
uid_t(int geteuid)(void)
{
    return nh_geteuid();
}

int
(getresgid)(rgid, egid, sgid)
gid_t *rgid, *egid, *sgid;
{
    return nh_getresgid(rgid, egid, sgid);
}

int
gid_t(int getgid)(void)
{
    return nh_getgid();
}

int
gid_t(int getegid)(void)
{
    return nh_getegid();
}

#endif	/* GETRES_SUPPORT */
