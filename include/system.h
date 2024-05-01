/*	SCCS Id: @(#)system.h	3.4	2001/12/07	*/
/* Copyright (c) Stichting Mathematisch Centrum, Amsterdam, 1985. */
/* NetHack may be freely redistributed.  See license for details. */

#ifndef SYSTEM_H
#define SYSTEM_H

#if !defined(__cplusplus)

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

/* We can't just include term.h, since some of the macro names (bell) conflict. */
extern int FDECL(tgetent, (char *,const char *));
extern void FDECL(tputs, (const char *,int,int (*)()));
extern int FDECL(tgetnum, (const char *));
extern int FDECL(tgetflag, (const char *));
extern char *FDECL(tgetstr, (const char *,char **));
extern char *FDECL(tgoto, (const char *,int,int));

#if defined(RANDOM) && defined(random)
# undef random
#endif

#endif /* !__cplusplus */

/* You may want to change this to fit your system, as this is almost
 * impossible to get right automatically.
 * This is the type of signal handling functions.
 */
#ifndef SIG_RET_TYPE
# define SIG_RET_TYPE void (*)(int)
#endif

#endif /* SYSTEM_H */
