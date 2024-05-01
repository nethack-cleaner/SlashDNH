/*	SCCS Id: @(#)tradstdc.h 3.4	1993/05/30	*/
/* Copyright (c) Stichting Mathematisch Centrum, Amsterdam, 1985. */
/* NetHack may be freely redistributed.  See license for details. */

#ifndef TRADSTDC_H
#define TRADSTDC_H


#ifdef NOVOID
#define void int
#endif

/*
 * Borland C provides enough ANSI C compatibility in its Borland C++
 * mode to warrant this.  But it does not set __STDC__ unless it compiles
 * in its ANSI keywords only mode, which prevents use of <dos.h> and
 * far pointer use.
 */
#if defined(__STDC__) && !defined(NOTSTDC)
#define NHSTDC
#endif


/*
 * ANSI X3J11 detection.
 * Makes substitutes for compatibility with the old C standard.
 */

#ifdef NEED_VARARGS		/* only define these if necessary */
/*
 * These have changed since 3.4.3.  VA_END() now provides an explicit
 * closing brace to complement VA_DECL()'s hidden opening brace, so code
 * started with VA_DECL() needs an extra opening brace to complement
 * the explicit final closing brace.  This was done so that the source
 * would look less strange, where VA_DECL() appeared to introduce a
 * function whose opening brace was missing; there are now visible and
 * invisible braces at beginning and end.  Sample usage:
void foo VA_DECL(int, arg)  --macro expansion has a hidden opening brace
{  --new, explicit opening brace (actually introduces a nested block)
  VA_START(bar);
  ...code for foo...
  VA_END();  --expansion now provides a closing brace for the nested block
}  --existing closing brace, still pairs with the hidden one in VA_DECL()
 * Reading the code--or using source browsing tools which match braces--
 * results in seeing a matched set of braces.  Usage of VA_END() is
 * potentially trickier, but nethack uses it in a straightforward manner.
 */

#include <stdarg.h>
#define VA_DECL(typ1,var1)	(typ1 var1, ...) { va_list the_args;
#define VA_DECL2(typ1,var1,typ2,var2)	\
	(typ1 var1, typ2 var2, ...) { va_list the_args;
#define VA_INIT(var1,typ1)
#define VA_NEXT(var1,typ1)	var1 = va_arg(the_args, typ1)
#define VA_ARGS		the_args
#define VA_START(x)		va_start(the_args, x)
#define VA_END()		va_end(the_args); }

#endif /* NEED_VARARGS */

#if defined(NHSTDC)

/*
 * Used for robust ANSI parameter forward declarations:
 * int VDECL(sprintf, (char *, const char *, ...));
 *
 * NDECL() is used for functions with zero arguments;
 * FDECL() is used for functions with a fixed number of arguments;
 * VDECL() is used for functions with a variable number of arguments.
 * Separate macros are needed because ANSI will mix old-style declarations
 * with prototypes, except in the case of varargs, and the OVERLAY-specific
 * trampoli.* mechanism conflicts with the ANSI <<f(void)>> syntax.
 */

# define NDECL(f)	f(void) /* overridden later if USE_TRAMPOLI set */

# define FDECL(f,p)	f p

# define VDECL(f,p)	f p

/* generic pointer, always a macro; genericptr_t is usually a typedef */
# define genericptr	void *

# if !defined(NHSTDC)
#   define const
#   define signed
#   define volatile
#  endif

/*
 * Suppress `const' if necessary and not handled elsewhere.
 * Don't use `#if defined(xxx) && !defined(const)'
 * because some compilers choke on `defined(const)'.
 * This has been observed with Lattice, MPW, and High C.
 */

#else /* NHSTDC */	/* a "traditional" C  compiler */

# define NDECL(f)	f()
# define FDECL(f,p)	f()
# define VDECL(f,p)	f()

#  define genericptr	void *

/*
 * Traditional C compilers don't have "signed", "const", or "volatile".
 */
# define signed
# define const
# define volatile

#endif /* NHSTDC */

/*
 * Used for definitions of functions which take no arguments to force
 * an explicit match with the NDECL prototype.  Needed in some cases
 * (MS Visual C 2005) for functions called through pointers.
 */
#define VOID_ARGS void

#ifndef genericptr_t
typedef genericptr genericptr_t;	/* (void *) or (char *) */
#endif


/*
 * According to ANSI, prototypes for old-style declarations must widen the
 * arguments to int.  However, the MSDOS compilers accept shorter arguments
 * (char, short, etc.) in prototypes and do typechecking with them.  Therefore
 * this mess to allow the better typechecking while also allowing some
 * prototypes for the ANSI compilers so people quit trying to fix the
 * prototypes to match the standard and thus lose the typechecking.
 */


#ifndef UNWIDENED_PROTOTYPES
# if defined(NHSTDC)
# define WIDENED_PROTOTYPES
# endif
#endif

#if 0
/* The problem below is still the case through 4.0.5F, but the suggested
 * compiler flags in the Makefiles suppress the nasty messages, so we don't
 * need to be quite so drastic.
 */
#if defined(__sgi) && !defined(__GNUC__)
/*
 * As of IRIX 4.0.1, /bin/cc claims to be an ANSI compiler, but it thinks
 * it's impossible for a prototype to match an old-style definition with
 * unwidened argument types.  Thus, we have to turn off all NetHack
 * prototypes, and avoid declaring several system functions, since the system
 * include files have prototypes and the compiler also complains that
 * prototyped and unprototyped declarations don't match.
 */
# undef NDECL
# undef FDECL
# undef VDECL
# define NDECL(f)	f()
# define FDECL(f,p)	f()
# define VDECL(f,p)	f()
#endif
#endif


	/* MetaWare High-C defaults to unsigned chars */
	/* AIX 3.2 needs this also */
#if defined(__HC__)
# undef signed
#endif


/*
 * Allow gcc2 to check parameters of printf-like calls with -Wformat;
 * append this to a prototype declaration (see pline() in extern.h).
 */
#ifdef __GNUC__
# if __GNUC__ >= 2
#define PRINTF_F(f,v) __attribute__ ((format (printf, f, v)))
# endif
#endif
#ifndef PRINTF_F
#define PRINTF_F(f,v)
#endif

#endif /* TRADSTDC_H */
