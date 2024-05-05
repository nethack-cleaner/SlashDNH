/*	SCCS Id: @(#)hacklib.c	3.4	2002/12/13	*/
/* Copyright (c) Stichting Mathematisch Centrum, Amsterdam, 1985. */
/* Copyright (c) Robert Patrick Rankin, 1991		  */
/* NetHack may be freely redistributed.  See license for details. */

/* We could include only config.h, except for the overlay definitions... */
#include "hack.h"
/*=
    Assorted 'small' utility routines.	They're virtually independent of
NetHack, except that rounddiv may call panic().

      return type     routine name    argument type(s)
	boolean		digit		(char)
	boolean		letter		(char)
	char		highc		(char)
	char		lowc		(char)
	char *		lcase		(char *)
	char *		upstart		(char *)
	char *		mungspaces	(char *)
	char *		eos		(char *)
	char *		strkitten	(char *,char)
	char *		s_suffix	(const char *)
	char *		ing_suffix	(const char *)
	char *		xcrypt		(const char *, char *)
	boolean		onlyspace	(const char *)
	char *		tabexpand	(char *)
	char *		visctrl		(char)
	const char *	ordin		(int)
	char *		sitoa		(int)
	int		sgn		(int)
	int		rounddiv	(long, int)
	int		distmin		(int, int, int, int)
	int		dist2		(int, int, int, int)
	boolean		online2		(int, int)
	boolean		pmatch		(const char *, const char *)
	int		strncmpi	(const char *, const char *, int)
	char *		strstri		(const char *, const char *)
        char *          strsubst        (char *, const char *, const char *)
	boolean		fuzzymatch	(const char *,const char *,const char *,boolean)
	void		setrandom	(void)
	int		getyear		(void)
	char *		yymmdd		(time_t)
	long		yyyymmdd	(time_t)
	int		phase_of_the_moon	(void)
	boolean		friday_13th	(void)
	int		night		(void)
	int		midnight	(void)
=*/
#ifdef LINT
# define Static		/* pacify lint */
#else
# define Static static
#endif

boolean
digit(		/* is 'c' a digit? */
	char c)
{
    return((boolean)('0' <= c && c <= '9'));
}

boolean
letter(		/* is 'c' a letter?  note: '@' classed as letter */
	char c)
{
    return((boolean)(('@' <= c && c <= 'Z') || ('a' <= c && c <= 'z')));
}

char
highc(			/* force 'c' into uppercase */
	char c)
{
    return((char)(('a' <= c && c <= 'z') ? (c & ~040) : c));
}

char
lowc(			/* force 'c' into lowercase */
	char c)
{
    return((char)(('A' <= c && c <= 'Z') ? (c | 040) : c));
}

char *
lcase(		/* convert a string into all lowercase */
	char *s)
{
    register char *p;

    for (p = s; *p; p++)
	if ('A' <= *p && *p <= 'Z') *p |= 040;
    return s;
}

char *
upstart(		/* convert first character of a string to uppercase */
	char *s)
{
    if (s) *s = highc(*s);
    return s;
}

/* remove excess whitespace from a string buffer (in place) */
char *
mungspaces(char *bp)
{
    register char c, *p, *p2;
    boolean was_space = TRUE;

    for (p = p2 = bp; (c = *p) != '\0'; p++) {
	if (c == '\t') c = ' ';
	if (c != ' ' || !was_space) *p2++ = c;
	was_space = (c == ' ');
    }
    if (was_space && p2 > bp) p2--;
    *p2 = '\0';
    return bp;
}


char *
eos(			/* return the end of a string (pointing at '\0') */
	register char *s)
{
    while (*s) s++;	/* s += strlen(s); */
    return s;
}

/* strcat(s, {c,'\0'}); */
char *
strkitten(		/* append a character to a string (in place) */
	char *s,
	char c)
{
    char *p = eos(s);

    *p++ = c;
    *p = '\0';
    return s;
}

/* replace (in place) characters below space in the string */
void
sanitizestr(char *s)
{
    if (!s) return;
    while (*s) {
	if (*s <= ' ') *s = ' ';
	s++;
    }
}


char *
s_suffix(		/* return a name converted to possessive */
	const char *s)
{
#define SSUFFIX_BUFFERS 3
	Static char buf[SSUFFIX_BUFFERS][BUFSZ];
	static int i = 0;
	i = (i + 1) % SSUFFIX_BUFFERS;

    Strcpy(buf[i], s);
    if(!strcmpi(buf[i], "it"))
	Strcat(buf[i], "s");
    else if(*(eos(buf[i])-1) == 's')
	Strcat(buf[i], "'");
    else
	Strcat(buf[i], "'s");
    return buf[i];
#undef SSUFFIX_BUFFERS
}

/* construct a gerund (a verb formed by appending "ing" to a noun) */
char *
ing_suffix(const char *s)
{
    static const char vowel[] = "aeiouwy";
    static char buf[BUFSZ];
    char onoff[10];
    char *p;

    Strcpy(buf, s);
    p = eos(buf);
    onoff[0] = *p = *(p + 1) = '\0';
    if ((p >= &buf[3] && !strcmpi(p - 3, " on"))
        || (p >= &buf[4] && !strcmpi(p - 4, " off"))
        || (p >= &buf[5] && !strcmpi(p - 5, " with"))) {
        p = strrchr(buf, ' ');
        Strcpy(onoff, p);
        *p = '\0';
    }
    if (p >= &buf[2] && !strcmpi(p - 2, "er")) { /* slither + ing */
        /* nothing here */
    } else if (p >= &buf[3] && !strchr(vowel, *(p - 1))
        && strchr(vowel, *(p - 2)) && !strchr(vowel, *(p - 3))) {
        /* tip -> tipp + ing */
        *p = *(p - 1);
        *(p + 1) = '\0';
    } else if (p >= &buf[2] && !strcmpi(p - 2, "ie")) { /* vie -> vy + ing */
        *(p - 2) = 'y';
        *(p - 1) = '\0';
    } else if (p >= &buf[1] && *(p - 1) == 'e') /* grease -> greas + ing */
        *(p - 1) = '\0';
    Strcat(buf, "ing");
    if (onoff[0])
        Strcat(buf, onoff);
    return buf;
}

char *
xcrypt(	/* trivial text encryption routine (see makedefs) */
	const char *str,
	char *buf)
{
    register const char *p;
    register char *q;
    register int bitmask;

    for (bitmask = 1, p = str, q = buf; *p; q++) {
	*q = *p++;
	if (*q & (32|64)) *q ^= bitmask;
	if ((bitmask <<= 1) >= 32) bitmask = 1;
    }
    *q = '\0';
    return buf;
}

boolean
onlyspace(		/* is a string entirely whitespace? */
	const char *s)
{
    for (; *s; s++)
	if (*s != ' ' && *s != '\t') return FALSE;
    return TRUE;
}

char *
tabexpand(		/* expand tabs into proper number of spaces */
	char *sbuf)
{
    char buf[BUFSZ];
    register char *bp, *s = sbuf;
    register int idx;

    if (!*s) return sbuf;

    /* warning: no bounds checking performed */
    for (bp = buf, idx = 0; *s; s++)
	if (*s == '\t') {
	    do *bp++ = ' '; while (++idx % 8);
	} else {
	    *bp++ = *s;
	    idx++;
	}
    *bp = 0;
    return strcpy(sbuf, buf);
}

char *
visctrl(		/* make a displayable string from a character */
	char c)
{
    Static char ccc[3];

    c &= 0177;

    ccc[2] = '\0';
    if (c < 040) {
	ccc[0] = '^';
	ccc[1] = c | 0100;	/* letter */
    } else if (c == 0177) {
	ccc[0] = '^';
	ccc[1] = c & ~0100;	/* '?' */
    } else {
	ccc[0] = c;		/* printable character */
	ccc[1] = '\0';
    }
    return ccc;
}

const char *
ordin(		/* return the ordinal suffix of a number */
	int n			/* note: should be non-negative */)
{
    register int dd = n % 10;

    return (dd == 0 || dd > 3 || (n % 100) / 10 == 1) ? "th" :
	    (dd == 1) ? "st" : (dd == 2) ? "nd" : "rd";
}

char *
sitoa(		/* make a signed digit string from a number */
	int n)
{
    Static char buf[13];

    Sprintf(buf, (n < 0) ? "%d" : "+%d", n);
    return buf;
}

int
sgn(			/* return the sign of a number: -1, 0, or 1 */
	int n)
{
    return (n < 0) ? -1 : (n != 0);
}

int
rounddiv(		/* calculate x/y, rounding as appropriate */
	long x,
	int y)
{
    int r, m;
    int divsgn = 1;

    if (y == 0)
	panic("division by zero in rounddiv");
    else if (y < 0) {
	divsgn = -divsgn;  y = -y;
    }
    if (x < 0) {
	divsgn = -divsgn;  x = -x;
    }
    r = x / y;
    m = x % y;
    if (2*m >= y) r++;

    return divsgn * r;
}

int
distmin( /* distance between two points, in moves */
	int x0,
	int y0,
	int x1,
	int y1)
{
    register int dx = x0 - x1, dy = y0 - y1;
    if (dx < 0) dx = -dx;
    if (dy < 0) dy = -dy;
  /*  The minimum number of moves to get from (x0,y0) to (x1,y1) is the
   :  larger of the [absolute value of the] two deltas.
   */
    return (dx < dy) ? dy : dx;
}

int
dist2(	/* square of euclidean distance between pair of pts */
	int x0,
	int y0,
	int x1,
	int y1)
{
    register int dx = x0 - x1, dy = y0 - y1;
    return dx * dx + dy * dy;
}

boolean
online2( /* are two points lined up (on a straight line)? */
	int x0,
	int y0,
	int x1,
	int y1)
{
    int dx = x0 - x1, dy = y0 - y1;
    /*  If either delta is zero then they're on an orthogonal line,
     *  else if the deltas are equal (signs ignored) they're on a diagonal.
     */
    return((boolean)(!dy || !dx || (dy == dx) || (dy + dx == 0)));	/* (dy == -dx) */
}


boolean
pmatch(	/* match a string against a pattern */
	const char *patrn,
	const char *strng)
{
    char s, p;
  /*
   :  Simple pattern matcher:  '*' matches 0 or more characters, '?' matches
   :  any single character.  Returns TRUE if 'strng' matches 'patrn'.
   */
pmatch_top:
    s = *strng++;  p = *patrn++;	/* get next chars and pre-advance */
    if (!p)			/* end of pattern */
	return((boolean)(s == '\0'));		/* matches iff end of string too */
    else if (p == '*')		/* wildcard reached */
	return((boolean)((!*patrn || pmatch(patrn, strng-1)) ? TRUE :
		s ? pmatch(patrn-1, strng) : FALSE));
    else if (p != s && (p != '?' || !s))  /* check single character */
	return FALSE;		/* doesn't match */
    else				/* return pmatch(patrn, strng); */
	goto pmatch_top;	/* optimize tail recursion */
}

#ifndef STRNCMPI
int
strncmpi(	/* case insensitive counted string comparison */
	register const char *s1,
	register const char *s2,
	register int n /*(should probably be size_t, which is usually unsigned)*/)
{					/*{ aka strncasecmp }*/
    register char t1, t2;

    while (n--) {
	if (!*s2) return (*s1 != 0);	/* s1 >= s2 */
	else if (!*s1) return -1;	/* s1  < s2 */
	t1 = lowc(*s1++);
	t2 = lowc(*s2++);
	if (t1 != t2) return (t1 > t2) ? 1 : -1;
    }
    return 0;				/* s1 == s2 */
}
#endif	/* STRNCMPI */

#ifndef STRSTRI

char *
strstri(	/* case insensitive substring search */
	const char *str,
	const char *sub)
{
    register const char *s1, *s2;
    register int i, k;
# define TABSIZ 0x20	/* 0x40 would be case-sensitive */
    char tstr[TABSIZ], tsub[TABSIZ];	/* nibble count tables */
# if 0
    assert( (TABSIZ & ~(TABSIZ-1)) == TABSIZ ); /* must be exact power of 2 */
    assert( &lowc != 0 );			/* can't be unsafe macro */
# endif

    /* special case: empty substring */
    if (!*sub)	return (char *) str;

    /* do some useful work while determining relative lengths */
    for (i = 0; i < TABSIZ; i++)  tstr[i] = tsub[i] = 0;	/* init */
    for (k = 0, s1 = str; *s1; k++)  tstr[*s1++ & (TABSIZ-1)]++;
    for (	s2 = sub; *s2; --k)  tsub[*s2++ & (TABSIZ-1)]++;

    /* evaluate the info we've collected */
    if (k < 0)	return (char *) 0;  /* sub longer than str, so can't match */
    for (i = 0; i < TABSIZ; i++)	/* does sub have more 'x's than str? */
	if (tsub[i] > tstr[i])	return (char *) 0;  /* match not possible */

    /* now actually compare the substring repeatedly to parts of the string */
    for (i = 0; i <= k; i++) {
	s1 = &str[i];
	s2 = sub;
	while (lowc(*s1++) == lowc(*s2++))
	    if (!*s2)  return (char *) &str[i];		/* full match */
    }
    return (char *) 0;	/* not found */
}
#endif	/* STRSTRI */

/* substitute a word or phrase in a string (in place) */
/* caller is responsible for ensuring that bp points to big enough buffer */
char *
strsubst(char *bp, const char *orig, const char *replacement)
{
    char *found, buf[BUFSZ];

    if (bp) {
        /* [this could be replaced by strNsubst(bp, orig, replacement, 1)] */
        found = strstr(bp, orig);
        if (found) {
            Strcpy(buf, found + strlen(orig));
            Strcpy(found, replacement);
            Strcat(bp, buf);
        }
    }
    return bp;
}

/* compare two strings for equality, ignoring the presence of specified
   characters (typically whitespace) and possibly ignoring case */
boolean
fuzzymatch(const char *s1, const char *s2, const char *ignore_chars, boolean caseblind)
{
    register char c1, c2;

    do {
	while ((c1 = *s1++) != '\0' && index(ignore_chars, c1) != 0) continue;
	while ((c2 = *s2++) != '\0' && index(ignore_chars, c2) != 0) continue;
	if (!c1 || !c2) break;	/* stop when end of either string is reached */

	if (caseblind) {
	    c1 = lowc(c1);
	    c2 = lowc(c2);
	}
    } while (c1 == c2);

    /* match occurs only when the end of both strings has been reached */
    return (boolean)(!c1 && !c2);
}


/*
 * Time routines
 *
 * The time is used for:
 *	- seed for rand()
 *	- year on tombstone and yyyymmdd in record file
 *	- phase of the moon (various monsters react to NEW_MOON or FULL_MOON)
 *	- night and midnight (the undead are dangerous at midnight)
 *	- determination of what files are "very old"
 */

static struct tm *NDECL(getlt);

void
setrandom(void)
{
  
  FILE *fptr = NULL;
  int rnd[2];

  fptr = fopen("/dev/urandom","r");
  if (fptr) fread((void *)rnd, sizeof(int),1,fptr);
  fclose(fptr);
  
	/* the types are different enough here that sweeping the different
	 * routine names into one via #defines is even more confusing
	 */
#ifdef RANDOM	/* srandom() from sys/share/random.c */
	srandom((unsigned int) time((time_t *)0));
#else
	srandom((int) (time((time_t *)0)) + rnd[0]);
#endif
	srand((int) time((time_t *)0)); /*The basic rand function is always used in a few places, so seed it*/
}

static struct tm *
getlt(void)
{
	time_t date;

	(void) time(&date);
	return(localtime(&date));
}

int
getyear(void)
{
	return(1900 + getlt()->tm_year);
}

#if 0
/* This routine is no longer used since in 2000 it will yield "100mmdd". */
char *
yymmdd(time_t date)
{
	Static char datestr[10];
	struct tm *lt;

	if (date == 0)
		lt = getlt();
	else
		lt = localtime(&date);

	Sprintf(datestr, "%02d%02d%02d",
		lt->tm_year, lt->tm_mon + 1, lt->tm_mday);
	return(datestr);
}
#endif

long
yyyymmdd(time_t date)
{
	long datenum;
	struct tm *lt;

	if (date == 0)
		lt = getlt();
	else
		lt = localtime(&date);

	/* just in case somebody's localtime supplies (year % 100)
	   rather than the expected (year - 1900) */
	if (lt->tm_year < 70)
	    datenum = (long)lt->tm_year + 2000L;
	else
	    datenum = (long)lt->tm_year + 1900L;
	/* yyyy --> yyyymm */
	datenum = datenum * 100L + (long)(lt->tm_mon + 1);
	/* yyyymm --> yyyymmdd */
	datenum = datenum * 100L + (long)lt->tm_mday;
	return datenum;
}

/*
 * moon period = 29.53058 days ~= 30, year = 365.2422 days
 * days moon phase advances on first day of year compared to preceding year
 *	= 365.2422 - 12*29.53058 ~= 11
 * years in Metonic cycle (time until same phases fall on the same days of
 *	the month) = 18.6 ~= 19
 * moon phase on first day of year (epact) ~= (11*(year%19) + 29) % 30
 *	(29 as initial condition)
 * current phase in days = first day phase + days elapsed in year
 * 6 moons ~= 177 days
 * 177 ~= 8 reported phases * 22
 * + 11/22 for rounding
 */
int
phase_of_the_moon(void)		/* 0-7, with 0: new, 4: full */
{
	register struct tm *lt = getlt();
	register int epact, diy, goldn;

	diy = lt->tm_yday;
	goldn = (lt->tm_year % 19) + 1;
	epact = (11 * goldn + 18) % 30;
	if ((epact == 25 && goldn > 11) || epact == 24)
		epact++;

	return( (((((diy + epact) * 6) + 11) % 177) / 22) & 7 );
}

boolean
is_june(void)
{
	register int month = getlt()->tm_mon;

	return((boolean)(month == 5)); // 0 is Jan, 11 is Dec
}

boolean
friday_13th(void)
{
	register struct tm *lt = getlt();

	return((boolean)(lt->tm_wday == 5 /* friday */ && lt->tm_mday == 13));
}

int
night(void)
{
	register int hour = getlt()->tm_hour;

	return(hour < 6 || hour > 21);
}

int
midnight(void)
{
	return(getlt()->tm_hour == 0);
}

//Integer hash function courtesy of Thomas Mueller via Stackoverflow
// Assumes that an int is 32 bits (gets good mixing in that case)
unsigned long int 
hash(unsigned long int x)
{
    x = ((x >> 16) ^ x) * 0x45d9f3b;
    x = ((x >> 16) ^ x) * 0x45d9f3b;
    x = (x >> 16) ^ x;
    return x;
}


/*hacklib.c*/
