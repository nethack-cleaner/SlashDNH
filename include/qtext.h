/*	SCCS Id: @(#)qtext.h	3.4	1997/02/02	*/
/* Copyright (c) Mike Stephenson 1991.				  */
/* NetHack may be freely redistributed.  See license for details. */

#ifndef QTEXT_H
#define QTEXT_H

#define N_HDR	39		/* Maximum number of categories */
#define LEN_HDR 3		/* Maximum length of a category name */
#define ROLECOUNT 39

struct qtmsg {
	int	msgnum;
	char	delivery;
	long	offset,
		size;
};

#ifdef MAKEDEFS_C	/***** MAKEDEFS *****/

#define N_MSG	400		/* arbitrary (was 100) */

struct msghdr {
	int	n_msg;
	struct	qtmsg	qt_msg[N_MSG];
};

struct	qthdr {
	int	n_hdr;
	char	id[N_HDR][LEN_HDR];
	long	offset[N_HDR];
};

/* Error message macros */
#define CREC_IN_MSG	"Control record encountered during message - line %d\n"
#define DUP_MSG		"Duplicate message number at line %d\n"
#define END_NOT_IN_MSG	"End record encountered before message - line %d\n"
#define TEXT_NOT_IN_MSG	"Text encountered outside message - line %d\n"
#define UNREC_CREC	"Unrecognized Control record at line %d\n"
#define OUT_OF_HEADERS	"Too many message types (line %d)\nAdjust N_HDR in qtext.h and recompile.\n"
#define OUT_OF_MESSAGES "Too many messages in class (line %d)\nAdjust N_MSG in qtext.h and recompile.\n"


#else	/***** !MAKEDEFS *****/

struct	qtlists {
	struct	qtmsg	*common,
#if 0	/* UNUSED but available */
			*chrace,
#endif
			*chrole;
};


/*
 *	Quest message defines.	Used in quest.c to trigger off "realistic"
 *	dialogue to the player.
 */
#define QT_FIRSTTIME	 1
#define QT_NEXTTIME	 2
#define QT_OTHERTIME	 3

#define QT_GUARDTALK	 5	/* 5 random things guards say before quest */
#define QT_GUARDTALK2	10	/* 5 random things guards say after quest */

#define QT_FIRSTLEADER	15
#define QT_NEXTLEADER	16
#define QT_OTHERLEADER	17
#define QT_LASTLEADER	18
#define QT_BADLEVEL	19
#define QT_BADALIGN	20
#define QT_ASSIGNQUEST	21

#define QT_PISSED_OFF	22

#define QT_ENCOURAGE	25	/* 1-10 random encouragement messages */

#define QT_FIRSTLOCATE	35
#define QT_NEXTLOCATE	36

#define QT_FIRSTGOAL	40
#define QT_NEXTGOAL	41

#define QT_FIRSTNEMESIS 50
#define QT_NEXTNEMESIS	51
#define QT_OTHERNEMESIS 52
#define QT_NEMWANTSIT	53	/* you somehow got the artifact */

#define QT_DISCOURAGE	60	/* 1-10 random maledictive messages */

#define QT_GOTIT	70

#define QT_KILLEDNEM	80
#define QT_OFFEREDIT	81
#define QT_OFFEREDIT2	82	/* if you throw artifact to leader after #81 */

#define QT_OFFERART2	83	/* if you throw the alternate artifact to leader after #81 */

#define QT_POSTHANKS	90
#define QT_HASAMULET	91

#define QT_TURNEDSTAG	100 /* offset if you turn stag on your original quest leader */
#define QT_STARTQUEST1	200
#define QT_STARTLEADER1	201
#define QT_STARTTRAITOR1	202
#define QT_STARTLEADER2	203
#define QT_STARTTRAITOR2	204
#define QT_STARTLEADER3	205
#define QT_STARTTRAITOR3	206
#define QT_STARTLEADER4	207
#define QT_STARTTRAITOR4	208
#define QT_GLADIATORLEADER1	300
#define QT_GLADIATORLEADER2	301
#define QT_GLADIATORLEADER3	302
#define QT_GLADIATORLEADER4	303
#define QT_SALAMANDERLEADER1	304
#define QT_SALAMANDERLEADER2	305
#define QT_SALAMANDERLEADER3	306
#define QT_SALAMANDERLEADER4	307
#define QT_BERSERKERLEADER1	308
#define QT_BERSERKERLEADER2	309
#define QT_BERSERKERLEADER3	310
#define QT_BERSERKERLEADER4	311
#define QT_BLINDLEADER1	312
#define QT_BLINDLEADER2	313
#define QT_BLINDLEADER3	314
#define QT_BLINDLEADER4	315
#define QT_PACIFISTLEADER1	316
#define QT_PACIFISTLEADER2	317
#define QT_PACIFISTLEADER3	318
#define QT_PACIFISTLEADER4	319
#define QT_YEOMANLEADER1	320
#define QT_YEOMANLEADER2	321
#define QT_YEOMANLEADER3	322
#define QT_YEOMANLEADER4	323
#define QT_PALADINLEADER1	324
#define QT_PALADINLEADER2	325
#define QT_PALADINLEADER3	326
#define QT_PALADINLEADER4	327
#define QT_UNDERTAKERLEADER1	328
#define QT_UNDERTAKERLEADER2	329
#define QT_UNDERTAKERLEADER3	330
#define QT_UNDERTAKERLEADER4	331
#define QT_DIVERLEADER1	332
#define QT_DIVERLEADER2	333
#define QT_DIVERLEADER3	334
#define QT_DIVERLEADER4	335
#define QT_NINJALEADER1	336
#define QT_NINJALEADER2	337
#define QT_NINJALEADER3	338
#define QT_NINJALEADER4	339
#define QT_LOCKSMITHLEADER1	340
#define QT_LOCKSMITHLEADER2	341
#define QT_LOCKSMITHLEADER3	342
#define QT_LOCKSMITHLEADER4	343
#define QT_DRUNKLEADER1	344
#define QT_DRUNKLEADER2	345
#define QT_DRUNKLEADER3	346
#define QT_DRUNKLEADER4	347
#define QT_HACKERLEADER1	348
#define QT_HACKERLEADER2	349
#define QT_HACKERLEADER3	350
#define QT_HACKERLEADER4	351
#define QT_ROLEPLAYERLEADER1	352
#define QT_ROLEPLAYERLEADER2	353
#define QT_ROLEPLAYERLEADER3	354
#define QT_ROLEPLAYERLEADER4	355
#define QT_ZOOLEADER1	356
#define QT_ZOOLEADER2	357
#define QT_ZOOLEADER3	358
#define QT_ZOOLEADER4	359
#define QT_SACRIFICELEADER1	360
#define QT_SACRIFICELEADER2	361
#define QT_SACRIFICELEADER3	362
#define QT_SACRIFICELEADER4	363
#define QT_GHOULLEADER1	364
#define QT_GHOULLEADER2	365
#define QT_GHOULLEADER3	366
#define QT_GHOULLEADER4	367

/*
 *	Message defines for common text used in maledictions.
 */
#define COMMON_ID	"-"	/* Common message id value */

#define QT_ANGELIC	10
#define QTN_ANGELIC	10

#define QT_DEMONIC	30
#define QTN_DEMONIC	20

#define QT_BANISHED	60
#endif	/***** !MAKEDEFS *****/

#endif /* QTEXT_H */
