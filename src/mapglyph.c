/*	SCCS Id: @(#)mapglyph.c	3.4	2003/01/08	*/
/* Copyright (c) David Cohrs, 1991				  */
/* NetHack may be freely redistributed.  See license for details. */

#include "hack.h"
#if defined(TTY_GRAPHICS)
#include "wintty.h"	/* for prototype of has_color() only */
#endif
#include "color.h"
#define HI_DOMESTIC CLR_WHITE	/* monst.c */

int explcolors[] = {
	CLR_BLACK,	/* dark    */
	CLR_GREEN,	/* noxious */
	CLR_BROWN,	/* muddy   */
	CLR_BLUE,	/* wet     */
	CLR_MAGENTA,	/* magical */
	CLR_ORANGE,	/* fiery   */
	CLR_WHITE,	/* frosty  */
	CLR_GRAY,	/* gray  */
	CLR_BRIGHT_GREEN,	/* lime  */
	CLR_YELLOW,	/* yellow  */
	CLR_BRIGHT_BLUE,	/* bright blue */
	CLR_BRIGHT_MAGENTA,	/* magenta */
	CLR_RED,	/* red */
	CLR_BRIGHT_CYAN,	/* cyan */
};

#if !defined(TTY_GRAPHICS)
#define has_color(n)  TRUE
#endif

#define zap_color(n)  color = iflags.use_color ? zapcolors[n] : NO_COLOR
#ifndef USER_DUNGEONCOLOR
#define cmap_color(n) color = iflags.use_color ? defsyms[n].color : NO_COLOR
#else
#define cmap_color(n) color = iflags.use_color ? showsymcolors[n] : NO_COLOR
#endif
#define obj_color(n)  color = iflags.use_color ? (offset & 0x0f) : NO_COLOR
#define mon_color(n)  color = iflags.use_color ? mons[n].mcolor : NO_COLOR
#define invis_color(n) color = NO_COLOR
#define pet_color(n)  color = iflags.use_color ? mons[n].mcolor : NO_COLOR
#define mtemplate_color(n)  color = iflags.use_color ? mons[n].mcolor : NO_COLOR
#define peace_color(n)  color = iflags.use_color ? mons[n].mcolor : NO_COLOR
#define warn_color(n) color = iflags.use_color ? def_warnsyms[n].color : NO_COLOR
#define explode_color(n) color = iflags.use_color ? explcolors[n] : NO_COLOR
# if defined(REINCARNATION)
#  define ROGUE_COLOR
# endif


#ifdef ROGUE_COLOR
#define HAS_ROGUE_IBM_GRAPHICS (iflags.IBMgraphics && Is_rogue_level(&u.uz))
#endif

/** Returns the correct monster glyph.
 *  Returns a Unicode codepoint in UTF8graphics and an ASCII character otherwise. */
static glyph_t 
get_monsym(int glyph)
{
	if (iflags.UTF8graphics &&
	    permonst_unicode_codepoint[glyph]) {
		/* only return a Unicode codepoint when there is one configured */
		return permonst_unicode_codepoint[glyph];
	} else {
		return monsyms[(int)mons[glyph].mlet];
	}
}

/** Returns the correct object glyph.
 *  Returns a Unicode codepoint in UTF8graphics and an ASCII character otherwise. */
static glyph_t 
get_objsym(int glyph)
{
	if (iflags.UTF8graphics &&
	    objclass_unicode_codepoint[glyph]) {
		/* only return a Unicode codepoint when there is one configured */
		return objclass_unicode_codepoint[glyph];
	} else {
		return oc_syms[(int)objects[glyph].oc_class];
	}
}

/*ARGSUSED*/
void
mapglyph(int glyph, glyph_t *ochar, int *ocolor, unsigned int *obgcolor, int x, int y)
{
	register int offset;
	int color = NO_COLOR;
	int bgcolor = NO_COLOR;
	glyph_t ch;
	unsigned special = 0;
	struct trap *ttmp = t_at(x,y);

    /*
     *  Map the glyph back to a character and color.
     *
     *  Warning:  For speed, this makes an assumption on the order of
     *		  offsets.  The order is set in display.h.
     */
    if ((offset = (glyph - GLYPH_WARNING_OFF)) >= 0) {	/* a warning flash */
    	ch = warnsyms[offset];
		if ((On_stairs(x,y) || levl[x][y].typ == STAIRS) && levl[x][y].seenv) special |= MG_STAIRS;
		if (ttmp && ttmp->ttyp == MAGIC_PORTAL && levl[x][y].seenv) special |= MG_PORTAL;

# ifdef ROGUE_COLOR
	if (HAS_ROGUE_IBM_GRAPHICS)
	    color = NO_COLOR;
	else
# endif
	    warn_color(offset);
    } else if ((offset = (glyph - GLYPH_SWALLOW_OFF)) >= 0) {	/* swallow */
	/* see swallow_to_glyph() in display.c */
	ch = showsyms[S_sw_tl + (offset & 0x7)];
#ifdef ROGUE_COLOR
	if (HAS_ROGUE_IBM_GRAPHICS && iflags.use_color)
	    color = NO_COLOR;
	else
#endif
	    mon_color(offset >> 3);
    } else if ((offset = (glyph - GLYPH_CLOUD_OFF)) >= 0) {	/* zap beam */
	/* see zapdir_to_glyph() in display.c */
	ch = showsyms[S_cloud];
#ifdef ROGUE_COLOR
	if (HAS_ROGUE_IBM_GRAPHICS && iflags.use_color)
	    color = NO_COLOR;
	else
#endif
	color = iflags.use_color ? zap_glyph_color(offset) : NO_COLOR;
    } else if ((offset = (glyph - GLYPH_ZAP_OFF)) >= 0) {	/* zap beam */
	/* see zapdir_to_glyph() in display.c */
	ch = showsyms[S_vbeam + (offset & 0x3)];
#ifdef ROGUE_COLOR
	if (HAS_ROGUE_IBM_GRAPHICS && iflags.use_color)
	    color = NO_COLOR;
	else
#endif
	    zap_color((offset >> 2));
    } else if ((offset = (glyph - GLYPH_EXPLODE_OFF)) >= 0) {	/* explosion */
		ch = showsyms[(offset % MAXEXPCHARS) + S_explode1];
		explode_color(offset / MAXEXPCHARS);
    } else if ((offset = (glyph - GLYPH_CMAP_OFF)) >= 0) {	/* cmap */
	ch = showsyms[offset];
#ifdef ROGUE_COLOR
	if (HAS_ROGUE_IBM_GRAPHICS && iflags.use_color) {
	    if (offset >= S_vwall && offset <= S_hcdoor)
		color = CLR_BROWN;
	    else if (offset >= S_arrow_trap && offset <= S_switch_trap)
		color = CLR_MAGENTA;
	    else if (offset == S_corr || offset == S_litcorr)
		color = CLR_GRAY;
	    else if (offset >= S_drkroom && offset <= S_water)
		color = CLR_GREEN;
	    else
		color = NO_COLOR;
	} else
#endif
	    /* provide a visible difference if normal and lit corridor
	     * use the same symbol */
	    if (iflags.use_color &&
#ifndef USER_DUNGEONCOLOR
		offset == S_litcorr && ch == showsyms[S_corr])
		color = CLR_WHITE;
#else
		offset == S_litcorr && ch == showsyms[S_corr] &&
		    showsymcolors[S_corr] == showsymcolors[S_litcorr]) {
	if (showsymcolors[S_corr] != CLR_WHITE) {
	    color = showsymcolors[S_litcorr] = CLR_WHITE;
	} else {
	    color = showsymcolors[S_litcorr] = CLR_GRAY;
	}
    }
#endif /* USER_DUNGEONCOLOR */
	    else
		/* Special colours for special dungeon areas */
		if(iflags.use_color && iflags.dnethack_dungeon_colors){
			if(In_sokoban(&u.uz)){
				if(offset >= S_vwall && offset <= S_trwall){
					color = CLR_BRIGHT_BLUE;
				}
			} else if(In_endgame(&u.uz)){
				if(Is_earthlevel(&u.uz)){
					if(offset >= S_vwall && offset <= S_trwall){
						color = CLR_BROWN;
					}
					if(offset >= S_drkroom && offset <= S_brdnladder){
						color = CLR_BROWN;
					}
				} else if(Is_waterlevel(&u.uz)){
					if(offset < S_arrow_trap){
						color = CLR_BRIGHT_BLUE;
					}
					if(offset == S_water){
						color = CLR_BLUE;
					}
				} else if(Is_firelevel(&u.uz)){
					if(offset >= S_vwall && offset <= S_trwall){
						color = CLR_BLACK;
					}
					if(offset >= S_drkroom && offset <= S_brdnladder){
						color = offset == S_litroom ? CLR_GRAY : CLR_BLACK;
					}
				}
			} else if (In_void(&u.uz)){
				if(Is_sacris(&u.uz)){
					if(offset >= S_vwall && offset <= S_trwall){
						color = CLR_YELLOW;
					}
				} else if(Is_ilsensine(&u.uz)){
					if(offset >= S_vwall && offset <= S_trwall){
						color = CLR_WHITE;
					}
				}	
				else if(offset >= S_vwall && offset <= S_trwall){
					color = CLR_BLACK;
				}
			} else if(Is_sunsea(&u.uz)){
				if(offset >= S_vwall && offset <= S_trwall){
					color = CLR_BROWN;
				}
				if(offset >= S_drkroom && offset <= S_brdnladder){
					color = CLR_BROWN;
				}
			} else if(Is_paradise(&u.uz)){
				if(offset >= S_water){
					color = CLR_BRIGHT_BLUE;
				} else if(offset == S_drkroom || offset == S_corr || offset <= S_hcdoor){
					color = CLR_BROWN;
				} else if(offset >= S_litroom && offset <= S_brdnladder){
					color = CLR_YELLOW;
				}
			} else if(Is_peanut(&u.uz)){
				if(offset >= S_vwall && offset <= S_trwall){
					color = CLR_BROWN;
				} else if(offset >= S_water){
					color = CLR_BRIGHT_BLUE;
				} else if(offset == S_drkroom || offset == S_corr || offset <= S_hcdoor){
					color = CLR_BROWN;
				} else if(offset >= S_litroom && offset <= S_brdnladder){
					color = CLR_YELLOW;
				}
			} else if(Pantheon_if(PM_SALAMANDER) && In_quest(&u.uz)){
				if(offset >= S_litroom && offset <= S_dnladder){
					color = offset == S_litroom ? CLR_GRAY : CLR_BLACK;
				}
				if(offset == S_litsand) color = CLR_WHITE;
				if(offset == S_drksand) color = CLR_BLACK;
				if(offset >= S_vwall && offset <= S_trwall){
					color = CLR_ORANGE;
				}
				if(Is_qlocate(&u.uz) && offset >= S_ndoor && offset <= S_hcdoor){
					color = CLR_GRAY;
				}
			} else if(Is_forest_village(&u.uz)){
				if(offset >= S_vwall && offset <= S_trwall){
					color = CLR_GREEN;
				}
			} else if(In_icecaves(&u.uz)){
				if(offset >= S_vwall && offset <= S_trwall){
					color = CLR_WHITE;
				}
			} else if(In_dismalswamp(&u.uz)){
				if (offset == S_pool || offset == S_water)
					/*no fleecy colors here!*/
					if((y%4 == 0 && x%4 == 0) || 
						(y%4 == 0 && x%3 ==0) ||
						(y%3 == 0 && x%4 ==0)) 
						color = CLR_GREEN;
			} else if(In_blackforest(&u.uz)){
				if(offset == S_deadtree) color = CLR_BLACK;
			} else if(In_moloch_temple(&u.uz)){
				if(offset >= S_vwall && offset <= S_trwall){
					color = CLR_RED;
				}
				if(offset >= S_drkroom && offset <= S_brdnladder){
					color = offset == S_litroom ? CLR_GRAY : CLR_BLACK;
				}
			} else if(In_quest(&u.uz)){
				if(Role_if(PM_NOBLEMAN) && Race_if(PM_HALF_DRAGON) && flags.initgend){
					if (offset == S_tree)
						color = CLR_CYAN;
				}
			} else if(In_cha(&u.uz)){
				if(In_mithardir_quest(&u.uz)){
					if(In_mithardir_desert(&u.uz) || on_level(&u.uz, &elshava_level)){
						if((offset >= S_vwall && offset <= S_trwall)
							|| offset == S_litroom
							|| offset == S_brightrm
							|| offset == S_litcorr
							|| (offset >= S_upstair && offset <= S_brdnladder)
							|| offset == S_litsoil
							|| offset == S_litsand
						){
							color = CLR_WHITE;
						}
						if(offset == S_drkroom
							|| offset == S_corr
							|| offset == S_drksoil
							|| offset == S_drksand
						){
							color = CLR_BLACK;
						}
					} else if(In_mithardir_terminus(&u.uz)){
						if(offset == S_litroom
							|| offset == S_brightrm
							|| offset == S_litcorr
							|| offset == S_litsoil
							|| offset == S_litsand
						){
							color = CLR_GRAY;
						}
						if((offset >= S_vwall && offset <= S_trwall)
							|| offset == S_drkroom
							|| offset == S_corr
							|| offset == S_drksoil
							|| offset == S_drksand
							|| (offset >= S_upstair && offset <= S_brdnladder)
						){
							color = CLR_BLACK;
						}
					} else {
						if((offset >= S_vwall && offset <= S_trwall)
							|| offset == S_litroom
							|| offset == S_brightrm
							|| offset == S_litcorr
							|| (offset >= S_upstair && offset <= S_brdnladder)
							|| offset == S_litsoil
							|| offset == S_litsand
						){
							color = CLR_GRAY;
						}
						if(offset == S_drkroom
							|| offset == S_corr
							|| offset == S_drksoil
							|| offset == S_drksand
						){
							color = CLR_BLACK;
						}
					}
				} else if(In_mordor_quest(&u.uz)){
					if(In_mordor_forest(&u.uz) 
						|| Is_ford_level(&u.uz)
					){
						if(offset >= S_vwall && offset <= S_trwall){
							color = CLR_BROWN;
						}
					}
				} else {
					if(offset >= S_vwall && offset <= S_trwall){
						color = CLR_BLACK;
					}
					if(offset >= S_drkroom && offset <= S_brdnladder){
						color = offset == S_litroom ? CLR_GRAY : CLR_BLACK;
					}
					if(Is_lich_level(&u.uz)){
						if(offset >= S_vwall && offset <= S_trwall){
							color = CLR_BROWN;
						}
					} else if(Is_marilith_level(&u.uz)){
						if(offset >= S_vwall && offset <= S_trwall){
							color = CLR_ORANGE;
						}
					} else if(Is_kraken_level(&u.uz)){
						if(offset >= S_vwall && offset <= S_trwall){
							color = CLR_BRIGHT_BLUE;
						}
					} else if(Is_tiamat_level(&u.uz)){
						if(offset >= S_vwall && offset <= S_trwall){
							color = CLR_CYAN;
						}
					}
				}
			} else if(In_neu(&u.uz)) {
				if((u.uz.dnum == neutral_dnum && u.uz.dlevel <= sum_of_all_level.dlevel)) {
					if(offset >= S_vwall && offset <= S_trwall){
						color = CLR_BROWN;
					}
					if(offset == S_drkroom || offset == S_litroom){
						if(u.uz.dlevel < spire_level.dlevel &&
							u.uz.dlevel > gatetown_level.dlevel){
								if (*in_rooms(x,y, SHOPBASE)
									|| *in_rooms(x,y, TEMPLE)
									|| *in_rooms(x,y, BARRACKS)
									|| *in_rooms(x,y, COURT)
								) color = (offset == S_litroom) ? CLR_BROWN : CLR_BLACK;
							}
						else color = (offset == S_litroom) ? CLR_BROWN : CLR_BLACK;
					}
				}
				else if(Is_rlyeh(&u.uz)){
					if(offset >= S_vwall && offset <= S_trwall){
						color = CLR_BRIGHT_BLUE;
					}
					else if(offset >= S_drkroom && offset <= S_brdnladder){
						color = CLR_BLUE;
					}
				} else {
					if(offset >= S_vwall && offset <= S_trwall){
						color = CLR_BLACK;
					}
					else if(offset >= S_drkroom && offset <= S_brdnladder){
						color = offset == S_litroom ? CLR_GRAY : CLR_BLACK;
					}
				}
			} else if(In_law(&u.uz)){
				if(Is_path(&u.uz)){
					if(offset >= S_drkroom && offset <= S_brdnladder){
						color = CLR_BROWN;
					}
				}
				if(Is_arcadia_woods(&u.uz)){
					if(x<69 || !Is_arcadia3(&u.uz)){
						if(offset >= S_vwall && offset <= S_trwall){
							color = CLR_BROWN;
						}
						else if(offset >= S_drkroom && offset <= S_brdnladder){
							if(offset == S_litcorr || offset == S_corr)
								;
							
						}
						if (offset >= S_vwall && offset <= S_hcdoor) {
							if (*in_rooms(x,y,JELLYSHOP))
								color = CLR_YELLOW;
							else if (*in_rooms(x,y,CERAMICSHOP))
								color = CLR_BROWN;
							else if (*in_rooms(x,y,PETSHOP))
								color = CLR_BROWN;
							else if (*in_rooms(x,y,ACIDSHOP))
								color = CLR_BROWN;
						} else if (offset == S_drkroom || offset == S_litroom) {
							if (*in_rooms(x,y,JELLYSHOP))
								color = (offset == S_drkroom) ? CLR_BROWN : CLR_YELLOW;
							else if (*in_rooms(x,y,CERAMICSHOP))
								color = (offset == S_drkroom) ? CLR_BLACK : CLR_BROWN;
							else if (*in_rooms(x,y,PETSHOP))
								color = (offset == S_drkroom) ? CLR_BLACK : CLR_BROWN;
							else if (*in_rooms(x,y,ACIDSHOP))
								color = (offset == S_drkroom) ? CLR_BLACK : CLR_BROWN;
						}
					}
				}
			} else if(In_hell(&u.uz)){
				if(offset >= S_vwall && offset <= S_trwall){
					color = CLR_RED;
				}
				if(Is_valley(&u.uz)){
					if (iflags.use_color && Is_valley(&u.uz) && color != CLR_BLACK) {
						color = (color < NO_COLOR) ? CLR_GRAY : CLR_WHITE; /* The valley is drained of color */
					}
				}
				if(Is_abyss1(&u.uz)){
					if (Is_juiblex_level(&u.uz)){
						if (offset == S_pool || offset == S_water)
							color = CLR_GREEN;
						if(offset >= S_vwall && offset <= S_hcdoor)
							color = CLR_GREEN;
						if (offset == S_drkroom)
							color = CLR_GREEN;
						if (offset == S_litroom)
							color = CLR_BRIGHT_GREEN;
					}
					else if (Is_zuggtmoy_level(&u.uz)){
						if (offset == S_pool || offset == S_water)
							color = CLR_GREEN;
						if(offset >= S_vwall && offset <= S_hcdoor)
							color = CLR_GREEN;
						if (offset == S_drkroom || offset == S_litroom)
							color = CLR_MAGENTA;
						if (offset == S_tree)
							color = CLR_BRIGHT_MAGENTA;
					}
					else if (Is_yeenoghu_level(&u.uz)){
						if (offset == S_pool || offset == S_water)
							color = CLR_YELLOW;
						if(offset >= S_vwall && offset <= S_hcdoor)
							color = CLR_BROWN;
						if (offset == S_drkgrass)
							color = CLR_BROWN;
						if (offset == S_litgrass)
							color = CLR_YELLOW;
						if (offset == S_drkroom)
							color = CLR_BLACK;
						if (offset == S_litroom)
							color = CLR_BROWN;
						if (offset == S_tree)
							color = CLR_BROWN;
					}
					else if (Is_night_level(&u.uz)){
						if(*in_rooms(x,y,MORGUE)){
							if(offset >= S_vwall && offset <= S_hcdoor)
								color = CLR_WHITE;
							if (offset == S_drkroom || offset == S_litroom)
								color = CLR_GRAY;
						}
					}
					// else if (Is_baphomet_level(&u.uz)){
					// }
				} else if(Is_abyss2(&u.uz)){
					if (Is_orcus_level(&u.uz)){
						if(offset >= S_vwall && offset <= S_hcdoor)
							color = CLR_BLACK;
						else if (offset == S_drkroom)
							color = CLR_BLACK;
						else if (offset == S_litroom)
							color = CLR_BROWN;
					}
				} else if(Is_abyss3(&u.uz)){
					if(Is_lamashtu_level(&u.uz) && 
						offset >= S_vwall && 
						offset <= S_hcdoor
					) color = CLR_BROWN;
					else if(offset >= S_vwall && offset <= S_hcdoor)
						color = CLR_GREEN;
				} else if(Is_hell3(&u.uz)){
						if (offset == S_drkroom) color = CLR_RED;
						else if(offset == S_litroom) color = CLR_ORANGE;
				}
			}
			if (offset >= S_brupstair && offset <= S_brdnladder){
				/* each main dungeon stair should be identifiable by color
				 * yellow is re-used for sea & sokoban but those are different directions
				 * temple is red because wall color, lost tomb is black bc idk spooky
				 * and mines is brown obviously
				 */
				if (Is_mineend_level(&sstairs.tolev))
					color = CLR_BROWN;
				else if (In_tower(&sstairs.tolev))
					color = CLR_BLUE;
				/* else if (In_sokoban(&sstairs.tolev))
					color = CLR_BLUE; soko doesn't use blue stairs, leave this yellow */
				else if (In_sea(&sstairs.tolev))
					color = CLR_YELLOW;
				else if (In_moloch_temple(&sstairs.tolev))
					color = CLR_RED;
				else if (In_lost_tomb(&sstairs.tolev))
					color = CLR_BLACK;
				else if (In_lost_cities(&sstairs.tolev))
					color = CLR_BLUE;
				else if (In_outlands(&sstairs.tolev))
					color = CLR_BROWN;
				else if (In_outlands(&u.uz)) /* if not going to lost cities, going to illurien */
					color = CLR_BRIGHT_BLUE;
				else if (In_hell(&u.uz) && (&sstairs.tolev)->dnum == 0) /* hell into VOTD */
					color = CLR_GRAY;
			}

			if (offset >= S_vwall && offset <= S_hcdoor) {
				if (*in_rooms(x,y,BEEHIVE))
					color = CLR_YELLOW;
				else if (In_W_tower(x, y, &u.uz))
					color = CLR_MAGENTA;
				else if (In_mines_quest(&u.uz) && !Is_nemesis(&u.uz))
					color = CLR_BROWN;
				else if (Is_astralevel(&u.uz))
					color = CLR_WHITE;
			} else if (offset == S_drkroom || offset == S_litroom) {
				if (*in_rooms(x,y,BEEHIVE))
					color = (offset == S_drkroom) ? CLR_BROWN : CLR_YELLOW;
				else if(In_mines_quest(&u.uz) && !Is_nemesis(&u.uz)){
					color = (offset == S_drkroom) ? CLR_BLACK : CLR_BROWN;
				}
			} else if (offset == S_altar) {
				if (Hallucination) color = rn2(CLR_MAX);
				else if (Is_astralevel(&u.uz)) color = CLR_BRIGHT_MAGENTA;
				else if(Is_sanctum(&u.uz)) color = CLR_MAGENTA;
				else switch(a_align(x, y)) {
					case A_LAWFUL: color = CLR_WHITE; break;
					case A_NEUTRAL: color = CLR_GRAY; break;
					case A_CHAOTIC: color = CLR_BLACK; break;
					case A_NONE: color = CLR_RED; break;
					default: color = CLR_YELLOW; break;
				}
			}
			if(artifact_door(x, y)){
				color = CLR_MAGENTA;
			}
			if(u.uevent.found_square && invocation_pos(x, y) && !On_stairs(x, y)){
				color = CLR_MAGENTA;
				ch = '_';
			}
		}
		if (color == NO_COLOR) cmap_color(offset);
	} else if ((offset = (glyph - GLYPH_OBJ_OFF)) >= 0) {	/* object */
		/* color should come first as it is in the first 4 bits*/
#ifdef ROGUE_COLOR
		if (HAS_ROGUE_IBM_GRAPHICS && iflags.use_color) {
			switch (objects[offset >> 4].oc_class) {
			case COIN_CLASS: color = CLR_YELLOW; break;
			case FOOD_CLASS: color = CLR_RED; break;
			default: color = CLR_BRIGHT_BLUE; break;
			}
		}
		else
#endif
			obj_color(offset);
		/* shift out the 4 bits of color to leave the otyp */
		offset = offset >> 4;
		if ((On_stairs(x,y) || levl[x][y].typ == STAIRS) && levl[x][y].seenv) special |= MG_STAIRS;
		if (ttmp && ttmp->ttyp == MAGIC_PORTAL && levl[x][y].seenv) special |= MG_PORTAL;
		if ((offset == BOULDER || offset == MASSIVE_STONE_CRATE || offset == MASS_OF_STUFF) && iflags.bouldersym) ch = iflags.bouldersym;
		else ch = get_objsym(offset);

		if (offset != BOULDER &&
		    level.objects[x][y] &&
		    level.objects[x][y]->nexthere) {
		    special |= MG_OBJPILE;
		}
    } else if ((offset = (glyph - GLYPH_RIDDEN_OFF)) >= 0) {	/* mon ridden */
		if ((On_stairs(x,y) || levl[x][y].typ == STAIRS) && levl[x][y].seenv) special |= MG_STAIRS;
		if (ttmp && ttmp->ttyp == MAGIC_PORTAL && levl[x][y].seenv) special |= MG_PORTAL;

		ch = get_monsym(offset);
#ifdef ROGUE_COLOR
		if (HAS_ROGUE_IBM_GRAPHICS)
			/* This currently implies that the hero is here -- monsters */
			/* don't ride (yet...).  Should we set it to yellow like in */
			/* the monster case below?  There is no equivalent in rogue. */
			color = NO_COLOR;	/* no need to check iflags.use_color */
		else
#endif
	    mon_color(offset);
	    special |= MG_RIDDEN;
    } else if ((offset = (glyph - GLYPH_BODY_OFF)) >= 0) {	/* a corpse */
		if ((On_stairs(x,y) || levl[x][y].typ == STAIRS) && levl[x][y].seenv) special |= MG_STAIRS;
		if (ttmp && ttmp->ttyp == MAGIC_PORTAL && levl[x][y].seenv) special |= MG_PORTAL;

		ch = get_objsym(CORPSE);
#ifdef ROGUE_COLOR
		if (HAS_ROGUE_IBM_GRAPHICS && iflags.use_color)
			color = CLR_RED;
		else
#endif
	    mon_color(offset);
	    special |= MG_CORPSE;
	if (offset != BOULDER &&
	    level.objects[x][y] &&
	    level.objects[x][y]->nexthere) { /*object pile*/
	    special |= MG_OBJPILE;
	}
    } else if ((offset = (glyph - GLYPH_DETECT_OFF)) >= 0) {	/* mon detect */
		if ((On_stairs(x,y) || levl[x][y].typ == STAIRS) && levl[x][y].seenv) special |= MG_STAIRS;
		if (ttmp && ttmp->ttyp == MAGIC_PORTAL && levl[x][y].seenv) special |= MG_PORTAL;

		ch = get_monsym(offset);
#ifdef ROGUE_COLOR
		if (HAS_ROGUE_IBM_GRAPHICS)
			color = NO_COLOR;	/* no need to check iflags.use_color */
		else
#endif
	    mon_color(offset);
	/* Disabled for now; anyone want to get reverse video to work? */
	/* is_reverse = TRUE; */
	    special |= MG_DETECT;
    } else if ((offset = (glyph - GLYPH_INVIS_OFF)) >= 0) {	/* invisible */
		if ((On_stairs(x,y) || levl[x][y].typ == STAIRS) && levl[x][y].seenv) special |= MG_STAIRS;
		if (ttmp && ttmp->ttyp == MAGIC_PORTAL && levl[x][y].seenv) special |= MG_PORTAL;

		ch = DEF_INVISIBLE;
#ifdef ROGUE_COLOR
		if (HAS_ROGUE_IBM_GRAPHICS)
			color = NO_COLOR;	/* no need to check iflags.use_color */
		else
#endif
	    invis_color(offset);
	    special |= MG_INVIS;
    } else if ((offset = (glyph - GLYPH_MTEMPLATE_OFF)) >= 0) {	/* a templated monster */
		if ((On_stairs(x,y) || levl[x][y].typ == STAIRS) && levl[x][y].seenv) special |= MG_STAIRS;
		if (ttmp && ttmp->ttyp == MAGIC_PORTAL && levl[x][y].seenv) special |= MG_PORTAL;

		ch = monsyms[(int)mons[offset % NUMMONS].mlet];
		int template = (glyph - GLYPH_MTEMPLATE_OFF) / NUMMONS + 1;

		if (iflags.monstertemplate[template - 1].set & MONSTERTEMPLATE_BACKGROUND)
			bgcolor = iflags.monstertemplate[template - 1].bg;

		if (iflags.monstertemplate[template - 1].set & MONSTERTEMPLATE_SYMBOL)
			ch = iflags.monstertemplate[template - 1].symbol;
#ifdef ROGUE_COLOR
		if (HAS_ROGUE_IBM_GRAPHICS)
			color = NO_COLOR;	/* no need to check iflags.use_color */
		else
#endif
		if (iflags.monstertemplate[template - 1].set & MONSTERTEMPLATE_FOREGROUND)
			color = iflags.monstertemplate[template - 1].fg;
		else
	    	mtemplate_color(offset % NUMMONS);
    } else if ((offset = (glyph - GLYPH_PEACE_OFF)) >= 0) {	/* a peaceful monster */
		if ((On_stairs(x,y) || levl[x][y].typ == STAIRS) && levl[x][y].seenv) special |= MG_STAIRS;
		if (ttmp && ttmp->ttyp == MAGIC_PORTAL && levl[x][y].seenv) special |= MG_PORTAL;

		ch = monsyms[(int)mons[offset].mlet];
#ifdef ROGUE_COLOR
		if (HAS_ROGUE_IBM_GRAPHICS)
			color = NO_COLOR;	/* no need to check iflags.use_color */
		else
#endif
	    peace_color(offset);
	    special |= MG_PEACE;
    } else if ((offset = (glyph - GLYPH_PET_OFF)) >= 0) {	/* a pet */
		if ((On_stairs(x,y) || levl[x][y].typ == STAIRS) && levl[x][y].seenv) special |= MG_STAIRS;
		if (ttmp && ttmp->ttyp == MAGIC_PORTAL && levl[x][y].seenv) special |= MG_PORTAL;

		ch = monsyms[(int)mons[offset].mlet];
#ifdef ROGUE_COLOR
		if (HAS_ROGUE_IBM_GRAPHICS)
			color = NO_COLOR;	/* no need to check iflags.use_color */
		else
#endif
	    pet_color(offset);
	    special |= MG_PET;
    } else {							/* a monster */
		if ((On_stairs(x,y) || levl[x][y].typ == STAIRS) && levl[x][y].seenv) special |= MG_STAIRS;
		if (ttmp && ttmp->ttyp == MAGIC_PORTAL && levl[x][y].seenv) special |= MG_PORTAL;

		ch = get_monsym(glyph);
#ifdef ROGUE_COLOR
		if (HAS_ROGUE_IBM_GRAPHICS && iflags.use_color) {
			if (x == u.ux && y == u.uy)
			/* actually player should be yellow-on-gray if in a corridor */
			color = CLR_YELLOW;
			else
			color = NO_COLOR;
		} else
#endif
		{
			mon_color(glyph);
			/* special case the hero for `showrace' option */
			if (iflags.use_color && x == u.ux && y == u.uy &&
				iflags.showrace && !Upolyd)
			color = HI_DOMESTIC;
		}
    }

	/* translate 'special' into 'bgcolor' */
	if (special && bgcolor == NO_COLOR) {
		if ((special & MG_PET) && iflags.hilite_pet)
			bgcolor = CLR_BLUE;
		else if ((special & MG_STAIRS) && iflags.hilite_hidden_stairs)
			bgcolor = CLR_RED;
		else if ((special & MG_PORTAL) && iflags.hilite_hidden_stairs)
			bgcolor = CLR_RED;
		else if ((special & MG_PEACE) && iflags.hilite_peaceful)
			bgcolor = CLR_BROWN;
		else if ((special & MG_DETECT) && iflags.hilite_detected)
			bgcolor = CLR_MAGENTA;
		else if (special & MG_OBJPILE && iflags.hilite_obj_piles)
			bgcolor = CLR_BLUE;
	}

    /* Turn off color if no color defined, or rogue level w/o PC graphics. */
# ifdef REINCARNATION
    if (!has_color(color) || (Is_rogue_level(&u.uz) && !HAS_ROGUE_IBM_GRAPHICS))
# else
    if (!has_color(color))
# endif
	color = NO_COLOR;

    *ochar = ch;
    *obgcolor = bgcolor;
    *ocolor = color;
    return;
}

/*mapglyph.c*/
