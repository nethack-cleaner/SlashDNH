/*	SCCS Id: @(#)unixtty.c	3.4	1990/22/02 */
/* Copyright (c) Stichting Mathematisch Centrum, Amsterdam, 1985. */
/* NetHack may be freely redistributed.  See license for details. */

/* tty.c - (Unix) version */

/* With thanks to the people who sent code for SYSV - hpscdi!jon,
 * arnold@ucsf-cgl, wcs@bo95b, cbcephus!pds and others.
 */

#define NEED_VARARGS
#include "hack.h"

/*
 * The distinctions here are not BSD - rest but rather USG - rest, as
 * BSD still has the old sgttyb structure, but SYSV has termio. Thus:
 */
# define USG

#  include <termios.h>
#  include <unistd.h>
#  define termstruct	termios
#  include <sys/ioctl.h>
#  undef delay_output	/* curses redefines this */
#  include <curses.h>
# define kill_sym	c_cc[VKILL]
# define erase_sym	c_cc[VERASE]
# define intr_sym	c_cc[VINTR]
# ifdef TAB3	/* not a POSIX flag, but some have it anyway */
#  define EXTABS	TAB3
# else
#  define EXTABS	0
# endif
# define tabflgs	c_oflag
# define echoflgs	c_lflag
# define cbrkflgs	c_lflag
# define CBRKMASK	ICANON
# define CBRKON		! /* reverse condition */
#  define OSPEED(x)	(speednum(cfgetospeed(&x)))
# define IS_7BIT(x)	((x).c_cflag & CS7)
# define inputflags	c_iflag
# define STRIPHI	ISTRIP
#  define GTTY(x)	(tcgetattr(0, x))
#  define STTY(x)	(tcsetattr(0, TCSADRAIN, x))
#  define GTTY2(x)	1
#  define STTY2(x)	1
#   define nonesuch	(fpathconf(0, _PC_VDISABLE))
# define inittyb2	inittyb
# define curttyb2	curttyb


short	ospeed = 0;	/* gets around "not defined" error message */

	char erase_char, intr_char, kill_char;
static boolean settty_needed = FALSE;
struct termstruct inittyb, curttyb;

static int
speednum(speed_t speed)
{
	switch (speed) {
		case B0:	return 0;
		case B50:	return 1;
		case B75:	return 2;
		case B110:	return 3;
		case B134:	return 4;
		case B150:	return 5;
		case B200:	return 6;
		case B300:	return 7;
		case B600:	return 8;
		case B1200:	return 9;
		case B1800:	return 10;
		case B2400:	return 11;
		case B4800:	return 12;
		case B9600:	return 13;
		case B19200:	return 14;
		case B38400:	return 15;
	}

	return 0;
}

static void
setctty(void)
{
	if(STTY(&curttyb) < 0 || STTY2(&curttyb2) < 0)
		perror("NetHack (setctty)");
}

/*
 * Get initial state of terminal, set ospeed (for termcap routines)
 * and switch off tab expansion if necessary.
 * Called by startup() in termcap.c and after returning from ! or ^Z
 */
void
gettty(void)
{
	if(GTTY(&inittyb) < 0 || GTTY2(&inittyb2) < 0)
		perror("NetHack (gettty)");
	curttyb = inittyb;
	curttyb2 = inittyb2;
	ospeed = OSPEED(inittyb);
	erase_char = inittyb.erase_sym;
	kill_char = inittyb.kill_sym;
	intr_char = inittyb2.intr_sym;
	getioctls();

	/* do not expand tabs - they might be needed inside a cm sequence */
	if(curttyb.tabflgs & EXTABS) {
		curttyb.tabflgs &= ~EXTABS;
		setctty();
	}
	settty_needed = TRUE;
}

/* reset terminal to original state */
void
settty(const char *s)
{
	end_screen();
	if(s) raw_print(s);
	if(STTY(&inittyb) < 0 || STTY2(&inittyb2) < 0)
		perror("NetHack (settty)");
	iflags.echo = (inittyb.echoflgs & ECHO) ? ON : OFF;
	iflags.cbreak = (CBRKON(inittyb.cbrkflgs & CBRKMASK)) ? ON : OFF;
	curttyb.inputflags |= STRIPHI;
	setioctls();
}

void
setftty(void)
{
register int ef = 0;			/* desired value of flags & ECHO */
register int cf = CBRKON(CBRKMASK);	/* desired value of flags & CBREAK */
register int change = 0;
	iflags.cbreak = ON;
	iflags.echo = OFF;
	/* Should use (ECHO|CRMOD) here instead of ECHO */
	if((curttyb.echoflgs & ECHO) != ef){
		curttyb.echoflgs &= ~ECHO;
/*		curttyb.echoflgs |= ef;					*/
		change++;
	}
	if((curttyb.cbrkflgs & CBRKMASK) != cf){
		curttyb.cbrkflgs &= ~CBRKMASK;
		curttyb.cbrkflgs |= cf;
		/* be satisfied with one character; no timeout */
		curttyb.c_cc[VMIN] = 1;		/* was VEOF */
		curttyb.c_cc[VTIME] = 0;	/* was VEOL */
# ifdef POSIX_JOB_CONTROL
		/* turn off system suspend character
		 * due to differences in structure layout, this has to be
		 * here instead of in ioctl.c:getioctls() with the BSD
		 * equivalent
		 */
#  ifdef VSUSP	/* real POSIX */
		curttyb.c_cc[VSUSP] = nonesuch;
#  else		/* other later SYSV */
		curttyb.c_cc[VSWTCH] = nonesuch;
#  endif
# endif
# ifdef VDSUSP /* SunOS Posix extensions */
		curttyb.c_cc[VDSUSP] = nonesuch;
# endif
# ifdef VREPRINT
		curttyb.c_cc[VREPRINT] = nonesuch;
# endif
# ifdef VDISCARD
		curttyb.c_cc[VDISCARD] = nonesuch;
# endif
# ifdef VWERASE
		curttyb.c_cc[VWERASE] = nonesuch;
# endif
# ifdef VLNEXT
		curttyb.c_cc[VLNEXT] = nonesuch;
# endif
		change++;
	}
	if(!IS_7BIT(inittyb)) curttyb.inputflags &=~ STRIPHI;
	/* If an interrupt character is used, it will be overriden and
	 * set to ^C.
	 */
	if(intr_char != nonesuch && curttyb2.intr_sym != '\003') {
	    curttyb2.intr_sym = '\003';
	    change++;
	}

	if(change) setctty();
	start_screen();
}

void
intron(void)		/* enable kbd interupts if enabled when game started */
{
#ifdef TTY_GRAPHICS
	/* Ugly hack to keep from changing tty modes for non-tty games -dlc */
	if (!strcmp(windowprocs.name, "tty") &&
	    intr_char != nonesuch && curttyb2.intr_sym != '\003') {
	    curttyb2.intr_sym = '\003';
	    setctty();
	}
#endif
}

void
introff(void)		/* disable kbd interrupts if required*/
{
#ifdef TTY_GRAPHICS
	/* Ugly hack to keep from changing tty modes for non-tty games -dlc */
	if (!strcmp(windowprocs.name, "tty") &&
	   curttyb2.intr_sym != nonesuch) {
	    curttyb2.intr_sym = nonesuch;
	    setctty();
	}
#endif
}

#ifdef __linux__		/* via Jesse Thilo and Ben Gertzfield */
# include <sys/vt.h>

int linux_flag_console = 0;

void linux_mapon(void);
void linux_mapoff(void);
void check_linux_console(void);
void init_linux_cons(void);

void
linux_mapon(void)
{
# ifdef TTY_GRAPHICS
	if (!strcmp(windowprocs.name, "tty") && linux_flag_console) {
		write(1, "\033(B", 3);
	}
# endif
}

void
linux_mapoff(void)
{
# ifdef TTY_GRAPHICS
	if (!strcmp(windowprocs.name, "tty") && linux_flag_console) {
		write(1, "\033(U", 3);
	}
# endif
}

void
check_linux_console(void)
{
	struct vt_mode vtm;

	if (isatty(0) && ioctl(0,VT_GETMODE,&vtm) >= 0) {
		linux_flag_console = 1;
	}
}

void
init_linux_cons(void)
{
# ifdef TTY_GRAPHICS
	if (!strcmp(windowprocs.name, "tty") && linux_flag_console) {
		atexit(linux_mapon);
		linux_mapoff();
		if (has_colors())
			iflags.use_color = TRUE;
	}
# endif
}
#endif	/* __linux__ */

#ifndef __begui__	/* the Be GUI will define its own error proc */
/* fatal error */
/*VARARGS1*/
void
error VA_DECL(const char *,s)
{
	VA_START(s);
	VA_INIT(s, const char *);
	if(settty_needed)
		settty((char *)0);
	Vprintf(s,VA_ARGS);
	(void) putchar('\n');
	VA_END();
	exit(EXIT_FAILURE);
}
#endif /* !__begui__ */

void
check_utf8_console(void)
{
    struct termios original;
    /* store current tty settings */
    if (tcgetattr(STDIN_FILENO, &original) == -1) {
        perror("check_utf8_console get terminal settings");
        exit(EXIT_FAILURE);
    }

    /* set minimal raw mode */
    struct termios raw = original;
    cfmakeraw(&raw);
    raw.c_cc[VMIN] = 0;
    raw.c_cc[VTIME] = 3; /* timeout of 0.3 seconds */
    if (tcsetattr(STDIN_FILENO, TCSAFLUSH, &raw) == -1) {
        perror("check_utf8_console set raw mode");
        exit(EXIT_FAILURE);
    }

    /* output the non-breaking space character twice in raw UTF-8 */
    raw_print("\r\n\xc2\xa0\xc2\xa0");
    /* request the terminal to report the cursor position */
    raw_print("\x1b[6n");

    /* parse terminal reply */
    char c, previous_char = '\0';
    while (read(STDIN_FILENO, &c, 1) == 1) {
        /* skip everything until the row column separator */
        if (previous_char == ';') {
            /* column == 3 means UTF-8 is supported,
             * non-supporting terminals will report the cursor position
             * in column 5 */
            iflags.supports_utf8 = c == '3' ? TRUE : FALSE;

            /* disable read timeout */
            raw.c_cc[VTIME] = 0;
            if (tcgetattr(STDIN_FILENO, &raw) == -1) {
                perror("check_utf8_console failed getting raw settings");
                exit(EXIT_FAILURE);
            }
            if (tcsetattr(STDIN_FILENO, TCSAFLUSH, &raw) == -1) {
                perror("check_utf8_console failed disabling timeout");
                exit(EXIT_FAILURE);
            }
        }
        previous_char = c;
    }

    /* restore previous terminal settings */
    if (tcsetattr(STDIN_FILENO, TCSAFLUSH, &original) == -1) {
        perror("check_utf8_console restore terminal settings");
        exit(EXIT_FAILURE);
    }
}
