include/config1.h:#  define USE_OLDARGS	/* <varargs.h> is there, vprintf & vsprintf aren't */
include/macromagic.h: * > Sprintf(buf, "%d %d %d", SET03(11, 22, 33, C02(-5))
include/system.h:/* Old varieties of BSD have char *sprintf().
include/system.h: * Newer varieties of BSD have int sprintf() but allow for the old char *.
include/system.h: * Several varieties of SYSV and PC systems also have int sprintf().
include/system.h: * If your system defines sprintf, et al, in stdio.h, add to the initial
include/system.h:#define SPRINTF_PROTO
include/system.h:#define SPRINTF_PROTO
include/system.h:#define SPRINTF_PROTO
include/system.h:	/* Metrowerks already has a prototype for sprintf() */
include/system.h:# define SPRINTF_PROTO
include/system.h:#ifndef SPRINTF_PROTO
include/system.h:E  int FDECL(sprintf, (char *,const char *,...));
include/system.h:#  define OLD_SPRINTF
include/system.h:E  char *sprintf();
include/system.h:#ifdef SPRINTF_PROTO
include/system.h:# undef SPRINTF_PROTO
include/system.h:	E int FDECL(vsprintf, (char *, const char *, va_list));
include/system.h:#  define vsprintf	sprintf
include/tradstdc.h: * int VDECL(sprintf, (char *, const char *, ...));
include/global.h:#define Sprintf  (void) sprintf
include/global.h:#define Vsprintf (void) vsprintf
include/decl.h:#define Sprintf1(buf, cstr) Sprintf(buf, "%s", cstr)
src/alloc.c:	Sprintf(buf, PTR_FMT, (PTR_TYP)ptr);
src/apply.c:	Sprintf(qbuf, "Attach %s", the(xname(obj)));
src/apply.c:	Sprintf(eos(qbuf), " to %s?",
src/apply.c:		Sprintf(kbuf, "trying to tin %s without gloves",
src/apply.c:	    Sprintf(monnambuf, "%s",an(m_monnam(mtmp)));
src/apply.c:			    Sprintf(carriedby, "%s pack",
src/apply.c:    Sprintf(stonebuf, tstone->otyp == ROCK ? "beat with the stone%s":"rub on the stone%s", plur(tstone->quan));
src/apply.c:    Sprintf(stonebuf, "stone%s", plur(tstone->quan));
src/apply.c:	Sprintf(buf, "Functions");
src/apply.c:	Sprintf(buf, "Scan for creatures");
src/apply.c:	Sprintf(buf, "Scan for secret doors");
src/apply.c:	Sprintf(buf, "Scan for objects");
src/apply.c:	Sprintf(buf, "Focused probe");
src/apply.c:	Sprintf(buf, "Survey terrain");
src/apply.c:	    Sprintf(buf, "Continue your attempt to set %s?",
src/apply.c:		Sprintf(buf, "killed %sself with %s whip", uhim(), uhis());
src/apply.c:				Sprintf(kbuf, "%s corpse",
src/apply.c:		Sprintf(buf, "killed %sself with %s whip", uhim(), uhis());
src/apply.c:							Sprintf(kbuf, "%s corpse",
src/apply.c:	Sprintf(buf, "Targets");
src/apply.c:			Sprintf(buf, "%s (%s)", Monnam(mtmp), pole_dir[i]);
src/apply.c:	Sprintf(buf, "(some location)");
src/apply.c:	    Sprintf(buf, "an object on the %s", surface(cc.x, cc.y));
src/apply.c:	    Sprintf(buf, "the %s", surface(cc.x, cc.y));
src/apply.c:	Sprintf(buf, "Summon Djinni");
src/apply.c:	Sprintf(buf, "Summon Servant");
src/apply.c:	Sprintf(buf, "Summon Demon Lord");
src/apply.c:			Sprintf(buf, "%s", mons[i].mname);
src/apply.c:    Sprintf(confirm, "Are you really sure you want to break %s?",
src/apply.c:		    Sprintf(buf, "killed %sself by breaking a wand", uhim());
src/apply.c:	// Sprintf(buf, "Do what?");
src/apply.c:		Sprintf(buf, "Replace component");
src/apply.c:		Sprintf(buf, "Switch off");
src/apply.c:		Sprintf(buf, "Switch to low intensity (physical only)");
src/apply.c:		Sprintf(buf, "Switch to high intensity (physical and energy)");
src/apply.c:	Sprintf(buf, "Known Magical Staves");
src/apply.c:		Sprintf(buf, "Toustefna stave");
src/apply.c:		Sprintf(buf, "Dreprun stave");
src/apply.c:		Sprintf(buf, "Veioistafur stave");
src/apply.c:		Sprintf(buf, "Thjofastafur stave");
src/apply.c:		Sprintf(buf, "Describe a glyph instead");
src/apply.c:		Sprintf(buf, "Carve a glyph instead");
src/apply.c:	Sprintf(buf, "Carvable items");
src/apply.c:			Sprintf1(buf, doname(otmp));
src/apply.c:	Sprintf(buf, "Clockwork types");
src/apply.c:		Sprintf(buf, "clockwork soldier");
src/apply.c:		Sprintf(buf, "clockwork dwarf");
src/apply.c:		Sprintf(buf, "faberge sphere");
src/apply.c:		Sprintf(buf, "golden heart");
src/apply.c:		Sprintf(buf, "hellfire orb");
src/apply.c:	Sprintf(buf, "Upgrade types");
src/apply.c:		Sprintf(buf, "oil stove");
src/apply.c:		Sprintf(buf, "wood stove");
src/apply.c:		Sprintf(buf, "fast speed switch");
src/apply.c:		Sprintf(buf, "efficient speed switch");
src/apply.c:		Sprintf(buf, "armor plating");
src/apply.c:		Sprintf(buf, "phase engine");
src/apply.c:		Sprintf(buf, "magic furnace");
src/apply.c:		Sprintf(buf, "hellfire furnace");
src/apply.c:		Sprintf(buf, "scrap maw");
src/apply.c:		Sprintf(buf, "high-tension spring");
src/apply.c:	Sprintf(buf, "Extract what?");
src/apply.c:		Sprintf(buf, "Extract clockwise gyre");
src/apply.c:		Sprintf(buf, "Extract anti-clockwise gyre");
src/apply.c:		Sprintf(buf, "Extract memory of a sparking lake-shore");
src/apply.c:		Sprintf(buf, "Extract memory of a pure lake-shore");
src/apply.c:		Sprintf(buf, "Extract memory of embers drowning in still water");
src/apply.c:		Sprintf(buf, "Extract memory of snowflakes on a lake");
src/apply.c:		Sprintf(buf, "Extract memory of blood-mist rainbows");
src/apply.c:		Sprintf(buf, "Extract memory of clawmarks");
src/apply.c:		Sprintf(buf, "Extract the deep blue waters");
src/apply.c:		Sprintf(buf, "Extract the pitch-black waters");
src/apply.c:		Sprintf(buf, "Extract the perfectly clear sea");
src/apply.c:		Sprintf(buf, "Extract memory of the strange minister's sermon");
src/apply.c:		Sprintf(buf, "Extract the bloody tears");
src/apply.c:		Sprintf(buf, "Extract the writhing eyes");
src/apply.c:		Sprintf(buf, "Extract sound of the great voice");
src/apply.c:		Sprintf(buf, "Extract the sight of the dancing sprites");
src/apply.c:		Sprintf(buf, "Extract the red millipedes and their filth");
src/apply.c:		Sprintf(buf, "Extract memory of the face of the moon");
src/apply.c:		Sprintf(buf, "Extract subtle mucus from your brain");
src/apply.c:		Sprintf(buf, "Extract the golden pyramid");
src/apply.c:		Sprintf(buf, "Extract the bestial figure");
src/apply.c:		Sprintf(buf, "Extract the recursive eye");
src/apply.c:	Sprintf(buf, "Use kit on what?");
src/apply.c:	Sprintf(buf, "Your brain");
src/apply.c:	Sprintf(buf, "Your skulls");
src/artifact.c:	Sprintf((char *)a->name, "Randart McRandFace the %d%s", jr, jr==1?"st":jr==2?"nd":jr==3?"rd":"th");
src/artifact.c:			Sprintf(buf, "touching %s", oart->name);
src/artifact.c:	Sprintf(buf, "  %s [%s %s]", artiname(m),
src/artifact.c:			Sprintf(buf, "fiery"); // profane
src/artifact.c:			and ? Strcat(buf, " and crackling") : Sprintf(buf, "crackling");
src/artifact.c:			and ? Strcat(buf, " yet freezing") : Sprintf(buf, "freezing");
src/artifact.c:			if(pen->ovar1&SEAL_AMON) and ? Strcat(buf, " and blood-crusted") : Sprintf(buf, "blood-crusted");
src/artifact.c:			else and ? Strcat(buf, " and blood-soaked") : Sprintf(buf, "blood-soaked");
src/artifact.c:			and ? Strcat(buf, " and sizzling") : Sprintf(buf, "sizzling");
src/artifact.c:			if(pen->ovar1&SEAL_AMON) and ? Strcat(buf, " and steaming") : Sprintf(buf, "steaming");
src/artifact.c:			else and ? Strcat(buf, " and dripping") : Sprintf(buf, "dripping");
src/artifact.c:			and ? Strcat(buf, " and ruinous") : Sprintf(buf, "ruinous");
src/artifact.c:			if(pen->ovar1&SEAL_ENKI) and ? Strcat(buf, " yet thirsty") : Sprintf(buf, "thirsty");
src/artifact.c:			else and ? Strcat(buf, " and thirsty") : Sprintf(buf, "thirsty");
src/artifact.c:							Sprintf(kbuf, "stolen %s corpse", mons[otmp2->corpsenm].mname);
src/artifact.c:				Sprintf(buf, "vorpal %s", simple_typename(msgr->otyp));
src/artifact.c:									Sprintf(buf, "blasted %sself with a fireball", uhim());
src/artifact.c:							Sprintf(buf, "zapped %sself with a spiritual technique", uhim());
src/artifact.c:							Sprintf(buf, "zapped %sself with a spell", uhim());
src/artifact.c:					Sprintf(qbuf, "There %s %s here; create a skeletal minion of %s?",
src/artifact.c:	Sprintf(buf, "Known Passages");
src/artifact.c:		Sprintf(buf, "Summon byakhee");
src/artifact.c:		Sprintf(buf, "Summon Night-gaunt");
src/artifact.c:		Sprintf(buf, "Summon Shoggoth");
src/artifact.c:		Sprintf(buf, "Summon Ooze");
src/artifact.c:		Sprintf(buf, "Summon Demon");
src/artifact.c:		Sprintf(buf, "Summon Devil");
src/artifact.c:		Sprintf(buf, "Study secrets of defense");
src/artifact.c:		Sprintf(buf, "Study secrets of life and death");
src/artifact.c:		Sprintf(buf, "Study secrets of the intangible forces");
src/artifact.c:		Sprintf(buf, "Study secrets of time and decay");
src/artifact.c:		Sprintf(buf, "Study secrets of the Reaper");
src/artifact.c:		Sprintf(buf, "Study secrets of monster detection");
src/artifact.c:		Sprintf(buf, "Study secrets of clairvoyance");
src/artifact.c:		Sprintf(buf, "Study secrets of unseen things");
src/artifact.c:		Sprintf(buf, "Study secrets of knowledge without learning");
src/artifact.c:		Sprintf(buf, "Study secrets of confusion");
src/artifact.c:		Sprintf(buf, "Study secrets of fear");
src/artifact.c:		Sprintf(buf, "Study secrets of gravity");
src/artifact.c:		Sprintf(buf, "Study secrets of the earth mother");
src/artifact.c:		Sprintf(buf, "Study secrets of fraying the weave");
src/artifact.c:		Sprintf(buf, "Study secrets of war and killing");
src/artifact.c:		Sprintf(buf, "Study secrets of health and recovery");
src/artifact.c:		Sprintf(buf, "Study the legends of lost Carcosa");
src/artifact.c:		Sprintf(buf, "Study up on ancient warding signs");
src/artifact.c:		Sprintf(buf, "Study the Lords of the Elements");
src/artifact.c:		Sprintf(buf, "Study the first half of the testament of whispers");
src/artifact.c:		Sprintf(buf, "Study the second half of the testament of whispers");
src/artifact.c:	Sprintf(buf, "What will you take out?");
src/artifact.c:	Sprintf(buf, "Magic whistle");
src/artifact.c:	Sprintf(buf, "Leash");
src/artifact.c:	Sprintf(buf, "Saddle");
src/artifact.c:	Sprintf(buf, "Tripe");
src/artifact.c:	Sprintf(buf, "Apple");
src/artifact.c:	Sprintf(buf, "Banana");
src/artifact.c:	Sprintf(buf, "What do you command?");
src/artifact.c:			Sprintf(buf, "Become a greatsword");
src/artifact.c:			Sprintf(buf, "Become a moon axe");
src/artifact.c:			Sprintf(buf, "Become a khakkhara");
src/artifact.c:			Sprintf(buf, "Become a spear");
src/artifact.c:			Sprintf(buf, "Become a lance");
src/artifact.c:			Sprintf(buf, "Become a sword");
src/artifact.c:			Sprintf(buf, "Become a sickle");
src/artifact.c:			Sprintf(buf, "Become a mace");
src/artifact.c:			Sprintf(buf, "Become a spear");
src/artifact.c:			Sprintf(buf, "Become a lance");
src/artifact.c:			Sprintf(buf, "Become a sword");
src/artifact.c:			Sprintf(buf, "Become a scorpion whip");
src/artifact.c:			Sprintf(buf, "Become an atlatl");
src/artifact.c:			Sprintf(buf, "Become a flaming whip");
src/artifact.c:			Sprintf(buf, "Become a rapier");
src/artifact.c:			Sprintf(buf, "Become an axe");
src/artifact.c:			Sprintf(buf, "Become a mace");
src/artifact.c:			Sprintf(buf, "Become a spear");
src/artifact.c:			Sprintf(buf, "Become a lance");
src/artifact.c:			Sprintf(buf, "Strike");
src/artifact.c:			Sprintf(buf, "Conjure ammunition");
src/artifact.c:				Sprintf(buf, "Become a ladder");
src/artifact.c:			Sprintf(buf, "Show me my surroundings");
src/artifact.c:			Sprintf(buf, "Inspire fear");
src/artifact.c:				Sprintf(buf, "Give me your life");
src/artifact.c:			Sprintf(buf, "Kneel");
src/artifact.c:	Sprintf(buf, "Function list:");
src/artifact.c:		Sprintf(buf, "Detect Monsters");
src/artifact.c:		Sprintf(buf, "Tentacle Flow");
src/artifact.c:		Sprintf(buf, "Energy Boost");
src/artifact.c:		Sprintf(buf, "Psionic Cancellation");
src/artifact.c:			Sprintf(buf, "Elder Memories");
src/artifact.c:	Sprintf(buf, "Recharge");
src/artifact.c:	Sprintf(buf, "Function list:");
src/artifact.c:		Sprintf(buf, "Become a khakkhara");
src/artifact.c:		Sprintf(buf, "Become a lightsaber");
src/artifact.c:		Sprintf(buf, "Become a ring");
src/artifact.c:		Sprintf(buf, "Become a gun");
src/artifact.c:		Sprintf(buf, "Become a chakram");
src/artifact.c:			Sprintf(buf, "Ring Out");
src/artifact.c:			Sprintf(buf, "Create Bullets");
src/artifact.c:			Sprintf(buf, "Create Rockets");
src/artifact.c:			Sprintf(buf, "Fire Beam");
src/artifact.c:			Sprintf(buf, "Annul");
src/artifact.c:			Sprintf(buf, "Recharge");
src/artifact.c:			Sprintf(buf, "Annul");
src/artifact.c:	Sprintf(buf, "Pick your poison:");
src/artifact.c:    Sprintf(buf, "Poison");
src/artifact.c:    Sprintf(buf, "Drug");
src/artifact.c:    Sprintf(buf, "Stain");
src/artifact.c:    Sprintf(buf, "Envenom");
src/artifact.c:    Sprintf(buf, "Diseased Filth");
src/artifact.c:	Sprintf(buf, "Improve weapons or armors:");
src/artifact.c:    Sprintf(buf, "Weapons");
src/artifact.c:    Sprintf(buf, "Armors");
src/artifact.c:	Sprintf(buf, "Choose a new color for your armor:");
src/artifact.c:      Sprintf(buf, "Gray");
src/artifact.c:      Sprintf(buf, "Silver");
src/artifact.c:      Sprintf(buf, "Shimmering");
src/artifact.c:      Sprintf(buf, "Red");
src/artifact.c:      Sprintf(buf, "White");
src/artifact.c:      Sprintf(buf, "Orange");
src/artifact.c:      Sprintf(buf, "Black");
src/artifact.c:      Sprintf(buf, "Blue");
src/artifact.c:      Sprintf(buf, "Green");
src/artifact.c:      Sprintf(buf, "Yellow");
src/artifact.c:	Sprintf(buf, "What will have me sing?");
src/artifact.c:	Sprintf(buf, "Nothing in particular");
src/artifact.c:		Sprintf(buf, "Chant ominously.");
src/artifact.c:		Sprintf(buf, "Hum soothingly.");
src/artifact.c:		Sprintf(buf, "Rally my forces.");
src/artifact.c:		Sprintf(buf, "Confuse my foes.");
src/artifact.c:		Sprintf(buf, "Disrupt spellcasting.");
src/artifact.c:		Sprintf(buf, "A marching song.");
src/artifact.c:		Sprintf(buf, "A lethargic song.");
src/artifact.c:		Sprintf(buf, "An inspiring song.");
src/artifact.c:		Sprintf(buf, "A dismal dirge.");
src/artifact.c:		Sprintf(buf, "A fiery song.");
src/artifact.c:		Sprintf(buf, "A chilling song.");
src/artifact.c:		Sprintf(buf, "An electrifying song.");
src/artifact.c:		Sprintf(buf, "An earthshaking chant.");
src/artifact.c:		Sprintf(buf, "A tune of opening.");
src/artifact.c:		Sprintf(buf, "Of the passing of life.");
src/artifact.c:		Sprintf(buf, "Beat to the Cadence.");
src/artifact.c:		Sprintf(buf, "A hymn to the creator.");
src/artifact.c:		Sprintf(splname, objects[booktype].oc_name_known ?
src/astar.c:		Sprintf(pbuf, "%d\n", (int) succeeded);
src/astar.c:				Sprintf(eos(pbuf), "%d,", closed[i][j].g);
src/astar.c:			Sprintf(eos(pbuf), "\n");
src/astar.c:		Sprintf(pbuf, "\n");
src/bones.c:			Sprintf(errbuf, "This is bones level '%s', not '%s'!",
src/botl.c:	Sprintf(nb = eos(newbot2), " %s", text);
src/botl.c:	Sprintf(nb = eos(newbot1)," the ");
src/botl.c:		Sprintf(nb = eos(nb), "%s", mbot);
src/botl.c:	    Sprintf(nb = eos(nb), "%s", rank());
src/botl.c:	Sprintf(nb = eos(nb),"  ");
src/botl.c:		Sprintf(nb = eos(nb),"%*s", i-j, " ");	/* pad with spaces */
src/botl.c:		    Sprintf(nb = eos(nb),"St:%2d ",ACURR(A_STR)-100);
src/botl.c:		    Sprintf(nb = eos(nb), "St:18/%02d ",ACURR(A_STR)-18);
src/botl.c:		    Sprintf(nb = eos(nb),"St:18/** ");
src/botl.c:		Sprintf(nb = eos(nb), "St:%-1d ",ACURR(A_STR));
src/botl.c:	Sprintf(nb = eos(nb),
src/botl.c:	Sprintf(nb = eos(nb), 
src/botl.c:	    Sprintf(nb = eos(nb), " S:%ld", botl_score());
src/botl.c:		Sprintf(buf, "%s ", dungeons[u.uz.dnum].dname);
src/botl.c:		Sprintf(buf, "Home %d ", dunlev(&u.uz));
src/botl.c:		Sprintf(buf,
src/botl.c:		if(dunlev(&u.uz) == 4) Sprintf(buf, "Ravine ");
src/botl.c:		else Sprintf(buf, "Tower %d ", 5 - dunlev(&u.uz));
src/botl.c:		Sprintf(buf,"Nowhere ");
src/botl.c:		Sprintf(buf,
src/botl.c:		Sprintf(buf, "Arcadia %d ", (path1_level.dlevel - u.uz.dlevel)+1);
src/botl.c:		if(In_depths(&u.uz)) Sprintf(buf, "Depths %d ", dunlev(&u.uz)+dungeons[neutral_dnum].num_dunlevs-1);
src/botl.c:		else Sprintf(buf, "Outlands %d ", dunlev(&u.uz));
src/botl.c:		if(Is_sigil(&u.uz)) Sprintf(buf, "Sigil ");
src/botl.c:		else Sprintf(buf, "Endless Spire ");
src/botl.c:			if(dungeons[chaos_dnum].entry_lev == u.uz.dlevel) Sprintf(buf, "Ruined Temple ");
src/botl.c:			else Sprintf(buf, "Temple %d ", dunlev(&u.uz));
src/botl.c:			if(dungeons[chaos_dnum].entry_lev == u.uz.dlevel) Sprintf(buf, "Elshava ");
src/botl.c:			else Sprintf(buf, "Mithardir %d ", dunlev(&u.uz));
src/botl.c:			if(In_mordor_forest(&u.uz)) Sprintf(buf, "Forest %d ", dunlev(&u.uz));
src/botl.c:			else if(Is_ford_level(&u.uz)) Sprintf(buf, "Ford ");
src/botl.c:			else if(In_mordor_fields(&u.uz)) Sprintf(buf, "Field ");
src/botl.c:			else if(In_mordor_buildings(&u.uz)) Sprintf(buf, "Fortress %d", dunlev(&u.uz)-5);
src/botl.c:			else if(Is_spider_cave(&u.uz)) Sprintf(buf, "Spider ");
src/botl.c:			else if(In_mordor_depths(&u.uz)) Sprintf(buf, "Cracks %d", dunlev(&u.uz)-8);
src/botl.c:			else if(In_mordor_borehole(&u.uz)) Sprintf(buf, "Bore %d", dunlev(&u.uz)-11);
src/botl.c:		Sprintf(buf, "Dlvl:%-2d ", depth(&u.uz) > 0 ? depth(&u.uz) : depth(&u.uz)-1);
src/botl.c:        Sprintf(nb = eos(newbot2), "%c:%-2ld", oc_syms[COIN_CLASS],
src/botl.c:        Sprintf(nb = eos(nb), "%d(%d)", hp, hpmax);
src/botl.c:        Sprintf(nb = eos(nb), " HP:%d(%d)", hp, hpmax);
src/botl.c:        Sprintf(nb = eos(nb), "%d(%d)", u.uen, u.uenmax);
src/botl.c:        Sprintf(nb = eos(nb), " Pw:%d(%d)", u.uen, u.uenmax);
src/botl.c:        Sprintf(nb = eos(nb), " Br:%d", u.divetimer);
src/botl.c:        Sprintf(nb = eos(nb), " AC:%-2d", (u.uac + u.ustdy));
src/botl.c:        Sprintf(nb = eos(nb), " DR:%-2d", u.udr - u.ustdy);
src/botl.c:		Sprintf(nb = eos(nb), " HD:%d", mons[u.umonnum].mlevel);
src/botl.c:		Sprintf(nb = eos(nb), " Xp:%u/%-1ld", u.ulevel,u.uexp);
src/botl.c:		Sprintf(nb = eos(nb), " Exp:%u", u.ulevel);
src/botl.c:	    Sprintf(nb = eos(nb), " T:%ld", iflags.mod_turncount ? moves%10 : moves);
src/botl.c:    Sprintf(nb = eos(nb), " %ld:%2.2ld", currenttime / 3600,
src/botl.c:		  Sprintf(nb = eos(nb), " %s", ca_hu_stat[u.uhs]);
src/botl.c:		  Sprintf(nb = eos(nb), " %s", hu_stat[u.uhs]);
src/botl.c:	Sprintf(nb = eos(nb), " Sufct");
src/botl.c:  Sprintf(nb = eos(nb), " %s", enc_stat[cap]);
src/cmd.c:		Sprintf(buf, "  %c %-15s - %s.",
src/cmd.c:				Sprintf(fmtstr,"%%-%ds", biggest + 15);
src/cmd.c:			Sprintf(buf, fmtstr, prompt);
src/cmd.c:		    Sprintf(prompt, "%s [%s]", choices[i]->ef_txt,
src/cmd.c:		    Sprintf(prompt, "%s or %s", choices[i-1]->ef_txt,
src/cmd.c:		Sprintf(buf, fmtstr, prompt);
src/cmd.c:	    Sprintf(prompt, "Extended Command: %s", cbuf);
src/cmd.c:	Sprintf(buf, (string)); any.a_int = (value); atleastone = TRUE; \
src/cmd.c:	Sprintf(buf, "Abilities");
src/cmd.c:		Sprintf(buf, "Choose which %s ability to use", mon_abilities ? "monster" : "player");
src/cmd.c:	Sprintf(buf,	"Known Moves");
src/cmd.c:		Sprintf(buf,	"Dive Kick (active)");
src/cmd.c:		Sprintf(buf,	"Dive Kick (disabled)");
src/cmd.c:		Sprintf(buf,	"Aura Bolt (active)");
src/cmd.c:		Sprintf(buf,	"Aura Bolt (disabled)");
src/cmd.c:		Sprintf(buf,	"Bird Kick (active)");
src/cmd.c:		Sprintf(buf,	"Bird Kick (disabled)");
src/cmd.c:		Sprintf(buf,	"Meteor Drive (active)");
src/cmd.c:		Sprintf(buf,	"Meteor Drive (disabled)");
src/cmd.c:		Sprintf(buf,	"Pummel (active)");
src/cmd.c:		Sprintf(buf,	"Pummel (disabled)");
src/cmd.c:	Sprintf(buf,	"Known Forms");
src/cmd.c:			Sprintf(buf,	"Surge Punch (active)");
src/cmd.c:			Sprintf(buf,	"Surge Punch");
src/cmd.c:			Sprintf(buf,	"Absorptive Strike (active)");
src/cmd.c:			Sprintf(buf,	"Absorptive Strike");
src/cmd.c:			Sprintf(buf,	"Force Punch (active)");
src/cmd.c:			Sprintf(buf,	"Force Punch");
src/cmd.c:			Sprintf(buf,	"Flicker Punch (active)");
src/cmd.c:			Sprintf(buf,	"Flicker Punch");
src/cmd.c:			Sprintf(buf,	"Spirit Punch (active)");
src/cmd.c:			Sprintf(buf,	"Spirit Punch");
src/cmd.c:	Sprintf(buf,	"Known Forms");
src/cmd.c:	Sprintf(buf,	"Spells Maintained");
src/cmd.c:		Sprintf(buf,	"%s", OBJ_NAME(objects[spell]));
src/cmd.c:			Sprintf(&row[curx], "%02x", v);
src/cmd.c:	Sprintf(row, "Flags: 0x%x could see, 0x%x in sight, 0x%x temp lit",
src/cmd.c:	  Sprintf(buf, "  %c %c %c", dir_keys[1], dir_keys[2], dir_keys[3]);
src/cmd.c:	  Sprintf(buf, "  %c-.-%c", dir_keys[0], dir_keys[4]);
src/cmd.c:	  Sprintf(buf, "  %c %c %c", dir_keys[7], dir_keys[6], dir_keys[5]);
src/cmd.c:	  Sprintf(buf, "    %c  up", dir_keys[9]);
src/cmd.c:	  Sprintf(buf, "    %c  down", dir_keys[8]);
src/cmd.c:		Sprintf(buf, "%c\t%s", key, dir_desc[i]);
src/cmd.c:		Sprintf(buf, "%s\t%s", key2txt(key, buf2), misc_desc[i]);
src/cmd.c:			Sprintf(buf, "%s\t%s", key2txt(key, buf2),
src/cmd.c:	Sprintf(buf, template, src, count, size);
src/cmd.c:	Sprintf(buf, template, src, count, size);
src/cmd.c:	Sprintf(buf, template, src, count, size);
src/cmd.c:	Sprintf(buf, template, src, count, size);
src/cmd.c:	Sprintf(buf, template, src, count, size);
src/cmd.c:	Sprintf(buf, "Objects, size %d", (int) sizeof(struct obj));
src/cmd.c:	Sprintf(buf, template, "Total", total_obj_count, total_obj_size);
src/cmd.c:	Sprintf(buf, "Monsters, size %d", (int) sizeof(struct monst));
src/cmd.c:	Sprintf(buf, template, "Total", total_mon_count, total_mon_size);
src/cmd.c:		Sprintf(txt, "<space>");
src/cmd.c:		Sprintf(txt, "<esc>");
src/cmd.c:		Sprintf(txt, "<enter>");
src/cmd.c:		Sprintf(txt, "^%c", UNCTRL(c));
src/cmd.c:		Sprintf(txt, "M-%c", UNMETA(c));
src/cmd.c:		Sprintf(txt, "%c", c);		/* regular keys: ! through ~ */
src/cmd.c:		Sprintf(txt, "A-%i", c);	/* arbitrary ascii combinations */
src/cmd.c:		Sprintf(buf, "cmdassist: %s", msg);
src/cmd.c:		Sprintf(buf, "Are you trying to use ^%c%s?", sym,
src/cmd.c:		Sprintf(buf,
src/cmd.c:			Sprintf(in_line, "Count: %d", multi);
src/crown.c:		Sprintf(titlebuf, hand_of_elbereth[u.uevent.uhand_of_elbereth].title, insert);
src/crown.c:			Sprintf(buf, crowndata->announcement, ptr);
src/crown.c:		Sprintf(buf, crowndata->livelogstr, ptr);
src/crown.c:					Sprintf(buf, "Some %s", obj_descname(obj));
src/crown.c:				Sprintf(buf, "%s %s", hcolor(NH_BLACK), xname(uwep));
src/detect.c:			Sprintf(buf, "You feel like a million %s!",
src/detect.c:		Sprintf(buf, "Your %s twitches%s.", body_part(NOSE),
src/detect.c:	Sprintf(buf, "Your %s stop itching.", makeplural(body_part(TOE)));
src/dig.c:	Sprintf(msgbuf, "The hole in the %s above you closes up.",
src/dig.c:	Sprintf(qbuf, "In what direction do you want to %s? [%s]", verb, dirsyms);
src/dig.c:		Sprintf(buf, "%s own %s", uhis(),
src/display.c:		Sprintf(eos(buf), "%s%i", (first ? "" : ","), glyph2tile[gbuf[y][x].glyph]);
src/do.c:		Sprintf(buf, mesg, !Blind ? "looks" : "seems");
src/do.c:		        Sprintf(sackname, "%s %s", s_suffix(mon_nam(mcarry)),
src/do.c:		Sprintf(buf, "wiping off your %s", body_part(FACE));
src/do_name.c:    Sprintf(sbuf, "Use [%s] to move the cursor to %s.",
src/do_name.c:    Sprintf(sbuf, "Type a .%s when you are at the right place.",
src/do_name.c:	Sprintf(qbuf, "What do you want to call %s?", buf);
src/do_name.c:    Sprintf(buf, "object on map (or '.' for one %s you)",
src/do_name.c:	Sprintf(qbuf, "What do you want to name %s %s?",
src/do_name.c:	    Sprintf(qbuf,"Call a stream of %s fluid:",
src/do_name.c:	    Sprintf(qbuf, "Call %s:", an(xname(&otemp)));
src/do_name.c:		if 		(full && template == ZOMBIFIED)			Sprintf(buf2, "%s's zombie", buf);
src/do_name.c:		else if (full && template == SKELIFIED) 		Sprintf(buf2, "%s's skeleton", buf);
src/do_name.c:		else if (full && template == CRYSTALFIED)		Sprintf(buf2, "%s's vitrean", buf);
src/do_name.c:		else if (full && template == WHISPERING)		Sprintf(buf2, "%s's whispers", buf);
src/do_name.c:		else if (full && template == MINDLESS) 			Sprintf(buf2, "%s's husk", buf);
src/do_name.c:		else if (full && template == FRACTURED)			Sprintf(buf2, "%s, Witness of the Fracture", buf);
src/do_name.c:		else if (full && template == ILLUMINATED)		Sprintf(buf2, "%s the Illuminated", buf);
src/do_name.c:		else if (full && template == VAMPIRIC)			Sprintf(buf2, "%s, vampire", buf);
src/do_name.c:		else if (full && template == PSEUDONATURAL)		Sprintf(buf2, "%s the Pseudonatural", buf);
src/do_name.c:		else if (full && template == TOMB_HERD)			Sprintf(buf2, "%s of the Herd", buf);
src/do_name.c:		else if (full && template == SLIME_REMNANT)		Sprintf(buf2, "slimy remnant of %s", buf);
src/do_name.c:		else if (full && template == YELLOW_TEMPLATE)	Sprintf(buf2, "%s of Carcosa", buf);
src/do_name.c:		else if (full && template == DREAM_LEECH)		Sprintf(buf2, "%s the Dream-Leech", buf);
src/do_name.c:		else if (full && template == MAD_TEMPLATE)		Sprintf(buf2, "%s the mad", buf);
src/do_name.c:		else if (full && template == FALLEN_TEMPLATE)	Sprintf(buf2, "%s the fallen", buf);
src/do_name.c:		else if (full && template == WORLD_SHAPER)		Sprintf(buf2, "%s the Worldshaper", buf);
src/do_name.c:				if (mtmp->female) 						Sprintf(buf2, "%s, Daughter of the Black Goat", buf);
src/do_name.c:				else 									Sprintf(buf2, "%s, Child of the Black Goat", buf);
src/do_name.c:		if		(full && template == ZOMBIFIED)			Sprintf(buf2, "%s zombie", buf);
src/do_name.c:		else if (full && template == SKELIFIED)			Sprintf(buf2, "%s skeleton", buf);
src/do_name.c:		else if (full && template == CRYSTALFIED)		Sprintf(buf2, "%s vitrean", buf);
src/do_name.c:		else if (full && template == WHISPERING)		Sprintf(buf2, "%s whispers", buf);
src/do_name.c:		else if (full && template == MINDLESS)			Sprintf(buf2, "%s husk", buf);
src/do_name.c:		else if (full && template == FRACTURED)			Sprintf(buf2, "fractured %s", buf);
src/do_name.c:		else if (full && template == ILLUMINATED)		Sprintf(buf2, "illuminated %s", buf);
src/do_name.c:		else if (full && template == VAMPIRIC)			Sprintf(buf2, "%s vampire", buf);
src/do_name.c:		else if (full && template == PSEUDONATURAL)		Sprintf(buf2, "pseudonatural %s", buf);
src/do_name.c:		else if (full && template == TOMB_HERD)			Sprintf(buf2, "%s herd", buf);
src/do_name.c:		else if (full && template == SLIME_REMNANT)		Sprintf(buf2, "slimy remnant of %s", an(buf));
src/do_name.c:		else if (full && template == YELLOW_TEMPLATE)	Sprintf(buf2, "fulvous %s", buf);
src/do_name.c:														Sprintf(buf2, "dream-leech %s", buf);
src/do_name.c:			else										Sprintf(buf2, "%s dream-leech", buf);
src/do_name.c:		else if (full && template == MAD_TEMPLATE)		Sprintf(buf2, "mad %s", buf);
src/do_name.c:		else if (full && template == FALLEN_TEMPLATE)	Sprintf(buf2, "fallen %s", buf);
src/do_name.c:		else if (full && template == WORLD_SHAPER)		Sprintf(buf2, "%s worldshaper", buf);
src/do_name.c:				if (mtmp->female) 						Sprintf(buf2, "%s dark daughter", buf);
src/do_name.c:				else 									Sprintf(buf2, "%s dark child", buf);
src/do_name.c:						Sprintf(eos(buf), "%s ", getDrowHouse(otmp->oward));
src/do_name.c:			Sprintf(eos(buf), "%sed ", OBJ_DESCR(objects[mtmp->mvar_syllable]));
src/do_name.c:			Sprintf(eos(buf), "%s ghost", s_suffix(name));
src/do_name.c:			Sprintf(eos(buf), "%s shade", s_suffix(name));
src/do_name.c:			Sprintf(eos(buf), "%s broken shadow", s_suffix(name));
src/do_name.c:				Sprintf(eos(buf), "frumious ");
src/do_name.c:							Sprintf(eos(buf), "%s ", getDrowHouse(otmp->oward));
src/do_name.c:				Sprintf(eos(buf), "%sed ", OBJ_DESCR(objects[mtmp->mvar_syllable]));
src/do_name.c:			Sprintf(eos(buf), "%s", appearname);
src/do_name.c:			Sprintf(eos(buf), " called %s", name);
src/do_name.c:						Sprintf(eos(buf), "%s ", getDrowHouse(otmp->oward));
src/do_name.c:			Sprintf(eos(buf), "%sed ", OBJ_DESCR(objects[mtmp->mvar_syllable]));
src/do_name.c:	Sprintf(buf, "%s - %s",
src/do_wear.c:		Sprintf(how, " around your %s", body_part(HEAD));
src/do_wear.c:			Sprintf(qbuf, "Which %s%s, Right or Left?",
src/do_wear.c:		Sprintf(buf, "free a weapon %s", body_part(HAND));
src/do_wear.c:			Sprintf(buf, "take off your %s", c_gloves);
src/do_wear.c:			Sprintf(buf, "remove your %s", cloak_simple_name(uarmc));
src/do_wear.c:			Sprintf(buf, "remove your %s", c_suit);
src/do_wear.c:			Sprintf(buf, "release your %s",
src/dokick.c:			Sprintf(kbuf, "kicking %s without boots",
src/dokick.c:	Sprintf(obuf, "%s%s",
src/dokick.c:	    Sprintf(eos(obuf), " %s %s object%s",
src/dokick.c:		Sprintf(eos(obuf), ".");
src/dokick.c:		Sprintf(eos(obuf), " and %s %s.",
src/dungeon.c:	    Sprintf(tbuf, "Cannot open dungeon description - \"%s",
src/dungeon.c:				Sprintf(x->proto, "%s%s", urole.filecode, &lev_map->lev_name[1]);
src/dungeon.c:	    Sprintf(buf,"   %s to %s: %d",
src/dungeon.c:			Sprintf(buf, "%s: levels %d to %d", dptr->dname, dptr->depth_start,
src/dungeon.c:			Sprintf(buf, "%s: level %d", dptr->dname, dptr->depth_start);
src/dungeon.c:			Sprintf(eos(buf), ", entrance on %d",
src/dungeon.c:				Sprintf(buf, "   %s: %d", slev->proto, depth(&slev->dlevel));
src/dungeon.c:					Sprintf(eos(buf), " (tune %s)", tune);
src/dungeon.c:			Sprintf(buf, "   %s to %s",
src/dungeon.c:	Sprintf(buf, "Invocation position @ (%d,%d), hero @ (%d,%d)",
src/dungeon.c:	    Sprintf(buf, "Portal @ (%d,%d), hero @ (%d,%d)",
src/dungeon.c:	    Sprintf(buf, "No portal found.");
src/dungeon.c:	Sprintf(qbuf,"What do you want to call this dungeon level? ");
src/dungeon.c:	Sprintf(eos(buf), "%s%s " nam "%s", COMMA, seen_string((var), (nam)), \
src/dungeon.c:#define ADDTOBUF(nam, var) { if (var) Sprintf(eos(buf), "%s " nam, COMMA); }
src/dungeon.c:			Sprintf(buf, "%s:", dungeons[mptr->lev.dnum].dname);
src/dungeon.c:			Sprintf(buf, "%s: levels %d to %d", 
src/dungeon.c:		Sprintf(buf, TAB "Astral Plane:");
src/dungeon.c:		Sprintf(buf, TAB "Plane %i:", -i);
src/dungeon.c:		Sprintf(buf, TAB "Level %d:", i);
src/dungeon.c:			Sprintf(eos(buf), " [%s]", slev->proto);
src/dungeon.c:				Sprintf(eos(buf), " [Avernus]");
src/dungeon.c:				Sprintf(eos(buf), " [Dis]");
src/dungeon.c:				Sprintf(eos(buf), " [Minauros]");
src/dungeon.c:				Sprintf(eos(buf), " [Phlegethos]");
src/dungeon.c:				Sprintf(eos(buf), " [Upper Hell]");
src/dungeon.c:				Sprintf(eos(buf), " [Stygia]");
src/dungeon.c:				Sprintf(eos(buf), " [Malbolge]");
src/dungeon.c:				Sprintf(eos(buf), " [Maladomini]");
src/dungeon.c:				Sprintf(eos(buf), " [Cania]");
src/dungeon.c:				Sprintf(eos(buf), " [Lower Hell]");
src/dungeon.c:			Sprintf(eos(buf), " [Nessus]");
src/dungeon.c:				Sprintf(eos(buf), " [Slime Pits]");
src/dungeon.c:				Sprintf(eos(buf), " [Shedaklah]");
src/dungeon.c:				Sprintf(eos(buf), " [Dun Savannah]");
src/dungeon.c:				Sprintf(eos(buf), " [Lyktion]");
src/dungeon.c:				Sprintf(eos(buf), " [Bone Plateau]");
src/dungeon.c:				Sprintf(eos(buf), " [Iron Wastes]");
src/dungeon.c:				Sprintf(eos(buf), " [First Abyss]");
src/dungeon.c:				Sprintf(eos(buf), " [Shendilavri]");
src/dungeon.c:				Sprintf(eos(buf), " [Azzagrat]");
src/dungeon.c:				Sprintf(eos(buf), " [Thanatos]");
src/dungeon.c:				Sprintf(eos(buf), " [Demonweb]");
src/dungeon.c:				Sprintf(eos(buf), " [Second Abyss]");
src/dungeon.c:				Sprintf(eos(buf), " [Brine Flats]");
src/dungeon.c:				Sprintf(eos(buf), " [Shadowsea]");
src/dungeon.c:				Sprintf(eos(buf), " [Salt Flats]");
src/dungeon.c:				Sprintf(eos(buf), " [Third Abyss]");
src/dungeon.c:			if(dunlev(&u.uz) == 1) Sprintf(eos(buf)," [Gatetown]");
src/dungeon.c:			else if(dunlev(&u.uz) == 6) Sprintf(eos(buf)," [Spire]");
src/dungeon.c:			else if(dunlev(&u.uz) == 7) Sprintf(eos(buf)," [Sum of All]");
src/dungeon.c:		Sprintf(eos(buf), " (%s)", mptr->custom);
src/dungeon.c:	Sprintf(eos(buf), "%s", on_level(&u.uz, &mptr->lev) ? 
src/dungeon.c:			Sprintf(eos(buf), "%s%s", COMMA, 
src/dungeon.c:			Sprintf(eos(buf), " to %s", align_gname(u.ualign.type));
src/dungeon.c:		Sprintf(buf, PREFIX "%s to %s", br_string2(mptr->br), 
src/dungeon.c:			Sprintf(eos(buf), ", level %d", depth(&(mptr->br->end2)));
src/eat.c:	    Sprintf(bufp, "%s%s corpse",
src/eat.c:		Sprintf(killer_buf, "tasting %s %s", mons[pm].mname, bld ? "blood" : "meat");
src/eat.c:				Sprintf(buf, "unwisely ate the body of %s",
src/eat.c:						Sprintf(buf, "%s%s diseased corpse",
src/eat.c:		    Sprintf(buf, Hallucination ?
src/eat.c:			Sprintf(buf, "You feel a deep sense of kinship to the tin!  Eat it anyway?");
src/eat.c:			Sprintf(buf, "Eat it?");
src/eat.c:		    Sprintf(buf, "%s", the(corpse_xname(otmp,TRUE)));
src/eat.c:		    Sprintf(buf, "%s%s corpse",
src/eat.c:			    Sprintf(buf, "rotted %s", corpse_xname(otmp,TRUE));
src/eat.c:			    Sprintf(buf, "%s%s rotted corpse",
src/eat.c:	Sprintf(msgbuf, "%s %s", otmp->odrained ? "draining" : "eating",
src/eat.c:			Sprintf(killer_buf, "%s egg", mons[otmp->corpsenm].mname);
src/eat.c:	Sprintf(eat_it_anyway, "Eat %s anyway?",
src/eat.c:		Sprintf(buf, "%s like %s could be tainted! %s",
src/eat.c:		Sprintf(buf, "%s like %s could be something very dangerous! %s",
src/eat.c:		Sprintf(buf, "%s like %s could be rotten! %s",
src/eat.c:		Sprintf(buf, "%s strangely variable! %s",
src/eat.c:		Sprintf(buf, "%s like %s might be poisonous! %s",
src/eat.c:		Sprintf(buf, "%s unhealthy. %s",
src/eat.c:		Sprintf(buf, "%s rather acidic. %s",
src/eat.c:		Sprintf(buf, "%s disgusting to you right now. %s",
src/eat.c:		Sprintf(buf, "%s foul and unfamiliar to you. %s",
src/eat.c:		Sprintf(buf, "%s unfamiliar to you. %s",
src/eat.c:		Sprintf(buf, "%s like %s could be tainted! %s",
src/eat.c:		Sprintf(buf, "You feel a deep sense of kinship to %s!  Eat %s anyway?",
src/eat.c:					Sprintf(buf, "filth-crusted %s", xname(otmp));
src/eat.c:	Sprintf(qbuf, "How many turns? (80 turns = 1 food ration)");
src/eat.c:	Sprintf(qbuf, "That will be %ld %s. (Pay?)", price, currency(price));
src/eat.c:	Sprintf(qbuf, "How many components?");
src/eat.c:	Sprintf(qbuf, "That will be %ld %s. (Pay?)", price, currency(price));
src/eat.c:  // Sprintf(qbuf, "How many turns?");
src/eat.c:  Sprintf(msgbuf, "being wound");
src/eat.c:		Sprintf(qbuf, "There is a bear trap here (%s); eat it?",
src/eat.c:		    Sprintf(qbuf, "There is 1 gold piece here; eat it?");
src/eat.c:		    Sprintf(qbuf, "There are %ld gold pieces here; eat them?",
src/eat.c:			Sprintf(qbuf, "There %s %s here; %s %s?",
src/eat.c:			Sprintf(eos(itembuf), " [%d]", obj->corpsenm);
src/eat.c:			Sprintf(itembuf, "%d", otyp);
src/eat.c:	Sprintf(buf, "Installed Upgrades");
src/eat.c:		Sprintf(buf, "wood stove");
src/eat.c:		Sprintf(buf, "hellfire furnace");
src/eat.c:		Sprintf(buf, "magic furnace");
src/eat.c:		Sprintf(buf, "scrap maw");
src/end.c:    Sprintf(new_dump_fn, "%s", dump_format_str(dump_fn));
src/end.c:    Sprintf(new_fn, "%s", dump_format_str(EXTRAINFO_FN));
src/end.c:	    Sprintf(tmpdng, "%s", "Knx");
src/end.c:	    Sprintf(tmpdng, "%s%i", "Q", dunlev(&u.uz));
src/end.c:	    Sprintf(tmpdng, "%s", "End");
src/end.c:	    Sprintf(tmpdng, "T%i", dunlev(&u.uz));
src/end.c:	    Sprintf(tmpdng, "S%i", dunlev(&u.uz));
src/end.c:	    Sprintf(tmpdng, "M%i", dunlev(&u.uz));
src/end.c:	    Sprintf(tmpdng, "D%i", depth(&u.uz));
src/end.c:    Sprintf(new_dump_fn, "%s", dump_format_str(fname));
src/end.c:		if (M_HAS_NAME(mtmp)) Sprintf(eos(buf), " of %s", MNAME(mtmp));
src/end.c:		if (M_HAS_NAME(mtmp)) Sprintf(eos(buf), " of %s", MNAME(mtmp));
src/end.c:		if (M_HAS_NAME(mtmp)) Sprintf(eos(buf), " of %s", MNAME(mtmp));
src/end.c:		Sprintf(eos(buf), "%s %s, the shopkeeper",
src/end.c:		    Sprintf(eos(buf), " called %s", MNAME(mtmp));
src/end.c:		Sprintf(eos(buf), ", while %s", multi_txt);
src/end.c:	    Vsprintf(buf,str,VA_ARGS);
src/end.c:		Sprintf(qbuf,"Do you want to see what you had when you %s?",
src/end.c:		Sprintf(pbuf, "%s%s (worth %ld %s and %ld points)",
src/end.c:	 * pbuf: holds Sprintf'd output for raw_print and putstr
src/end.c:                Sprintf(pbuf, "%s, %s %s %s %s", plname,
src/end.c:				Sprintf(pbuf, "Playing %s", vbuf);
src/end.c:		Sprintf(pbuf, "%s, %s%s", plname,
src/end.c:	    Sprintf(pbuf, "%s %s the %s...", Goodbye(), plname,
src/end.c:			Sprintf(eos(pbuf), " and %s", mon_nam(mtmp));
src/end.c:		Sprintf(eos(pbuf), "%s with %ld point%s,",
src/end.c:			Sprintf(pbuf, "%8ld %s (worth %ld %s),",
src/end.c:			Sprintf(pbuf,
src/end.c:		Sprintf(pbuf, "You %s beyond the confines of the dungeon",
src/end.c:		Sprintf(pbuf, "You %s in %s", ends[how], where);
src/end.c:		    Sprintf(eos(pbuf), " on dungeon level %d",
src/end.c:	    Sprintf(eos(pbuf), " with %ld point%s,",
src/end.c:	    Sprintf(pbuf, "and %ld piece%s of gold, after %ld move%s.",
src/end.c:	  Sprintf(pbuf, "Killer: %s", killer);
src/end.c:	    Sprintf(pbuf,
src/end.c:		    Sprintf(buf, "Contents of %s:", the(xname(box)));
src/end.c:			Sprintf(buf, "%s%s",
src/end.c:				case 2:  Sprintf(eos(buf)," (twice)");  break;
src/end.c:				case 3:  Sprintf(eos(buf)," (thrice)");  break;
src/end.c:				default: Sprintf(eos(buf)," (%d time%s)",
src/end.c:			    Sprintf(buf, "%d %s",
src/end.c:			    Sprintf(buf + strlen(buf), " (%d created)",
src/end.c:		Sprintf(buf, "%ld creatures vanquished.", total_killed);
src/end.c:	    Sprintf(buf, "Genocided or extinct species:");
src/end.c:	    Sprintf(buf, "Genocided species:");
src/end.c:			Sprintf(buf, "%s%s",
src/end.c:	      Sprintf(buf, "%d species genocided.", ngenocided);
src/end.c:	      Sprintf(buf, "%d species extinct.", nextincted);
src/engrave.c:						if(ep->complete_wards) wardbuflen += sprintf(&wardbuf[wardbuflen],	"There %s also", sum > 1 ?	"are" :	"is");
src/engrave.c:						else wardbuflen += sprintf(&wardbuf[wardbuflen],	"There %s", sum > 1 ?	"are" :	"is");
src/engrave.c:							wardbuflen += sprintf(&wardbuf[wardbuflen]," %d scuffed%s", ep->scuffed_wards, ep->degraded_wards && ep->partial_wards ? 
src/engrave.c:							wardbuflen += sprintf(&wardbuf[wardbuflen]," %d degraded%s", ep->degraded_wards, ep->scuffed_wards && ep->partial_wards ? 
src/engrave.c:							wardbuflen += sprintf(&wardbuf[wardbuflen]," %d fragmentary", ep->partial_wards);
src/engrave.c:						wardbuflen += sprintf(&wardbuf[wardbuflen]," %s",
src/engrave.c:			   Sprintf(post_engr_text,
src/engrave.c:			   Sprintf(post_engr_text,
src/engrave.c:			   Sprintf(post_engr_text,
src/engrave.c:				   Sprintf(post_engr_text,
src/engrave.c:			   Sprintf(post_engr_text,
src/engrave.c:					   Sprintf(post_engr_text,
src/engrave.c:					} else Sprintf(post_engr_text,
src/engrave.c:				   Sprintf(post_engr_text,
src/engrave.c:		Sprintf(qbuf,"What do you want to %s the %s here?", everb, eloc);
src/engrave.c:		Sprintf(buf, "Known Wards");
src/engrave.c:			Sprintf(buf, "Heptagram");
src/engrave.c:			Sprintf(buf, "Gorgoneion");
src/engrave.c:			Sprintf(buf, "Circle of Acheron");
src/engrave.c:			Sprintf(buf, "Pentagram");
src/engrave.c:			Sprintf(buf, "Hexagram");
src/engrave.c:			Sprintf(buf, "Hamsa");
src/engrave.c:			Sprintf(buf, "Elder Sign");
src/engrave.c:			Sprintf(buf, "Elder Elemental Eye");
src/engrave.c:			Sprintf(buf, "Sign of the Scion Queen Mother");
src/engrave.c:			Sprintf(buf, "Cartouche of the Cat Lord");
src/engrave.c:			Sprintf(buf, "The Wings of Garuda");
src/engrave.c:			Sprintf(buf, "The Sigil of Cthugha");
src/engrave.c:			Sprintf(buf, "The Brand of Ithaqua");
src/engrave.c:			Sprintf(buf, "The Tracery of Karakal");
src/engrave.c:			Sprintf(buf, "The Yellow Sign");
src/engrave.c:			Sprintf(buf, "Hypergeometric transit solution");
src/engrave.c:			Sprintf(buf, "Hypergeometric stabilization solution");
src/engrave.c:			Sprintf(buf, "Describe a ward instead");
src/engrave.c:			Sprintf(buf, "Draw a ward instead");
src/engrave.c:		Sprintf(buf, "Known Seals");
src/engrave.c:					Sprintf(buf, "%s (active; timeout:%ld)",
src/engrave.c:					Sprintf(buf, "%s (active)",
src/engrave.c:					Sprintf(buf, "%s (timeout:%ld)",
src/engrave.c:					Sprintf(buf, "%s%s",
src/engrave.c:					Sprintf(buf, "%s (active; timeout:%ld)",
src/engrave.c:					Sprintf(buf, "%s (active)",
src/engrave.c:					Sprintf(buf, "%s (timeout:%ld)",
src/engrave.c:					Sprintf(buf, "%s%s",
src/engrave.c:				Sprintf(buf, "%s (active)",
src/engrave.c:				Sprintf(buf, "%s%s",
src/enlighten.c:	Sprintf(buf, "%s%s%s.", start, middle, end);
src/enlighten.c:	    Sprintf(numbuf, "%s%d",
src/enlighten.c:	Sprintf(outbuf, "%s %s %s", an(modif), bonus, inctyp);
src/enlighten.c:		Sprintf(racebuf, "%s %s", get_ent_species(u.ent_species), urace.noun);
src/enlighten.c:		Sprintf(racebuf, "%s", urace.noun);
src/enlighten.c:	Sprintf(buf, fmtstr, "name", plname);
src/enlighten.c:	Sprintf(buf, fmtstr, "race", racebuf);
src/enlighten.c:	Sprintf(buf, fmtstr, "role",
src/enlighten.c:	Sprintf(buf, fmtstr, "gender", genders[flags.initgend].adj);
src/enlighten.c:	Sprintf(buf, fmtstr, "alignment", align_str(galign(u.ugodbase[UGOD_ORIGINAL])));
src/enlighten.c:		Sprintf(racebuf, "%s %s", get_ent_species(u.ent_species), Upolyd ? youmonst.data->mname : urace.noun);
src/enlighten.c:		Sprintf(racebuf, "%s",Upolyd ? youmonst.data->mname : urace.noun);
src/enlighten.c:	Sprintf(buf, fmtstr, "race", racebuf);
src/enlighten.c:	    Sprintf(buf, fmtstr, "role (base)",
src/enlighten.c:	    Sprintf(buf, fmtstr, "role",
src/enlighten.c:	Sprintf(buf, fmtstr, "gender", genders[genidx].adj);
src/enlighten.c:	    Sprintf(buf, fmtstr, "gender (base)", genders[u.mfemale].adj);
src/enlighten.c:	Sprintf(buf, fmtstr, "alignment", align_str(u.ualign.type));
src/enlighten.c:		Sprintf(buf2, deity_fmtstr, godname(GOD_ILSENSINE), "");
src/enlighten.c:		Sprintf(buf, fmtstr, "Mundane", buf2);
src/enlighten.c:		Sprintf(buf2, deity_fmtstr, align_gname(A_CHAOTIC),
src/enlighten.c:		if(Role_if(PM_EXILE) && Is_astralevel(&u.uz)) Sprintf(buf, fmtstr, "Xaotic", buf2);
src/enlighten.c:		else Sprintf(buf, fmtstr, "Chaotic", buf2);
src/enlighten.c:		Sprintf(buf2, deity_fmtstr, align_gname(A_NEUTRAL),
src/enlighten.c:		if(Role_if(PM_EXILE) && Is_astralevel(&u.uz)) Sprintf(buf, fmtstr, "Gnostic", buf2);
src/enlighten.c:		else Sprintf(buf, fmtstr, "Neutral", buf2);
src/enlighten.c:		Sprintf(buf2, deity_fmtstr, align_gname(A_LAWFUL),
src/enlighten.c:		if(Role_if(PM_EXILE) && Is_astralevel(&u.uz)) Sprintf(buf, fmtstr, "Mundane", buf2);
src/enlighten.c:		else Sprintf(buf, fmtstr, "Lawful", buf2);
src/enlighten.c:		Sprintf(buf2, deity_fmtstr, godname(u.ugodbase[UGOD_ORIGINAL]),
src/enlighten.c:		Sprintf(buf, fmtstr, align_str_proper(galign(u.ualign.god)), buf2);
src/enlighten.c:		Sprintf(buf2, deity_fmtstr, godname(u.ualign.god),
src/enlighten.c:		Sprintf(buf, fmtstr, align_str_proper(galign(u.ualign.god)), buf2);
src/enlighten.c:		Sprintf(buf, "Describe how you feel.");
src/enlighten.c:		Sprintf(buf, "Show your armor's damage reduction.");
src/enlighten.c:		Sprintf(buf, "Perform full enlightenment.");
src/enlighten.c:		Sprintf(buf, "Describe your binding marks.");
src/enlighten.c:		Sprintf(buf, "Show your bound spirits.");
src/enlighten.c:		Sprintf(buf, "You last %s %ld turns ago", u.lastprayresult==PRAY_GIFT ? "received a gift" :
src/enlighten.c:			Sprintf(buf, "That prayer was well received");
src/enlighten.c:			Sprintf(buf, "That prayer went unanswered");
src/enlighten.c:			Sprintf(buf, "That prayer was poorly received");
src/enlighten.c:				Sprintf(buf, " since reconciled with your god");
src/enlighten.c:				Sprintf(buf, " since mollified your god");
src/enlighten.c:		Sprintf(buf, "%ld gold ", u.spawnedGold);
src/enlighten.c:		Sprintf(buf, " %d", u.ualign.record);
src/enlighten.c:		Sprintf(buf, " %d sins", u.ualign.sins);
src/enlighten.c:		Sprintf(buf, " %d", (int) ALIGNLIM);
src/enlighten.c:			Sprintf(buf, "a hod wantedness of %d", u.hod);
src/enlighten.c:			Sprintf(buf, "a gevurah wantedness of %d", u.gevurah);
src/enlighten.c:			Sprintf(buf, "a chokhmah wantedness of %d", u.keter);
src/enlighten.c:			Sprintf(buf, "%d chokhmah sephiroth ", u.chokhmah);
src/enlighten.c:			Sprintf(buf, "%d weakness from being studied", u.ustdy);
src/enlighten.c:			Sprintf(buf, "spirits bound: %d", u.sealCounts);
src/enlighten.c:			Sprintf(buf, "seals active: %lx", u.sealsActive);
src/enlighten.c:			Sprintf(buf, "special seals active: %lx", u.specialSealsActive);
src/enlighten.c:		Sprintf(prebuf, "Your soul ");
src/enlighten.c:		Sprintf(buf, " bound to ");
src/enlighten.c:			Sprintf(prebuf, "You ");
src/enlighten.c:			Sprintf(buf, " bind to %d more spirit%s", numSlots-u.sealCounts, (numSlots-u.sealCounts)>1 ? "s" : "");
src/enlighten.c:	Sprintf(buf, "a drunkard score of %d", u.udrunken);
src/enlighten.c:	if(u.udrunken >= u.ulevel*3) Sprintf(eos(buf), ", the maximum for an adventurer of your level");
src/enlighten.c:	Sprintf(buf, "%d sanity points", u.usanity);
src/enlighten.c:	Sprintf(buf, "%d insight points", u.uinsight);
src/enlighten.c:		Sprintf(buf, "%d parasite eggs", u.utaneggs);
src/enlighten.c:				Sprintf(buf, "your %s seethe below your %s", body_part(BLOOD), body_part(BODY_SKIN));
src/enlighten.c:		Sprintf(buf, " lumps under your %s.", body_part(BODY_SKIN));
src/enlighten.c:		Sprintf(buf, "slippery %s", makeplural(body_part(FINGER)));
src/enlighten.c:		Sprintf(buf, "wounded %s", makeplural(body_part(LEG)));
src/enlighten.c:			Sprintf(buf, " filled with the image of a weeping angel");
src/enlighten.c:			Sprintf(buf, " ever on your mind");
src/enlighten.c:			Sprintf(buf, " seem to shake the image of a weeping angel from your mind");
src/enlighten.c:			Sprintf(buf, " in the back of your mind");
src/enlighten.c:	Sprintf(buf, "a carrying capacity of %d remaining", -1*inv_weight());
src/enlighten.c:	Sprintf(buf, "%d points of nutrition remaining", YouHunger);
src/enlighten.c:	    Sprintf(buf, "riding %s", y_monnam(u.usteed));
src/enlighten.c:	    Sprintf(buf, "swallowed by %s", a_monnam(u.ustuck));
src/enlighten.c:	    if (wizard) Sprintf(eos(buf), " (%u)", u.uswldtim);
src/enlighten.c:	    Sprintf(buf, "%s %s",
src/enlighten.c:	    else Sprintf(buf, "polymorphed into %s", an(youmonst.data->mname));
src/enlighten.c:	    if (wizard) Sprintf(eos(buf), " (%d)", u.mtimedone);
src/enlighten.c:	    Sprintf(buf, "%s%slucky",
src/enlighten.c:	    if (wizard) Sprintf(eos(buf), " (%d)", Luck);
src/enlighten.c:	    Sprintf(buf, " %sangry with you",
src/enlighten.c:	    if (wizard) Sprintf(eos(buf), " (%d)", godlist[u.ualign.god].anger);
src/enlighten.c:	    Sprintf(buf, "%s%ssafely pray%s", can_pray(FALSE) ? "" : "not ",
src/enlighten.c:	    Sprintf(buf, "%ssafely pray", can_pray(FALSE) ? "" : "not ");
src/enlighten.c:	    if (wizard) Sprintf(eos(buf), " (%d)", u.ublesscnt);
src/enlighten.c:	    default: Sprintf(buf, "%d times", u.umortality);
src/enlighten.c:	    default: Sprintf(buf, " (%d%s time!)", u.umortality,
src/enlighten.c:		if(Blind) Sprintf(buf, "Your %s are tingling.", makeplural(body_part(HAND)));
src/enlighten.c:		else Sprintf(buf, "Your %s are glowing%s %s.", makeplural(body_part(HAND)), u.umconf > 20 ? " brilliantly" : u.umconf > 10 ? " brightly" : "", hcolor(NH_RED));
src/enlighten.c:				Sprintf(buf, "You feel your %s seethe below your %s.", body_part(BLOOD), body_part(BODY_SKIN));
src/enlighten.c:		Sprintf(buf, "There are lumps under your %s.", body_part(BODY_SKIN));
src/enlighten.c:		Sprintf(buf, "You have wounded %s", makeplural(body_part(LEG)));
src/enlighten.c:		if(ACURR(A_WIS) < 6) Sprintf(buf, "Your mind is filled with the image of a weeping angel");
src/enlighten.c:		else if(ACURR(A_WIS) < 9) Sprintf(buf, "The image of a weeping angel is ever on your mind");
src/enlighten.c:		else if(ACURR(A_WIS) < 12) Sprintf(buf, "You can't seem to shake the image of a weeping angel from your mind");
src/enlighten.c:		else Sprintf(buf, "The image of a weeping angel lurks in the back of your mind");
src/enlighten.c:		Sprintf(buf, "You feel deathly cold");
src/enlighten.c:		Sprintf(buf, "You are gradually rotting to dust");
src/enlighten.c:		Sprintf(buf, "You last %s %ld turns ago", u.lastprayresult==PRAY_GIFT ? "recieved a gift" :
src/enlighten.c:			Sprintf(buf, "That prayer was well recieved");
src/enlighten.c:			Sprintf(buf, "That prayer went unanswered");
src/enlighten.c:			Sprintf(buf, "That prayer was poorly recieved");
src/enlighten.c:			Sprintf(buf, "That prayer is in progress");
src/enlighten.c:			if(u.reconciled==REC_REC) Sprintf(buf, "You have since reconciled with your god");
src/enlighten.c:			else if(u.reconciled==REC_MOL) Sprintf(buf, "You have since mollified your god");
src/enlighten.c:		Sprintf(buf, "Your soul is bound to ");
src/enlighten.c:		Sprintf(mbuf, "You have no head; shots hit upper body");
src/enlighten.c:		Sprintf(mbuf, "Head Armor:       %d-%d", cap, dr);
src/enlighten.c:		Sprintf(mbuf, "Head Armor:       %d", dr);
src/enlighten.c:		Sprintf(mbuf, "Upper Body Armor: %d-%d", cap, dr);
src/enlighten.c:		Sprintf(mbuf, "Upper Body Armor: %d", dr);
src/enlighten.c:		Sprintf(mbuf, "Lower Body Armor: %d-%d", cap, dr);
src/enlighten.c:		Sprintf(mbuf, "Lower Body Armor: %d", dr);
src/enlighten.c:		Sprintf(mbuf, "You have no hands; shots hit upper body");
src/enlighten.c:		Sprintf(mbuf, "Hand Armor:       %d-%d", cap, dr);
src/enlighten.c:		Sprintf(mbuf, "Hand Armor:       %d", dr);
src/enlighten.c:		Sprintf(mbuf, "You have no feet; shots hit lower body");
src/enlighten.c:		Sprintf(mbuf, "Foot Armor:       %d-%d", cap, dr);
src/enlighten.c:		Sprintf(mbuf, "Foot Armor:       %d", dr);
src/enlighten.c:	Sprintf(buf, "  %-23s (timeout:%ld)", sealNames[decode_sealID(u.spirit[(id)]) - (FIRST_SEAL)], \
src/enlighten.c:	Sprintf(buf, "  %-23s", sealNames[decode_sealID(u.spirit[(id)]) - (FIRST_SEAL)]); \
src/enlighten.c:	Sprintf(buf, "  %-23s (timeout:%ld)", sealNames[decode_sealID(seal) - (FIRST_SEAL)], \
src/enlighten.c:#define addempty() do {Sprintf(buf,"  (empty)"); putstr(en_win, 0, buf);} while(0)
src/enlighten.c:			Sprintf(mbuf, "You have %d arms, and a wolf head grows from each hip.", howManyArms);
src/enlighten.c:#define PUNCTUTATION	if(count > 0){if(count == 1) Sprintf(eos(msgbuf), "%s and ", comma); else Sprintf(eos(msgbuf), "%s ", comma);}
src/enlighten.c:			Sprintf(msgbuf, "There is ");
src/enlighten.c:				Sprintf(eos(msgbuf), "a blinding glyph");
src/enlighten.c:				Sprintf(eos(msgbuf), "a cerulean glyph");
src/enlighten.c:				Sprintf(eos(msgbuf), "a verdant glyph");
src/enlighten.c:				Sprintf(eos(msgbuf), "a crimson glyph");
src/enlighten.c:			Sprintf(eos(msgbuf), " on your brow.");
src/enlighten.c:#define PUNCTUTATION	if(count > 0){if(count == 1) Sprintf(eos(msgbuf), "%s and a ", comma); else Sprintf(eos(msgbuf), "%s a ", comma);}
src/enlighten.c:				Sprintf(msgbuf, "A %sglowing %s floats above your brow.",  u.uaesh_duration > 10 ?  "brilliantly " : "", OBJ_DESCR(objects[SYLLABLE_OF_STRENGTH__AESH]));
src/enlighten.c:				Sprintf(msgbuf, "A %sglowing %s floats above your brow.",  u.ukrau_duration > 10 ?  "brilliantly " : "", OBJ_DESCR(objects[SYLLABLE_OF_POWER__KRAU]));
src/enlighten.c:				Sprintf(msgbuf, "A %sglowing %s floats above your brow.",  u.uhoon_duration > 10 ?  "brilliantly " : "", OBJ_DESCR(objects[SYLLABLE_OF_LIFE__HOON]));
src/enlighten.c:				Sprintf(msgbuf, "A %sglowing %s floats above your brow.",  u.uuur_duration > 10 ?  "brilliantly " : "", OBJ_DESCR(objects[SYLLABLE_OF_GRACE__UUR]));
src/enlighten.c:				Sprintf(msgbuf, "A %sglowing %s floats above your brow.",  u.unaen_duration > 10 ?  "brilliantly " : "", OBJ_DESCR(objects[SYLLABLE_OF_THOUGHT__NAEN]));
src/enlighten.c:				Sprintf(msgbuf, "A %sglowing %s floats above your brow.",  u.uvaul_duration > 10 ?  "brilliantly " : "", OBJ_DESCR(objects[SYLLABLE_OF_SPIRIT__VAUL]));
src/enlighten.c:			Sprintf(msgbuf, "A ");
src/enlighten.c:				Sprintf(eos(msgbuf), "%sglowing %s",  u.uaesh_duration > 10 ?  "brilliantly " : "", OBJ_DESCR(objects[SYLLABLE_OF_STRENGTH__AESH]));
src/enlighten.c:				Sprintf(eos(msgbuf), "%sglowing %s",  u.ukrau_duration > 10 ?  "brilliantly " : "", OBJ_DESCR(objects[SYLLABLE_OF_POWER__KRAU]));
src/enlighten.c:				Sprintf(eos(msgbuf), "%sglowing %s",  u.uhoon_duration > 10 ?  "brilliantly " : "", OBJ_DESCR(objects[SYLLABLE_OF_LIFE__HOON]));
src/enlighten.c:				Sprintf(eos(msgbuf), "%sglowing %s",  u.uuur_duration > 10 ?  "brilliantly " : "", OBJ_DESCR(objects[SYLLABLE_OF_GRACE__UUR]));
src/enlighten.c:				Sprintf(eos(msgbuf), "%sglowing %s",  u.unaen_duration > 10 ?  "brilliantly " : "", OBJ_DESCR(objects[SYLLABLE_OF_THOUGHT__NAEN]));
src/enlighten.c:				Sprintf(eos(msgbuf), "%sglowing %s",  u.uvaul_duration > 10 ?  "brilliantly " : "", OBJ_DESCR(objects[SYLLABLE_OF_SPIRIT__VAUL]));
src/enlighten.c:			Sprintf(eos(msgbuf), " float in a column above your brow.");
src/enlighten.c:#define PUNCTUTATION	if(count > 0){if(count == 1) Sprintf(eos(msgbuf), "%s and ", comma); else Sprintf(eos(msgbuf), "%s ", comma);}
src/enlighten.c:				Sprintf(eos(msgbuf), "a %s", OBJ_DESCR(objects[SYLLABLE_OF_STRENGTH__AESH]));
src/enlighten.c:				Sprintf(eos(msgbuf), "%d %ss", num, OBJ_DESCR(objects[SYLLABLE_OF_STRENGTH__AESH]));
src/enlighten.c:				Sprintf(eos(msgbuf), "a %s", OBJ_DESCR(objects[SYLLABLE_OF_POWER__KRAU]));
src/enlighten.c:				Sprintf(eos(msgbuf), "%d %ss", num, OBJ_DESCR(objects[SYLLABLE_OF_POWER__KRAU]));
src/enlighten.c:				Sprintf(eos(msgbuf), "a %s", OBJ_DESCR(objects[SYLLABLE_OF_LIFE__HOON]));
src/enlighten.c:				Sprintf(eos(msgbuf), "%d %ss", num, OBJ_DESCR(objects[SYLLABLE_OF_LIFE__HOON]));
src/enlighten.c:				Sprintf(eos(msgbuf), "a %s", OBJ_DESCR(objects[SYLLABLE_OF_GRACE__UUR]));
src/enlighten.c:				Sprintf(eos(msgbuf), "%d %ss", num, OBJ_DESCR(objects[SYLLABLE_OF_GRACE__UUR]));
src/enlighten.c:				Sprintf(eos(msgbuf), "a %s", OBJ_DESCR(objects[SYLLABLE_OF_THOUGHT__NAEN]));
src/enlighten.c:				Sprintf(eos(msgbuf), "%d %ss", num, OBJ_DESCR(objects[SYLLABLE_OF_THOUGHT__NAEN]));
src/enlighten.c:				Sprintf(eos(msgbuf), "a %s", OBJ_DESCR(objects[SYLLABLE_OF_SPIRIT__VAUL]));
src/enlighten.c:				Sprintf(eos(msgbuf), "%d %ss", num, OBJ_DESCR(objects[SYLLABLE_OF_SPIRIT__VAUL]));
src/enlighten.c:		// Sprintf(eos(msgbuf), " glyph%s %s around your head.", total == 1 ? "" : "s", total == 1 ? "drifts" : "drift");
src/enlighten.c:		Sprintf(eos(msgbuf), " %s around your head.", total == 1 ? "drifts" : "drift");
src/enlighten.c:			Sprintf(msgbuf, "The black liquid leaking from your eyes is soaked up by your %s.", xname(ublindf));
src/enlighten.c:			Sprintf(msgbuf, "Your star-like eyes are covered by your %s.", xname(ublindf));
src/enlighten.c:			Sprintf(mbuf, "You have %d arms, and a wolf head grows from each hip.", howManyArms);
src/enlighten.c:	    Sprintf(buf, "used a wielded weapon %ld time%s",
src/enlighten.c:	    Sprintf(buf, "read items or engraved %ld time%s",
src/enlighten.c:	    Sprintf(buf, "genocided %d type%s of monster%s",
src/enlighten.c:	    Sprintf(buf, "polymorphed %ld item%s",
src/enlighten.c:	    Sprintf(buf, "changed form %ld time%s",
src/enlighten.c:	    Sprintf(buf, "used %ld wish%s",
src/enlighten.c:	    Sprintf(buf, "paid to have %ld item%s identified",
src/enlighten.c:	    Sprintf(buf, "magically identified %ld item%s",
src/exper.c:		Sprintf(buf, "touching %s", artiname(uwep->oartifact));
src/explode.c:			    Sprintf(killer_buf, "caught %sself in %s own %s",
src/files.c:			(void)sprintf(op, "%c%02X", quotechar, *sp);
src/files.c:			(void)sprintf(op,"%c%02X", quotechar, *sp);
src/files.c:			Sprintf(panicbuf1,"Invalid %s", fqn_prefix_names[prefcnt]);
src/files.c:			Sprintf(panicbuf2,"\"%s\", (%d) %s",
src/files.c:	Sprintf(tf, ".%d", lev);
src/files.c:	    Sprintf(errbuf,
src/files.c:	    Sprintf(errbuf,
src/files.c:  if(urole.filecode != code_of(urole.malenum)) Sprintf(questcode,"%s-%s",urole.filecode, code_of(urole.malenum));
src/files.c:  else Sprintf(questcode,"%s", urole.filecode);
src/files.c:  Sprintf(whereis_file,"%s",dump_format_str(WHEREIS_FILE));
src/files.c:  Sprintf(whereis_work,
src/files.c:  Sprintf(whereis_work,"%d,%d,%d,%d,%d,0,0,%s,%s,%s,%d,%d\n",
src/files.c:  Sprintf(whereis_file,"%s",dump_format_str(WHEREIS_FILE));
src/files.c:	Sprintf(bonesid, "%c%s", dungeons[lev->dnum].boneid,
src/files.c:	    Sprintf(dptr, ".%c", sptr->boneid);
src/files.c:	    Sprintf(dptr, ".%d", lev->dlevel);
src/files.c:	Sprintf(file, "bon%s", bonesid);
src/files.c:	Sprintf(eos(file), ".%ld", (u.ubirthday % 10));
src/files.c:	Sprintf(tf, ".bn");
src/files.c:	    Sprintf(errbuf,
src/files.c:	Sprintf(SAVEF, "[.save]%d%s", getuid(), plname);
src/files.c:	Sprintf(fnamebuf, "%s-%s", get_username(0), plname);
src/files.c:	Sprintf(SAVEF, "%s.NetHack-saved-game", encodedfnamebuf);
src/files.c:	Sprintf(SAVEF, "save/%d%s", (int)getuid(), plname);
src/files.c:		    Sprintf(filename,"save/%d%s",uid,name);
src/files.c:		Sprintf(tmp_config, "%s%s", envp, "NetHack.cnf");
src/files.c:		Sprintf(tmp_config, "%s/%s", envp, configfile);
src/files.c:		Sprintf(tmp_config, "%s/%s", envp, "Library/Preferences/NetHack Defaults");
src/files.c:		Sprintf(tmp_config, "%s/%s", envp, "Library/Preferences/NetHack Defaults.txt");
src/files.c:		Sprintf(tmp_wizkit, "%s%s", envp, wizkit);
src/files.c:		Sprintf(tmp_wizkit, "%s%s", "sys$login:", wizkit);
src/files.c:		Sprintf(tmp_wizkit, "%s/%s", envp, wizkit);
src/files.c:		if(urole.filecode != code_of(urole.malenum)) Sprintf(questcode,"%s-%s",urole.filecode, code_of(urole.malenum));
src/files.c:		else Sprintf(questcode,"%s", urole.filecode);
src/hack.c:		Sprintf(buf,"a vacant spot on the %s", surface(x,y));
src/hack.c:				Sprintf(buf, "caught in %s", an(xname(t_at(u.ux, u.uy)->ammo)));
src/hack.c:	    if (u.usteed) Sprintf(buf, "beneath %s", y_monnam(u.usteed));
src/hack.c:	    else Sprintf(buf, "under your %s", makeplural(body_part(FOOT)));
src/hack.c:	    if (u.usteed) Sprintf(buf, "beneath %s", y_monnam(u.usteed));
src/hack.c:	    else Sprintf(buf, "under your %s", makeplural(body_part(FOOT)));
src/hacklib.c:    Sprintf(buf, (n < 0) ? "%d" : "+%d", n);
src/hacklib.c:	Sprintf(datestr, "%02d%02d%02d",
src/invent.c:			Sprintf(buf, "touching %s", artiname(uwep->oartifact));
src/invent.c:			Sprintf(qbuf, "What do you want to %s? [*]", word);
src/invent.c:			Sprintf(qbuf, "What do you want to %s? [%s or ?*]",
src/invent.c:	    Sprintf(qbuf,"What kinds of thing do you want to %s? [%s]",
src/invent.c:	Sprintf(buf, "What would you like to identify %s?",
src/invent.c:	Sprintf(li, "%c - %-45s %6ld %s",
src/invent.c:	Sprintf(li, "%ld gold piece%s%s", obj->quan, plur(obj->quan),
src/invent.c:	Sprintf(li, "%c - %s%s",
src/invent.c:	Sprintf(prompt, "Do what with %s?", the(cxname(obj)));
src/invent.c:		Sprintf(buf, "(%s)", obj_descname(obj));
src/invent.c:		Sprintf(buf, "(%s)", artiadjusted_objnam(simple_typename(otyp), oartifact));
src/invent.c:					Sprintf(buf, "%s-handed %s%s%s.", 
src/invent.c:					Sprintf(buf, "%s-handed %s%s%s.",
src/invent.c:				Sprintf(buf, "%sammunition.", upstart(buf2));
src/invent.c:				Sprintf(buf, "%s wand.", dir);
src/invent.c:				Sprintf(buf, "Thrown %smissile.", buf2);
src/invent.c:				Sprintf(eos(buf)-1, ", and %smelee weapon.", buf2);
src/invent.c:				Sprintf(buf, "Uses your %s skill", P_NAME(abs(weapon_type(obj))));
src/invent.c:				Sprintf(buf, "Uses the %s skill.", P_NAME(abs(oc.oc_skill)));
src/invent.c:			Sprintf(buf, "Damage: ");
src/invent.c:				Sprintf(buf2, "%dd%d", wdice[0].oc_damn, wdice[0].oc_damd);
src/invent.c:				Sprintf(buf2, "+%dd%d", wdice[0].bon_damn, wdice[0].bon_damd);
src/invent.c:				Sprintf(buf2, "%s", sitoa(wdice[0].flat));
src/invent.c:					Sprintf(buf2, "%dd%d", wdice[1].oc_damn, wdice[1].oc_damd);
src/invent.c:					Sprintf(buf2, "+%dd%d", wdice[1].bon_damn, wdice[1].bon_damd);
src/invent.c:					Sprintf(buf2, "%s", sitoa(wdice[1].flat));
src/invent.c:					Sprintf(buf, "Deals %dd%d bonus ",
src/invent.c:					Sprintf(buf, "Deals %d bonus ",
src/invent.c:				Sprintf(buf, "Deals %s ",
src/invent.c:					Sprintf(buf, "Deals double damage");
src/invent.c:						Sprintf(buf, "Deals bonus damage from the spirit bound into it.");
src/invent.c:				Sprintf(buf2, "Deals double %s damage.", buf);
src/invent.c:				Sprintf(buf2, "Deals 2d6 bonus %s damage.", buf);
src/invent.c:				Sprintf(buf2, "Deals double %s damage.", buf);
src/invent.c:				Sprintf(buf2, "Deals double poison damage plus 4d4 physical.");
src/invent.c:				Sprintf(buf2, "Drains 1d2 levels from living intelligent targets.");
src/invent.c:				Sprintf(buf2, "Deals double damage plus 2d7 to undead.");
src/invent.c:				Sprintf(buf2, "Deals double disintegration damage to spiritual beings.");
src/invent.c:				Sprintf(buf2, "Deals double-plus-enchantment %s damage.", buf);
src/invent.c:				Sprintf(buf2, "Deals 2d6 bonus %s damage.", buf);
src/invent.c:				Sprintf(buf2, "Deals 1d8 bonus %s damage.", buf);
src/invent.c:				Sprintf(buf2, "Deals 3d8 bonus %s damage.", buf);
src/invent.c:				Sprintf(buf2, "Deals 3d10 bonus %s damage.", buf);
src/invent.c:				Sprintf(buf2, "Deals 4d4 bonus %s damage.", buf);
src/invent.c:				Sprintf(buf2, "Deals 3d4 bonus %s damage.", buf);
src/invent.c:				Sprintf(buf2, "Deals 2d12 bonus %s damage.", buf);
src/invent.c:				Sprintf(buf2, "Deals double damage to %s.", buf);
src/invent.c:				Sprintf(buf2, "Deals 2d6 bonus damage to %s.", buf);
src/invent.c:				Sprintf(buf2, "Deals 1d8 bonus damage to %s.", buf);
src/invent.c:				Sprintf(buf2, "Deals bonus magic damage and extra damage to divine minions.");
src/invent.c:				Sprintf(buf2, "%s.", buf);
src/invent.c:				Sprintf(buf2, "Attacks are %s.", buf);
src/invent.c:				Sprintf(buf2, "%s.", buf);
src/invent.c:				Sprintf(buf2, "Deals 1d6 + enchantment bonus fire damage when lit.");
src/invent.c:				Sprintf(buf2, "Deals 1d4 + double enchantment bonus fire damage when lit.");
src/invent.c:				Sprintf(buf2, "Deals 1d6 + enchantment bonus cold damage when lit.");
src/invent.c:				Sprintf(buf2, "Deals 1d6 + enchantment bonus lightning and acid damage when lit.");
src/invent.c:				Sprintf(buf2, "Deals 2d6 bonus lightning damage, or 6d6 if wielded by an Ara Kamerel.");
src/invent.c:				Sprintf(buf2, "May strike with up to %d heads at once, multiplying the damage accordingly.", (int)(obj->ovar1));
src/invent.c:				Sprintf(buf2, "May use a weapon-wielding opponent's own weapon against them.");
src/invent.c:				Sprintf(buf2, "Deals an extra %d enchantment damage.", obj->spe/3);
src/invent.c:				Sprintf(buf2, "Deals 1.5 base-damage-dice bonus energy damage.");
src/invent.c:				Sprintf(buf2, "Deals double damage if wielded without an off-hand weapon, at the cost of an extra 1/4 move.");
src/invent.c:				Sprintf(buf2, "Deals an extra 1d4 vs small or 1d3 vs large and double enchantment damage if wielded without an off-hand weapon, at the cost of an extra 1/4 move.");
src/invent.c:				Sprintf(buf2, "Can be fired to shoot a 3d6 damage darkness explosion.");
src/invent.c:				Sprintf(buf2, "Is 1/6th faster to swing than other weapons.");
src/invent.c:				Sprintf(buf2, "Deals 20%% extra damage to all targets when the wielder is at full health.");
src/invent.c:				Sprintf(buf2, "Deals 20%% extra damage to all targets when the wielder is at 30%% health or lower.");
src/invent.c:					Sprintf(buf2, "Coated with %spoison.", an(buf));
src/invent.c:			Sprintf(buf, "Has a %s %s to hit.",
src/invent.c:				Sprintf(buf, "%s, worn in the %s slot.",
src/invent.c:				Sprintf(buf, "Armor, worn in the %s slot.",
src/invent.c:				Sprintf(buf, "Is worth %d AC (%d to you, due to its size) and %d DR.",
src/invent.c:				Sprintf(buf, "Is worth %d AC and %d DR.",
src/invent.c:			Sprintf(buf, "Base %d AC and %d DR.",
src/invent.c:			Sprintf(buf, "Grants magic cancellation, level %d.", oc.a_can);
src/invent.c:		Sprintf(buf, "Takes %d turn%s to put on or remove.",
src/invent.c:			Sprintf(buf, "Comestible providing %d nutrition%s.", mons[obj->corpsenm].cnutrit, (obj && obj->oeaten ? " when eaten whole" : ""));
src/invent.c:			Sprintf(buf, "Comestible providing %d nutrition%s.", oc.oc_nutrition, (obj && obj->oeaten ? " when eaten whole" : ""));
src/invent.c:			Sprintf(buf, "Takes %d turn%s to eat.", oc.oc_delay,
src/invent.c:				Sprintf(buf, "Level %d spellbook, in the %s school. %s spell.",
src/invent.c:			Sprintf(buf, "%s wand.", dir);
src/invent.c:			Sprintf(buf, "Apply to crush the gem and unleash the contained %s.", otyp == ANTIMAGIC_RIFT ? "rift" : "vortex");
src/invent.c:			Sprintf(buf, "Passively increases %s regeneration while carried.", otyp == VITAL_SOULSTONE ? "health" : "magic");
src/invent.c:			Sprintf(buf, "%s%s.", (oc.oc_charged ? "chargeable " : ""), subclass);
src/invent.c:		Sprintf(buf, "Costs %d zorkmid%s. Weighs %d aum.%s",
src/invent.c:		Sprintf(buf, "Base cost %d. Base weight %d aum.",
src/invent.c:			Sprintf(buf, "%s %s%s.", confers, effect, (while_carried ? " while carried" : ""));
src/invent.c:		Sprintf(buf2, "Is %s.", buf);
src/invent.c:		Sprintf(buf, "Made of %s.", buf2);
src/invent.c:		Sprintf(buf, "Is a %s item.", sizestrings[sz]);
src/invent.c:	Sprintf(buf, "%s tip: ", An(obj_descr[otmp->cobj->otyp].oc_name));
src/invent.c:	if(describe) Sprintf(ret_buf, "%s", buf);
src/invent.c:		    sprintf(letbuf, "  %c - ", lets[0]);
src/invent.c:			Sprintf(invheading, "Inventory: %d/%d weight (%d/52 slots)", inv_weight() + wcap, wcap, inv_cnt());
src/invent.c:	      sprintf(letbuf, "  %c - ", ilet);
src/invent.c:			      sprintf(letbuf, "  %c - ", ilet);
src/invent.c:			Sprintf(altbuf, "altar to %s (%s)", a_gname(),
src/invent.c:			Sprintf(altbuf, "%s altar", align_str(a_align(x,y)));
src/invent.c:	    Sprintf(fbuf, "Contents of %s %s",
src/invent.c:		Sprintf(fbuf, "There is %s here.", an(dfeature));
src/invent.c:		Sprintf(kbuf, "%s corpse", an(mons[otmp->corpsenm].mname));
src/invent.c:	    Sprintf(eos(invbuf), ocsymformat,
src/invent.c:		Sprintf(qbuf, "Adjust letter to what [%s]?",buf);
src/invent.c:	Sprintf(tmp,"%s %s:", s_suffix(noit_Monnam(mon)),
src/invent.c:	Sprintf(tmp,"Contents of %s:", doname(obj));
src/light.c:    Sprintf(buf, "Mobile light sources: hero @ (%2d,%2d)", u.ux, u.uy);
src/light.c:	    Sprintf(buf, "  %2d,%2d   %2d   0x%04x  %s  %s",
src/lock.c:		    Sprintf(qbuf, "There is %s here, %s %s?",
src/lock.c:		    Sprintf(qbuf,"%sock it?",
src/lock.c:		Sprintf(qbuf,"There is %s here, force its lock?",
src/mail.c:    Sprintf(qbuf, "System command (%s)", cmd);
src/mcastu.c:				Sprintf(buf, " at %s",
src/mklev.c:				Sprintf(fillname, "%s-home", urole.filecode);
src/mklev.c:				Sprintf(fillname, "%s-home", urole.filecode);
src/mklev.c:			    Sprintf(fillname, "%s-loca", urole.filecode);
src/mklev.c:			    Sprintf(fillname, "%s-fil", urole.filecode);
src/mkmaze.c:			Sprintf(protofile, "%s-%d", s, levvar);
src/mkmaze.c:				Sprintf(protofile, "%s%d-%d", dungeons[u.uz.dnum].proto,
src/mkmaze.c:			}else Sprintf(protofile, "%s%d", dungeons[u.uz.dnum].proto,
src/mkmaze.c:		    Sprintf(protofile, "%s-%d", dungeons[u.uz.dnum].proto,
src/mkmaze.c:			    Sprintf(protofile + len, "%d", pick);
src/mon.c:			Sprintf(buf, "%s engulfs %s.", Monnam(mtmp),
src/mon.c:			Sprintf(buf, "%s engulfs several objects.", Monnam(mtmp));
src/mon.c:				Sprintf(buf, "%s into %s shadow.", Tobjnam(otmp,"fall"), s_suffix(mon_nam(mtmp)));
src/mon.c:				Sprintf(buf, "Some objects fall into %s shadow.", s_suffix(mon_nam(mtmp)));
src/mon.c:		if(nonliving(mtmp->data)) Sprintf(buf,"destroyed %s",noit_nohalu_mon_nam(mtmp));
src/mon.c:		else Sprintf(buf,"killed %s",noit_nohalu_mon_nam(mtmp));
src/mon.c:					Sprintf(killer_buf, "%s explosion",
src/mon.c:	    	Sprintf(killer_buf, "%s explosion", s_suffix(mdat->mname));
src/mon.c:					Sprintf(buf, "%s croaks out a horse shriek.", Monnam(mon)); //Monnam and mon_nam share a buffer and can't be used on the same line.
src/mon.c:	    	Sprintf(killer_buf, "%s explosion", s_suffix(mdat->mname));
src/mon.c:				Sprintf(pprompt,
src/monmove.c:						Sprintf(buf,"%s can see", Monnam(mtmp));
src/music.c:	Sprintf(buf, "(songs marked with # have a bonus with this instrument)");
src/music.c:	Sprintf(buf, "    Song             Level Turns   Fail");
src/music.c:		Sprintf(buf, "It's too big!");
src/music.c:			Sprintf(buf, "%-20s %i     %i %c %3i%%", songs[a].name, 
src/music.c:	Sprintf(buf, "Play which song with the %s?", xname(instr));
src/music.c:			Sprintf(buf, "using a magical horn on %sself", uhim());
src/music.c:	Sprintf(msgbuf, "playing %s", the(xname(instr)));
src/o_init.c:		Sprintf(buf, "  %s", OBJ_NAME(objects[uniq_objs[i]]));
src/o_init.c:		Sprintf(buf, "%s %s",(objects[dis].oc_pre_discovered ? "*" : " "),
src/objnam.c:			Sprintf(eos(buf)," called %s",un);
src/objnam.c:			Sprintf(eos(buf)," (%s)",dn);
src/objnam.c:				Sprintf(eos(buf), " called %s", un);
src/objnam.c:				Sprintf(eos(buf), " (%s)", dn);
src/objnam.c:				Sprintf(eos(buf), " called %s", un);
src/objnam.c:		Sprintf(eos(buf), " of %s", actualn);
src/objnam.c:		Sprintf(eos(buf), " called %s", un);
src/objnam.c:		Sprintf(eos(buf), " (%s)", dn);
src/objnam.c:			Sprintf(buf2, oart->desc, buf);
src/objnam.c:    Sprintf(buf, "%s%s", makesingular(fruit_nam), juice ? " juice" : "");
src/objnam.c:		Sprintf(tmpbuf, "%ld ", obj->quan);
src/objnam.c:			Sprintf(tmpbuf, "%s ", s_suffix(mons[obj->corpsenm].mname));
src/objnam.c:		Sprintf(tmpbuf, "%s ", s_suffix(mons[obj->corpsenm].mname));
src/objnam.c:				Sprintf(eos(buf), "%s point ", c_obj_colors[objects[point_type].oc_color]);
src/objnam.c:				Sprintf(eos(buf), "%s glass point ", c_obj_colors[objects[point_type].oc_color]);
src/objnam.c:				Sprintf(eos(buf), "fossil dark point ");
src/objnam.c:				Sprintf(eos(buf), "%s point ",OBJ_NAME(objects[point_type]));
src/objnam.c:		if (obj->otyp == VIPERWHIP && obj->opoisonchrgs) Sprintf(eos(buf), "(%d coatings) ", (int)(obj->opoisonchrgs + 1));
src/objnam.c:				char * s = str;	/* locally re-define s to be a non-const char*, to use Sprintf */
src/objnam.c:				Sprintf(s, (adjective ? "%s gem" : "%s gemstone"), (char*)OBJ_DESCR(objects[gemtype]));
src/objnam.c:			if (obj->oartifact == ART_STAR_OF_HYPERNOTUS) Sprintf(buf2, oart->desc, (objects[obj->ovar1].oc_name_known) ? OBJ_NAME(objects[obj->ovar1]) : "stone");
src/objnam.c:			else Sprintf(buf2, oart->desc, xname(obj));
src/objnam.c:						Sprintf(eos(buf), " %s the ", obj->obj_material == BONE ? "scrimshawed with" : "bearing");
src/objnam.c:						Sprintf(eos(buf), "%s %s", obj->blessed ? "holy" : "unholy", actualn);
src/objnam.c:						Sprintf(eos(buf), "%s %s", mons[obj->corpsenm].mname, actualn);
src/objnam.c:					Sprintf(eos(buf), "%s %s %s", OBJ_BLINDNAME(*ocl), tbuf, dn);
src/objnam.c:					Sprintf(eos(buf), "%s %s", dn, bn);
src/objnam.c:				Sprintf(eos(buf), "%s called %s", bn, un);
src/objnam.c:					Sprintf(eos(buf), "%s ", mons[obj->corpsenm].mname);
src/objnam.c:					Sprintf(eos(buf), " of %s", mons[obj->corpsenm].mname);
src/objnam.c:					Sprintf(eos(buf), " of %s meat", mons[obj->corpsenm].mname);
src/objnam.c:					Sprintf(eos(buf), " of the %s", mons[obj->corpsenm].mname);
src/objnam.c:					Sprintf(eos(buf), " of %s", mons[obj->corpsenm].mname);
src/objnam.c:					Sprintf(eos(buf), " of %s", an(mons[obj->corpsenm].mname));
src/objnam.c:			if(obj->oknapped & KNAPPED_SPEAR) Sprintf(eos(buf), " spearhead");
src/objnam.c:				Sprintf(eos(buf), " (%d:%d)", (int)obj->recharged, (int)obj->ovar1);
src/objnam.c:				Sprintf(eos(buf), " (%s)", OBJ_NAME(objects[obj->otyp]));
src/objnam.c:				if (COMMAND_LIFE == obj->ovar1) Sprintf(eos(buf), " (life)");
src/objnam.c:				if (COMMAND_DEATH == obj->ovar1) Sprintf(eos(buf), " (death)");
src/objnam.c:						Sprintf(eos(buf), " (tuneless song)");
src/objnam.c:						Sprintf(eos(buf), " (ominous chanting)");
src/objnam.c:						Sprintf(eos(buf), " (soothing humming)");
src/objnam.c:						Sprintf(eos(buf), " (soft whistling)");
src/objnam.c:						Sprintf(eos(buf), " (horrid cacophony)");
src/objnam.c:						Sprintf(eos(buf), " (marching song)");
src/objnam.c:						Sprintf(eos(buf), " (lethargic song)");
src/objnam.c:						Sprintf(eos(buf), " (inspiring song)");
src/objnam.c:						Sprintf(eos(buf), " (dismal dirge)");
src/objnam.c:						Sprintf(eos(buf), " (fiery song)");
src/objnam.c:						Sprintf(eos(buf), " (chilling song)");
src/objnam.c:						Sprintf(eos(buf), " (electrifying song)");
src/objnam.c:						Sprintf(eos(buf), " (earthshaking chant)");
src/objnam.c:						Sprintf(eos(buf), " (high ringing)");
src/objnam.c:						Sprintf(eos(buf), " (vast rushing)");
src/objnam.c:						Sprintf(eos(buf), " (heartbeat cadence)");
src/objnam.c:						Sprintf(eos(buf), " (monotonous whining)");
src/objnam.c:						Sprintf(eos(buf), " (discordant notes)");
src/objnam.c:				Sprintf(eos(buf), " (%d)", obj->age);
src/objnam.c:				Sprintf(eos(buf), " (%d)", obj->age);
src/objnam.c:					// Sprintf(eos(buf), " (%d)", obj->age);
src/objnam.c:				Sprintf(eos(buf), " (%d)", obj->age);
src/objnam.c:				if (Is_dragon_mail(obj)) Sprintf(eos(buf), " (mail)");
src/objnam.c:				if (Is_dragon_scales(obj)) Sprintf(eos(buf), " (scales)");
src/objnam.c:					Sprintf(eos(buf), " (gray)");
src/objnam.c:					Sprintf(eos(buf), " (silver)");
src/objnam.c:					Sprintf(eos(buf), " (shimmering)");
src/objnam.c:					Sprintf(eos(buf), " (red)");
src/objnam.c:					Sprintf(eos(buf), " (white)");
src/objnam.c:					Sprintf(eos(buf), " (orange)");
src/objnam.c:					Sprintf(eos(buf), " (black)");
src/objnam.c:					Sprintf(eos(buf), " (blue)");
src/objnam.c:					Sprintf(eos(buf), " (green)");
src/objnam.c:					Sprintf(eos(buf), " (yellow)");
src/objnam.c:				Sprintf(eos(buf), " (%s)", obj->corpsenm != NON_PM ? mons[obj->corpsenm].mname : "blank");
src/objnam.c:					Sprintf(tmpbuf, "%d", obj->spe);
src/objnam.c:				Sprintf(eos(buf), " (%s candle%s%s)",
src/objnam.c:					if(obj->known) Sprintf(eos(buf), " (%s:%d)", obj->altmode == ENG_MODE_OFF ? "off" : obj->altmode == ENG_MODE_PYS ? "low" : obj->altmode == ENG_MODE_ENR ? "high" : "err", obj->spe);
src/objnam.c:					else Sprintf(eos(buf), " (%d)", obj->spe);
src/objnam.c:				else Sprintf(eos(buf), " (%d:%d)", (int)obj->recharged, obj->spe);
src/objnam.c:				Sprintf(eos(buf), " (empty)");
src/objnam.c:			if (obj->otyp == RIN_WISHES && obj->known) Sprintf(eos(buf), " (%d remaining)", obj->spe);
src/objnam.c:			if (obj->otyp == RIN_WISHES && !obj->known && obj->spe > 0) Sprintf(eos(buf), " with %d star%s", obj->spe, plur(obj->spe));
src/objnam.c:				Sprintf(eos(buf), " (weapon in %s)", hand_s);
src/objnam.c:				Sprintf(eos(buf), " (wielded in other %s)",
src/objnam.c:			Sprintf(eos(buf), " (unpaid, %ld %s)",
src/objnam.c:				Sprintf(eos(buf), " (%ld %s)", price, currency(price));
src/objnam.c:			Sprintf(eos(buf), " {%d}", obj->owt);
src/objnam.c:	Sprintf(onm, "the %d%s %s", m_shot.i, ordin(m_shot.i), tmpbuf);
src/objnam.c:	Sprintf(nambuf, "%s corpse", mons[otmp->corpsenm].mname);
src/objnam.c:		Sprintf(prefix, "%ld ", otmp->quan);
src/options.c:			Sprintf(buf,
src/options.c:		Sprintf(buf, "%lu.%lu.%lu", FEATURE_NOTICE_VER_MAJ,
src/options.c:			Sprintf(qbuf, "New pickup_types: [%s am] (%s)",
src/options.c:	Sprintf(buf, fmtstr_doset_add_menu, any.a_int ? "" : "    ", option, value);
src/options.c:	Sprintf(buf, fmtstr_doset_add_menu_tab, option, value);
src/options.c:			Sprintf(buf, "%s%-13s [%s]",
src/options.c:			Sprintf(buf, "%s\t[%s]",
src/options.c:		Sprintf(fmtstr_doset_add_menu, "%%s%%-%ds [%%s]", biggest_name);
src/options.c:	Sprintf(buf, "autopickup exceptions (%d currently set)",
src/options.c:		    Sprintf(buf, "%s%s", *boolopt[opt_indx].addr ? "!" : "",
src/options.c:			Sprintf(buf, "Set %s to what?", compopt[opt_indx].name);
src/options.c:			Sprintf(buf, "%s:%s", compopt[opt_indx].name, buf2);
src/options.c:			Sprintf(dbuf, "Disclosure options for %s:", disclosure_names[i]);
src/options.c:				Sprintf(buf, "%-11s (%s)",pokedexsections[i], (iflags.pokedex & (1 << i)) ? "on" : "off");
src/options.c:			Sprintf(buf, "%-33s %s", "traditional: pick level directly",
src/options.c:			Sprintf(buf, "%-33s %s", "twomenu: pick branch, then level",
src/options.c:				Sprintf(buf, "%-33s %s", " -> branches first",
src/options.c:				Sprintf(buf, "%-33s %s", " -> tight scope",
src/options.c:			Sprintf(buf, "%-43s %s", "No extra info.",
src/options.c:			Sprintf(buf, "%-43s %s", "Show combat damage dealt.",
src/options.c:			Sprintf(buf, "%-43s %s", "Show combat damage dealt breakdown.",
src/options.c:			Sprintf(buf, "%-43s %s", "Show combat accuracy.",
src/options.c:				Sprintf(buf, "%-43s %s", "Show combat debug info for you v mon.",
src/options.c:				Sprintf(buf, "%-43s %s", "Show combat debug info for mon v you.",
src/options.c:				Sprintf(buf, "%-43s %s", "Show combat debug info for mon v mon.",
src/options.c:		Sprintf(abuf, "Select %s window placement relative to the map:",
src/options.c:			Sprintf(apebuf, "\"%s\"", ape->pattern);
src/options.c:		Sprintf(apebuf, "%s autopickup exceptions",
src/options.c:		Sprintf(buf, "%s", iflags.wc_align_message == ALIGN_TOP     ? "top" :
src/options.c:		Sprintf(buf, "%s", iflags.wc_align_status == ALIGN_TOP     ? "top" :
src/options.c:		Sprintf(buf, "%s", rolestring(flags.initalign, aligns, adj));
src/options.c:		Sprintf(buf, "%s", iflags.altkeyhandler[0] ?
src/options.c:	Sprintf(buf, "%s",
src/options.c:		Sprintf(buf, "%c", iflags.bouldersym ?
src/options.c:		Sprintf(buf, "%s", catname[0] ? catname : none );
src/options.c:		Sprintf(buf, "%s", dogname[0] ? dogname : none );
src/options.c:		Sprintf(buf, "%s", dump_fn[0] ? dump_fn: none );
src/options.c:		Sprintf(buf, "%s", iflags.hp_notify_fmt ? iflags.hp_notify_fmt : "[HP%c%a=%h]" );
src/options.c:		Sprintf(buf, "%s", to_be_done);
src/options.c:		Sprintf(buf, "%s", to_be_done);
src/options.c:		Sprintf(buf, "%s", iflags.wc_font_map ? iflags.wc_font_map : defopt);
src/options.c:		Sprintf(buf, "%s", iflags.wc_font_message ? iflags.wc_font_message : defopt);
src/options.c:		Sprintf(buf, "%s", iflags.wc_font_status ? iflags.wc_font_status : defopt);
src/options.c:		Sprintf(buf, "%s", iflags.wc_font_menu ? iflags.wc_font_menu : defopt);
src/options.c:		Sprintf(buf, "%s", iflags.wc_font_text ? iflags.wc_font_text : defopt);
src/options.c:		if (iflags.wc_fontsiz_map) Sprintf(buf, "%d", iflags.wc_fontsiz_map);
src/options.c:		if (iflags.wc_fontsiz_message) Sprintf(buf, "%d",
src/options.c:		if (iflags.wc_fontsiz_status) Sprintf(buf, "%d", iflags.wc_fontsiz_status);
src/options.c:		if (iflags.wc_fontsiz_menu) Sprintf(buf, "%d", iflags.wc_fontsiz_menu);
src/options.c:		if (iflags.wc_fontsiz_text) Sprintf(buf, "%d",iflags.wc_fontsiz_text);
src/options.c:		Sprintf(buf, "%s", pl_fruit);
src/options.c:		Sprintf(buf, "%s", rolestring(flags.initgend, genders, adj));
src/options.c:		Sprintf(buf, "%s", horsename[0] ? horsename : none);
src/options.c:		Sprintf(buf, "%s",
src/options.c:		Sprintf(buf, "%s", menutype[(int)flags.menu_style] );
src/options.c:		Sprintf(buf, "%s", to_be_done);
src/options.c:		Sprintf(buf, "%s", to_be_done);
src/options.c:		Sprintf(buf, "%s", to_be_done);
src/options.c:		Sprintf(buf, "%s", to_be_done);
src/options.c:		Sprintf(buf, "%s", (iflags.menu_headings == ATR_BOLD) ?
src/options.c:		Sprintf(buf, "%s", to_be_done);
src/options.c:		Sprintf(buf, "%s", to_be_done);
src/options.c:		Sprintf(buf, "%s", to_be_done);
src/options.c:		Sprintf(buf, "%s", to_be_done);
src/options.c:		Sprintf(buf, "%s", to_be_done);
src/options.c:		Sprintf(buf, "%s", to_be_done);
src/options.c:		Sprintf(buf, "%s", to_be_done);
src/options.c:		Sprintf(buf, "%s", to_be_done);
src/options.c:		Sprintf(buf, "%u", iflags.msg_history);
src/options.c:		Sprintf(buf, "%s", (iflags.prevmsg_window=='s') ? "single" :
src/options.c:		Sprintf(buf, "%s", plname);
src/options.c:		Sprintf(buf, "%s",
src/options.c:		Sprintf(buf, "%s", to_be_done);
src/options.c:		Sprintf(buf, "%s", ocl);
src/options.c:		Sprintf(buf, "%s", get_color_string());
src/options.c:		Sprintf(buf, "%s", (preferred_pet == 'c') ? "cat" :
src/options.c:		Sprintf(buf, "%d", iflags.pokedex);
src/options.c:		Sprintf(buf, "%s", burdentype[flags.pickup_burden] );
src/options.c:		Sprintf(buf, "%s", ocl[0] ? ocl : "all" );
src/options.c:		Sprintf(buf, "%s", rolestring(flags.initrace, races, noun));
src/options.c:		Sprintf(buf, "%s", ratname[0] ? catname : none );
src/options.c:		Sprintf(buf, "%s", rolestring(flags.initrole, roles, name.m));
src/options.c:		Sprintf(buf, "%s", runmodes[iflags.runmode]);
src/options.c:		Sprintf(buf, "%s", delay_lengths[iflags.delay_length]);
src/options.c:		Sprintf(buf, "%d top/%d around%s", flags.end_top,
src/options.c:		if (iflags.wc_scroll_amount) Sprintf(buf, "%d",iflags.wc_scroll_amount);
src/options.c:		if (iflags.wc_scroll_margin) Sprintf(buf, "%d",iflags.wc_scroll_margin);
src/options.c:		   Sprintf(buf, "%s", sortname);
src/options.c:		Sprintf(buf, "%s", iflags.wc_player_selection ? "prompts" : "dialog");
src/options.c:		Sprintf(buf, "%s", to_be_done);
src/options.c:		Sprintf(buf, "%lu.%lu.%lu",
src/options.c:		if (iflags.wc2_term_cols) Sprintf(buf, "%d",iflags.wc2_term_cols);
src/options.c:		if (iflags.wc2_term_rows) Sprintf(buf, "%d",iflags.wc2_term_rows);
src/options.c:		Sprintf(buf, "%s", iflags.wc_tile_file ? iflags.wc_tile_file : defopt);
src/options.c:		if (iflags.wc_tile_height) Sprintf(buf, "%d",iflags.wc_tile_height);
src/options.c:		if (iflags.wc_tile_width) Sprintf(buf, "%d",iflags.wc_tile_width);
src/options.c:		Sprintf(buf, "%s", to_be_done);
src/options.c:		Sprintf(buf, "%d", iflags.travelplus);
src/options.c:		if (iflags.wc_vary_msgcount) Sprintf(buf, "%d",iflags.wc_vary_msgcount);
src/options.c:		Sprintf(buf, "%s", to_be_done);
src/options.c:		Sprintf(buf, "%s-%s-%s", shade[0],shade[1],shade[2]);
src/options.c:		Sprintf(buf, "%d-%d-%d-%d-%d-%d-%d-%d-%d-%d-%d-%d",
src/options.c:		Sprintf(buf, "%s", iflags.wc2_windowborders == 1     ? "1=on" :
src/options.c:		Sprintf(buf, "%s", windowprocs.name);
src/options.c:		Sprintf(buf, "%s/%s %s/%s %s/%s %s/%s",
src/options.c:		Sprintf(buf, "%d", iflags.wizlevelport);
src/options.c:		Sprintf(buf, "%d", iflags.wizcombatdebug);
src/options.c:			Sprintf(buf, "%s", fqn_prefix[i]);
src/options.c:	    Sprintf(buf, "ON, for %s objects%s", ocl[0] ? ocl : "all",
src/options.c:    Sprintf(buf, "Set options as OPTIONS=<options> in %s", configfile);
src/options.c:	Sprintf(buf2, "`%s'", compopt[i].name);
src/options.c:	Sprintf(buf, "%-20s - %s%c", buf2, compopt[i].descr,
src/options.c:			Sprintf(buf, "%s", text);
src/options.c:			Sprintf(buf, "%c  %s", *class_list, text);
src/pager.c:	    Sprintf(race, "%s ", urace.adj);
src/pager.c:	Sprintf(buf, "%s%s%s called %s",
src/pager.c:	    Sprintf(steedbuf, ", mounted on %s", y_monnam(u.usteed));
src/pager.c:		Sprintf(eos(buf), " [seen: %s%s%s%s%s]",
src/pager.c:	Sprintf(buf, "interior of %s",
src/pager.c:	    Sprintf(buf, "%s%s%s",
src/pager.c:		    Sprintf(eos(buf), ", trapped in %s",
src/pager.c:					Sprintf(wbuf, "warned of %s",
src/pager.c:					Sprintf(wbuf, "warned of magic users");
src/pager.c:					Sprintf(wbuf, "warned of item thieves");
src/pager.c:					Sprintf(wbuf, "warned of leprechauns, nymphs, and item thieves");
src/pager.c:					Sprintf(wbuf, "warned of the undead");
src/pager.c:					Sprintf(wbuf, "warned of living beings");
src/pager.c:					Sprintf(wbuf, "smell blood in the water");
src/pager.c:			if(mdat->msize == MZ_TINY) Sprintf(shapebuff, "a tiny");
src/pager.c:			else if(mdat->msize == MZ_SMALL) Sprintf(shapebuff, "a small");
src/pager.c:			else if(mdat->msize == MZ_MEDIUM) Sprintf(shapebuff, "a medium");
src/pager.c:			else if(mdat->msize == MZ_LARGE) Sprintf(shapebuff, "a large");
src/pager.c:			else if(mdat->msize == MZ_HUGE) Sprintf(shapebuff, "a huge");
src/pager.c:			else if(mdat->msize == MZ_GIGANTIC) Sprintf(shapebuff, "a gigantic");
src/pager.c:			else Sprintf(shapebuff, "an odd-sized");
src/pager.c:			Sprintf(shapebuff, "%s%s%s", an(sizeStr[rn2(SIZE(sizeStr))]), headStr[rn2(SIZE(headStr))], bodyStr[rn2(SIZE(bodyStr))]);
src/pager.c:	    Sprintf(buf, "%s altar", align_str(a_align(x, y)));
src/pager.c:	else Sprintf(buf, "aligned altar");
src/pager.c:		    Sprintf(out_str, "%c       %s", (uchar)sym, an(monexplain[i]));
src/pager.c:		Sprintf(out_str, "%c       %s", (uchar)sym, mon_interior);
src/pager.c:		    Sprintf(out_str, "%c       %s", (uchar)sym, an(objexplain[i]));
src/pager.c:		Sprintf(out_str, "%c       %s", (uchar)sym, an(invisexplain));
src/pager.c:			Sprintf(out_str, "%c       a trap", (uchar)sym);
src/pager.c:			Sprintf(out_str, "%c       sparkling water", (uchar)sym); //Lethe patch
src/pager.c:				Sprintf(out_str, "%c       cloud", (uchar)sym);
src/pager.c:			Sprintf(out_str, "%c       %s", (uchar)sym,
src/pager.c:			Sprintf(out_str, "%c       %s",
src/pager.c:		Sprintf(out_str, "%c       %s", (uchar)sym, an(x_str));
src/pager.c:		Sprintf(out_str, "%c       %s", (uchar)sym, an(firstmatch));
src/pager.c:			Sprintf(temp_buf, " (%s)", rndobjnam());
src/pager.c:				Sprintf(temp_buf, " (%s", firstmatch);
src/pager.c:				Sprintf(temp_buf, ", %s)", shapebuf);
src/pager.c:				Sprintf(temp_buf, " (%s)", firstmatch);
src/pager.c:		    Sprintf(temp_buf, " [seen: %s]", monbuf);
src/pager.c:		sprintf(frequency, ", with frequency %ld.", (ptr->geno & G_FREQ));
src/pager.c:	sprintf(temp_buf, "Weight = %d. Nutrition = %d.", ptr->cwt, ptr->cnutrit);
src/pager.c:		sprintf(description, "Extremely fast (%d). ", speed);
src/pager.c:		sprintf(description, "Very fast (%d). ", speed);
src/pager.c:		sprintf(description, "Fast (%d). ", speed);
src/pager.c:		sprintf(description, "Normal speed (%d). ", speed);
src/pager.c:		sprintf(description, "Slow (%d). ", speed);
src/pager.c:		sprintf(description, "Very slow (%d). ", speed);
src/pager.c:		sprintf(description, "Almost immobile (%d). ", speed);
src/pager.c:		sprintf(description, "Immobile (%d). ", speed);
src/pager.c:	if (stationary_mon(mtmp)) sprintf(description, "Can't move around. Speed %d. ", speed);
src/pager.c:		sprintf(main_temp_buf, "%dd%d", mattk->damn, mattk->damd);
src/pager.c:	sprintf(temp_buf, "%s%s - %s%s", mattk->offhand ? "offhand " : "", get_description_of_attack_type(mattk->aatyp), get_description_of_damage_prefix(mattk->aatyp, mattk->adtyp), get_description_of_damage_type(mattk->adtyp));
src/pager.c:		sprintf(temp_buf, "Accessing Pokedex entry for %s... ", (!Upolyd || (monsternumber < NUMMONS)) ? name : "this weird creature");
src/pager.c:			sprintf(temp_buf, "Base level = %d. Difficulty = %d. AC = %d. DR = %d. MR = %d. Alignment %d. ",
src/pager.c:		Sprintf(helpbuf, help_menu_items[i], PORT_ID);
src/pickup.c:		Sprintf(qbuf,"What kinds of thing do you want to %s? [%s]",
src/pickup.c:		Sprintf(buf, "Pick %d of what?", count);
src/pickup.c:		    Sprintf(qbuf, "Pick up %s?",
src/pickup.c:	    Sprintf(where, "in %s", the(xname(container)));
src/pickup.c:		Sprintf(eos(qbuf), " %s. Continue?",
src/pickup.c:					Sprintf(qbuf, "There is %s here, loot it?",
src/pickup.c:					Sprintf(qbuf, "There is %s here, open it?",an(xname(cobj)));
src/pickup.c:					Sprintf(qbuf, "There is %s here, open it?",an(xname(cobj)));
src/pickup.c:					Sprintf(qbuf, "There is %s here, open it?",an(xname(cobj)));
src/pickup.c:	Sprintf(buf, "Spearheads");
src/pickup.c:			Sprintf1(buf, doname(otmp));
src/pickup.c:	Sprintf(buf, "Crystals");
src/pickup.c:			Sprintf1(buf, doname(otmp));
src/pickup.c:	Sprintf(buf, "Gems");
src/pickup.c:			Sprintf1(buf, doname(otmp));
src/pickup.c:	Sprintf(buf, "Bullets");
src/pickup.c:			Sprintf1(buf, doname(otmp));
src/pickup.c:	Sprintf(buf, "Equipment");
src/pickup.c:		Sprintf1(buf, doname(otmp));
src/pickup.c:#define addArmorMenuOption	Sprintf1(buf, doname(otmp));\
src/pickup.c:	Sprintf(buf, "Equipment");
src/pickup.c:		Sprintf(qbuf,"Remove %s from %s?", the(xname(obj->cobj)), xname(obj));
src/pickup.c:	    Sprintf(emptymsg, "%s is %sempty.", Yname2(obj),
src/pickup.c:	    Sprintf(eos(qbuf), "%s?",
src/pickup.c:		    if (!cnt) Sprintf(menuprompt, "%s ", emptymsg);
src/pickup.c:	    Sprintf(qbuf, "Do you wish to put %s in?", something);
src/pickup.c:	Sprintf(buf,"%s what type of objects?", put_in ? putin : takeout);
src/pickup.c:	Sprintf(buf,"%s what?", put_in ? putin : takeout);
src/pickup.c:	Sprintf(buf,"Take %s out of %s", something, the(xname(obj)));
src/pickup.c:	Sprintf(buf,"Put %s into %s", something, the(xname(obj)));
src/pickup.c:		Sprintf(buf, "You can't tip %s while carrying so much.",
src/pickup.c:					Sprintf(qbuf, "You see here %s, tip it?", safe_qbuf(qbuf, sizeof("You see here , tip it?"), doname(cobj), xname(cobj), "container"));
src/pickup.c:			Sprintf(buf, " and gradually %s", vtense(spillage, "dissipate"));
src/pickup.c:			Sprintf(buf, " and immediately %s away",
src/pline.c:	    Vsprintf(pbuf,line,VA_ARGS);
src/pline.c:	    Vsprintf(pbuf,line,VA_ARGS);
src/pline.c:	Vsprintf(pbuf,s,VA_ARGS);
src/pline.c:		Sprintf(mbuf, "No head; shots hit upper body");
src/pline.c:		Sprintf(mbuf, "Head Armor:       %d", base);
src/pline.c:	Sprintf(mbuf, "Upper Body Armor: %d", base);
src/pline.c:	Sprintf(mbuf, "Lower Body Armor: %d", base);
src/pline.c:		Sprintf(mbuf, "No hands; shots hit upper body");
src/pline.c:		Sprintf(mbuf, "Hand Armor:       %d", base);
src/pline.c:		Sprintf(mbuf, "No feet; shots hit lower body");
src/pline.c:		Sprintf(mbuf, "Foot Armor:       %d", base);
src/pline.c:		Sprintf(eos(info), " (%d", mtmp->mtame);
src/pline.c:		    Sprintf(eos(info), "; hungry %ld; apport %d",
src/pline.c:	if (mtmp->mstdy > 0)	  Sprintf(eos(info), ", weakened (%d)", mtmp->mstdy);
src/pline.c:	if (mtmp->encouraged != 0)	  Sprintf(eos(info), ", morale (%d)", mtmp->encouraged);
src/pline.c:	else if (mtmp->mstdy < 0)	  Sprintf(eos(info), ", protected (%d)", mtmp->mstdy);
src/pline.c:	if (u.ustdy > 0)	  Sprintf(eos(info), ", weakened (%d)", u.ustdy);
src/pline.c:	if (u.uencouraged > 0)	  Sprintf(eos(info), ", morale (%d)", u.uencouraged);
src/pline.c:				Sprintf(eos(info), ", injured %s", what);
src/pline.c:	if (Glib)		Sprintf(eos(info), ", slippery %s",
src/polyself.c:	    	Sprintf(buf, "riding %s", an(u.usteed->data->mname));
src/polyself.c:			Sprintf(hornbuf, "horn%s", plur(num_horns(youracedata)));
src/polyself.c:	    Sprintf(kbuf, "reverting to unhealthy %s form", urace.adj);
src/polyself.c:			Sprintf(qbuf, "There %s %s here; feed blood to %s?",
src/polyself.c:			Sprintf(qbuf, "Really %s %s?",
src/polyself.c:		Sprintf(buf, "Words of Power");
src/polyself.c:			Sprintf(buf, "speak the First Word");
src/polyself.c:			Sprintf(buf, "speak the Dividing Word");
src/polyself.c:			Sprintf(buf, "speak the Nurturing Word");
src/polyself.c:			Sprintf(buf, "speak the Word of Knowledge");
src/polyself.c:			Sprintf(buf, "Describe a word instead");
src/polyself.c:			Sprintf(buf, "Speak a word instead");
src/polyself.c:	Sprintf(buf, "To what speed will you set your clock?");
src/polyself.c:		Sprintf(buf, "High speed (efficient switch)");
src/polyself.c:		Sprintf(buf, "High speed");
src/polyself.c:	Sprintf(buf, "Normal speed");
src/polyself.c:	Sprintf(buf, "Low speed");
src/polyself.c:		Sprintf(buf, "Activate phase engine");
src/polyself.c:		Sprintf(buf, "Switch off phase engine");
src/polyself.c:	Sprintf(buf, "Use what ability?");
src/polyself.c:		Sprintf(buf, "Sleep and regenerate");
src/polyself.c:		Sprintf(buf, "Last rest began on turn %ld", u.lastslept);
src/polyself.c:		Sprintf(buf, "Emergency speed (active)");
src/polyself.c:		Sprintf(buf, "Emergency speed");
src/polyself.c:		Sprintf(buf, "Recharger");
src/polyself.c:		Sprintf(buf, "Combo");
src/polyself.c:		Sprintf(buf, "Phase engine (active)");
src/polyself.c:		Sprintf(buf, "Phase engine");
src/potion.c:		Sprintf(buf,"at your %s", makeplural(body_part(FOOT)));
src/potion.c:		Sprintf(buf2,"Drink the water %s?", 
src/potion.c:			Sprintf(buf, "You feel a deep sense of kinship to %s!  Drink %s anyway?",
src/potion.c:			Sprintf(buf, "%s %s",
src/potion.c:			Sprintf(killer_buf, "%s blood", mons[mtyp].mname);
src/potion.c:		Sprintf(qbuf, "Dip %s into the fountain?", the(xname(obj)));
src/potion.c:		Sprintf(qbuf, "Dip %s into the %s?", the(xname(obj)), tmp);
src/potion.c:		Sprintf(qbuf, "Dip it into the %s?", tmp);
src/potion.c:	Sprintf(qbuf, "dip %s into", the(xname(obj)));
src/potion.c:				Sprintf(buf, "One of %s", the(xname(potion)));
src/potion.c:				Sprintf(buf, "One of %s", the(xname(potion)));
src/potion.c:				Sprintf(buf, "One of %s", the(xname(potion)));
src/potion.c:				Sprintf(buf, "One of %s", the(xname(potion)));
src/potion.c:				Sprintf(buf, "One of %s", the(xname(potion)));
src/potion.c:				Sprintf(buf, "One of %s", the(xname(potion)));
src/potion.c:				Sprintf(buf, "One of %s", the(xname(potion)));
src/potion.c:				Sprintf(buf, "One of %s", the(xname(potion)));
src/potion.c:				Sprintf(buf, "One of %s", the(xname(potion)));
src/potion.c:				Sprintf(buf, "One of %s", the(xname(potion)));
src/potion.c:				Sprintf(buf, "One of %s", the(xname(potion)));
src/potion.c:				Sprintf(buf, "One of %s", the(xname(potion)));
src/potion.c:				Sprintf(buf, "One of %s", the(xname(potion)));
src/potion.c:		    Sprintf(oldbuf, "%s ",
src/potion.c:			Sprintf(newbuf, "clears");
src/potion.c:			Sprintf(newbuf, "turns %s",
src/potion.c:	if (mtmp) Sprintf(reason, " from %s heat",
src/pray.c:			Sprintf(buf, "Destroy %s, my servants!", uhim());
src/pray.c:	Sprintf(killerbuf, "the wrath of %s", godname(godnum));
src/pray.c:			Sprintf(buf,"Thou %s, %s. Thou must relearn thy lessons!",
src/pray.c:			Sprintf(buf,"Thou durst %s me? Then die, %s!",
src/pray.c:				Sprintf(repair_buf, " and %s now as good as new",
src/pray.c:				Sprintf(buf, "Hark, %s! To enter the castle, thou must play the right tune!", youracedata->mlet == S_HUMAN ? "mortal" : "creature");
src/pray.c:			Sprintf(buf, msg, "Telepathy");
src/pray.c:			Sprintf(buf, msg, "Speed");
src/pray.c:			Sprintf(buf, msg, "Stealth");
src/pray.c:				Sprintf(buf, msg, "the Hamsa ward");
src/pray.c:				Sprintf(buf, msg, "the Hexagram ward");
src/pray.c:			Sprintf(buf, msg, "my protection");
src/pray.c:					Sprintf(buf, "You feel a deep sense of kinship to %s!  Sacrifice %s anyway?",
src/pray.c:					Sprintf(llog, "was given %s", the(artilist[uwep->oartifact].name));
src/pray.c:				Sprintf(llog, "was given %s", the(artilist[otmp->oartifact].name));
src/pray.c:	Sprintf(buf, "Ask for what?");
src/pray.c:	Sprintf(buf, "her Healing");
src/pray.c:	Sprintf(buf, "her Vitality");
src/pray.c:	Sprintf(buf, "her Blessing");
src/pray.c:	Sprintf(buf, "her Fortune");
src/pray.c:	Sprintf(buf, "her Intervention");
src/pray.c:		Sprintf(buf, "her Bite");
src/pray.c:		Sprintf(buf, "her Hunger");
src/pray.c:			Sprintf(buf, "her Knowledge");
src/pray.c:	Sprintf(buf, "What will you do?");
src/pray.c:	Sprintf(buf, "Smelt away impurity");
src/pray.c:	Sprintf(buf, "Smelt away imperfection");
src/pray.c:	Sprintf(buf, "Smelt away immobility");
src/pray.c:	Sprintf(buf, "Spread the reflected silver flame");
src/pray.c:	Sprintf(buf, "Burn aura");
src/pray.c:		Sprintf(buf, "Mirror-finish a surface");
src/pray.c:		Sprintf(buf, "Burn on a curse-proof glaze");
src/pray.c:		Sprintf(buf, "Focus the light to reveal mortality");
src/pray.c:		Sprintf(buf, "Focus the light to reveal true death");
src/pray.c:		Sprintf(buf, "Focus the light to reveal the unworthy");
src/priest.c:				Sprintf(buf, "Pilgrim, you enter a %s place!",
src/projectile.c:		Sprintf(buf, "flies upwards");
src/projectile.c:			Sprintf(buf, "hits the %s", ceiling(u.ux, u.uy));
src/projectile.c:			Sprintf(buf, "almost hits the %s", ceiling(u.ux, u.uy));
src/projectile.c:		Sprintf(killer_buf, "%s corpse", an(mons[ammo->corpsenm].mname));
src/projectile.c:		if (n>1)	Sprintf(buf, " %d times", n);
src/projectile.c:			Sprintf(onmbuf, "%d %s", multishot, xname(ammo));
src/questpgr.c:	Sprintf(nambuf, "%s%s",
src/questpgr.c:	Sprintf(nambuf, "%s%s",
src/read.c:			Sprintf(buf2, "or %s ", ptr);
src/read.c:				Sprintf(tempBuff, "Your %s itch.", body_part(BONES));
src/read.c:				Sprintf(tempBuff, "Your %s itches.", body_part(BODY_SKIN));
src/read.c:	Sprintf(splname, objects[spellnum].oc_name_known ? "\"%s\"" : "the \"%s\" spell", OBJ_NAME(objects[spellnum]));
src/read.c:		Sprintf(splname, objects[booktype].oc_name_known ? "\"%s\"" : "the \"%s\" spell", OBJ_NAME(objects[booktype]));
src/recover.c:	(void) sprintf(tf, ".%d", lev);
src/recover.c:		sprintf(savefile, "%s/%s", directory, savename);
src/recover.c:	(void) sprintf(iconfile, "%s.info", savename);
src/recover.c:	vsprintf(buf, str, ap);
src/restore.c:		Sprintf(trickbuf, "PID (%d) doesn't match saved PID (%d)!",
src/restore.c:		Sprintf(trickbuf, "This is level %d, not %d!", dlvl, lev);
src/rip.c:	Sprintf(buf, "%s", plname);
src/rip.c:	Sprintf(buf, "%ld Au", u.ugold);
src/rip.c:	Sprintf(buf, "%ld Au", done_money);
src/rip.c:	Sprintf(buf, "%4d", getyear());
src/role.c:	Sprintf(buf, "%s", s_suffix(tmpbuf));
src/rumors.c:			Sprintf(rumor_buf, "Error reading \"%.80s\".",
src/rumors.c:	Sprintf(buf, "A minor consultation");
src/rumors.c:	Sprintf(buf, "A major consultation");
src/rumors.c:	Sprintf(buf, "After enlightenment");
src/rumors.c:	Sprintf(buf, "Glimpses of things to come");
src/rumors.c:				Sprintf(buf, "Sightings of the eladrin nobility");
src/rumors.c:				Sprintf(buf, "Talk of the castle in the air");
src/rumors.c:				Sprintf(buf, "The location of the primordial ones");
src/rumors.c:				Sprintf(buf, "Knowledge of those who came before");
src/rumors.c:				Sprintf(buf, "Impressions of the Queen of the Fae");
src/save.c:		    Sprintf(whynot,
src/save.c:	Sprintf(from, "%s%s", permbones, alllevels);
src/save.c:	Sprintf(to, "%s%s", levels, alllevels);
src/save.c:	Sprintf(from, "%s%s", levels, alllevels);
src/save.c:	Sprintf(to, "%s%s", permbones, alllevels);
src/seduce.c:		Sprintf(qbuf,"\"Shall I remove your %s, %s?\"",
src/seduce.c:		Sprintf(hairbuf, "let me run my fingers through your %s",
src/seduce.c:		Sprintf(qbuf,"She tries to take off your %s, allow her?",
src/seduce.c:		Sprintf(qbuf,"She tries to rip open your %s!",
src/seduce.c:	Sprintf(qbuf,"She removes your %s!",
src/seduce.c:				Sprintf(buf, "\"That %%s looks pretty.  %s\"",
src/seduce.c:				Sprintf(qbuf, buf,
src/seduce.c:				Sprintf(qbuf, "\"That %s looks pretty.  Would you wear it for me?\"",
src/shk.c:		Sprintf(sbuf, "You owe %s %ld %s ",
src/shk.c:	    Sprintf(qbuf,"%s for %ld %s.  Pay?", quan == 1L ?
src/shk.c:	    Sprintf(fmtbuf, "%%s; you %s", fmt);
src/shk.c:		    Sprintf(qbuf,
src/shk.c:		    Sprintf(qbuf,
src/shk.c:	Sprintf(qbuf,"\"Cad!  You did %ld %s worth of damage!\"  Pay? ",
src/shk.c:	    Sprintf(price, "%ld %s%s", cost, currency(cost),
src/shk.c:	Sprintf(buf, "%s, %s", doname(otmp), price);
src/shk.c:	Sprintf(buf, "Damage: ");
src/shk.c:		Sprintf(buf2, "%dd%d", wdice[0].oc_damn, wdice[0].oc_damd);
src/shk.c:		Sprintf(buf2, "+%dd%d", wdice[0].bon_damn, wdice[0].bon_damd);
src/shk.c:		Sprintf(buf2, "%s", sitoa(wdice[0].flat));
src/shk.c:			Sprintf(buf2, "%dd%d", wdice[1].oc_damn, wdice[1].oc_damd);
src/shk.c:			Sprintf(buf2, "+%dd%d", wdice[1].bon_damn, wdice[1].bon_damd);
src/shk.c:			Sprintf(buf2, "%s", sitoa(wdice[1].flat));
src/shk.c:        Sprintf(sbuf, "It'll cost you %ld zorkmid%s.  Interested?",
src/shknam.c:	    Sprintf(buf, "Closed for inventory");
src/sit.c:	Sprintf(buf, "What do you command?");
src/sit.c:		Sprintf(buf, "Order a genocide");
src/sit.c:		Sprintf(buf, "Use your insight");
src/sit.c:		Sprintf(buf, "Grant an audience");
src/sit.c:		Sprintf(buf, "Demand tribute");
src/sounds.c:        Sprintf(sbuf, "It'll cost you %ld zorkmid%s.  Interested?",
src/sounds.c:				Sprintf(verbuf, "Good %s to you Master%s",
src/sounds.c:		    	    Sprintf(verbuf,"%s%s",
src/sounds.c:				Sprintf(verbuf, "Good feeding %s!",
src/sounds.c:				Sprintf(verbuf,
src/sounds.c:			    Sprintf(verbuf, "%s! Your silver sheen does not frighten me!",
src/sounds.c:				Sprintf(verbuf, vampmsg[vampindex], body_part(BLOOD));
src/sounds.c:				Sprintf(verbuf, vampmsg[vampindex],
src/sounds.c:					Sprintf(msgbuff, talkabt, rn2(2) ? "herding" : rn2(2) ? "carpentry" : rn2(10) ? "pottery" : "delicious sawdust recipes");
src/sounds.c:					Sprintf(msgbuff, talkabt, rn2(10) ? "babies" : "stars distant and strange");
src/sounds.c:					Sprintf(msgbuff, talkabt, !rn2(4) ? "mining" : !rn2(3) ? "prospecting" : rn2(2) ? "metalwork" : "beer");
src/sounds.c:					Sprintf(msgbuff, talkabt, "sea gardening");
src/sounds.c:					Sprintf(msgbuff, talkabt, !rn2(4) ? "flowers" : !rn2(3) ? "green grass" : rn2(2) ? "whimsical things" : "the colors of the stars");
src/sounds.c:					Sprintf(msgbuff, talkabt, !rn2(3) ? "sudden storms" : !rn2(2) ? "whirlpools" : rn2(10) ? "starlight on the water" : "the secret and forgotten depths");
src/sounds.c:					Sprintf(msgbuff, talkabt, !rn2(4) ? "sudden storms" : !rn2(3) ? "wandering on the gasping dust" : rn2(2) ? "desert flowers" : rn2(10) ? "the stars over the desert sands" : "secret and forgotten ruins");
src/sounds.c:					Sprintf(msgbuff, talkabt, !rn2(4) ? "campfire stories" : !rn2(3) ? "fire and light" : !rn2(2) ? "pyromantic augury" : rn2(10) ? "the stars through the flames" : "secret and forgotten stories");
src/sounds.c:					Sprintf(msgbuff, talkabt, !rn2(4) ? "birth and death" : !rn2(3) ? "the changing seasons of life" : rn2(10) ? (!rn2(4) ? "the stars beyond the rains of spring" : !rn2(3) ? "the stars above the green summer canopy" : !rn2(4) ? "stars among the autumn leaves" : "stars seen past the barren branches") : "secret rebirths");
src/sounds.c:						Sprintf(msgbuff, talkabt, !rn2(4) ? "swords" : !rn2(3) ? "spears" : rn2(2) ? "bludgeons" : "knives");
src/sounds.c:							Sprintf(msgbuff, discuss, !rn2(5) ? "Fiore's dagger techniques" : !rn2(4) ? "mentalism" : !rn2(3) ? "theosophy" : rn2(2) ? "the occult" : "your recent dreams");
src/sounds.c:							Sprintf(msgbuff, talkabt, !rn2(5) ? "ley lines" : !rn2(4) ? "tectonophysics" : !rn2(3) ? "special relativity" : !rn2(2) ? "archaeology" : rn2(5) ? "the collective unconscious" : rn2(10) ? "her recurring dreams" : "her darkest nightmares");
src/sounds.c:	Sprintf(buf, "Locations: ");
src/sounds.c:	Sprintf(buf, "The Ice Caves");
src/sounds.c:	Sprintf(buf, "The Black Forest");
src/sounds.c:	Sprintf(buf, "The Gnomish Mines");
src/sounds.c:	Sprintf(buf, "The Dismal Swamp");
src/sounds.c:	Sprintf(buf, "The Archipelago");
src/sounds.c:	Sprintf(buf, "Tattoos: ");
src/sounds.c:		Sprintf(buf, tat_to_name(TAT_WILLOW));
src/sounds.c:	Sprintf(buf, "Services: ");
src/sounds.c:	Sprintf(buf, "Shrink Armor");
src/sounds.c:	Sprintf(buf, "Grow Armor");
src/sounds.c:	Sprintf(buf, "Repair Armor");
src/sounds.c:	Sprintf(buf, "Reshape Armor");
src/sounds.c:	Sprintf(buf, "Scales to Shield");
src/sounds.c:	    Sprintf(filespec, "%s/%s", sounddir, filename);
src/sounds.c:		Sprintf(text, "cannot read %.243s", filespec);
src/sounds.c:	Sprintf(buf, "Ask for blessing?");
src/sounds.c:	Sprintf(buf, "Drive out curses");
src/sounds.c:	Sprintf(buf, "Blessing of good fortune");
src/sounds.c:		Sprintf(buf, "Bless wielded item");
src/sounds.c:		Sprintf(buf, "Lift sterility curse");
src/sounds.c:		Sprintf(buf, "Sanctify your weapon");
src/sounds.c:	Sprintf(buf, "Ask for treatment?");
src/sounds.c:	Sprintf(buf, "Fortify my health ($%d)", nurseprices[NURSE_FULL_HEAL]);
src/sounds.c:		Sprintf(buf, "Something for my nerves ($%d)", nurseprices[NURSE_TRANQUIZIZERS]);
src/sounds.c:		Sprintf(buf, "Steroids ($%d)", nurseprices[NURSE_RESTORE_ABILITY]); /*Note: to accelerate natural healing*/
src/sounds.c:		Sprintf(buf, "Extract morgul shards ($%d)", nurseprices[NURSE_FIX_MORGUL]);
src/sounds.c:		Sprintf(buf, "Antibiotics ($%d)", nurseprices[NURSE_FIX_SICKNESS]);
src/sounds.c:		Sprintf(buf, "Remove slimy green growths ($%d)", nurseprices[NURSE_FIX_SLIME]);
src/sounds.c:		Sprintf(buf, "Fertility treatment ($%d)", nurseprices[NURSE_FIX_STERILE]);
src/sounds.c:		Sprintf(buf, "Brain surgery ($%d)", nurseprices[NURSE_BRAIN_SURGERY]);
src/sounds.c:	Sprintf(buf, "Ask for aid?");
src/sounds.c:		Sprintf(buf, "Extract morgul shards");
src/sounds.c:		Sprintf(buf, "Extract pathogen");
src/sounds.c:		Sprintf(buf, "Remove slimy green growths");
src/sounds.c:		Sprintf(buf, "Extract thought");
src/sounds.c:		Sprintf(buf, "Learn thought");
src/sounds.c:	Sprintf(buf, "Buy a doll?");
src/sounds.c:				Sprintf(buf, "%s ($%d)", OBJ_NAME(objects[n]), 800);
src/sounds.c:				Sprintf(buf, "%s ($%d)", OBJ_DESCR(objects[n]), 800);
src/sounds.c:		Sprintf(buf, "doll tear ($%d)", 8000);
src/spell.c:	Sprintf(splname, objects[booktype].oc_name_known ?
src/spell.c:		Sprintf(splname, objects[booktype].oc_name_known ? "\"%s\"" : "the \"%s\" spell", OBJ_NAME(objects[booktype]));
src/spell.c:			Sprintf(qbuf, "You know \"%s\" quite well already. Try to refresh your memory anyway?", OBJ_NAME(objects[booktype]));
src/spell.c:			    Sprintf(qbuf, "This spellbook is %sdifficult to comprehend. Continue?", (read_ability < 12 ? "very " : ""));
src/spell.c:	    else if (nspells < 27)  Sprintf(lets, "a-%c", 'a' + nspells - 1);
src/spell.c:	    else if (nspells == 27)  Sprintf(lets, "a-zA");
src/spell.c:	    else Sprintf(lets, "a-zA-%c", 'A' + nspells - 27);
src/spell.c:		Sprintf(qbuf, "Cast which spell? [%s ?]", lets);
src/spell.c:		Sprintf(qbuf, "Use which power? [%s ?]", lets);
src/spell.c:	Sprintf(buf,	"Pick spirit to re-contact:");
src/spell.c:			Sprintf(buf,	"%s%s", sealNames[i], sealTitles[i]);
src/spell.c:	Sprintf(buf,	"Pick spirit:");
src/spell.c:			Sprintf(buf,	"%s%s", sealNames[i], sealTitles[i]);
src/spell.c:					Sprintf(lets, "%c", i<26 ? 'a'+(char)i : 'A'+(char)(i-26));
src/spell.c:				Sprintf(lets, "%c", i<26 ? 'a'+(char)i : 'A'+(char)(i-26));
src/spell.c:		Sprintf(qbuf, "There is %s here, unlock it?",
src/spell.c:	Sprintf(buf,	"Pick creature to summon:");
src/spell.c:			Sprintf(buf, "%s", mons[i].mname);
src/spell.c:						Sprintf(buf, "zapped %sself with a spell", uhim());
src/spell.c:				Sprintf(buf, "zapped %sself with a spell", uhim());
src/spell.c:								Sprintf1(buf, spirit_powers[u.spiritPOrder[i]].name);
src/spell.c:								Sprintf(buf, " %2ld %s", u.spiritPColdowns[u.spiritPOrder[i]] - monstermoves + 1, spirit_powers[u.spiritPOrder[i]].name);
src/spell.c:						Sprintf1(buf, spirit_powers[u.spiritPOrder[i]].name);
src/spell.c:						Sprintf(buf, " %2ld %s", u.spiritPColdowns[u.spiritPOrder[i]] - monstermoves + 1, spirit_powers[u.spiritPOrder[i]].name);
src/spell.c:			Sprintf(buf, "Use a power instead");
src/spell.c:			Sprintf(buf, "Describe a power instead");
src/spell.c:			Sprintf(buf, "Rearrange powers instead");
src/spell.c:			Sprintf(buf, "Choose which power to reorder");
src/spell.c:			Sprintf(buf, "Choose which power to use");
src/spell.c:			Sprintf(buf, "Choose which power to describe");
src/spell.c:				Sprintf(buf, "Reordering powers; swap '%c' with", let);
src/spell.c:						Sprintf(buf, "%s %s", s_suffix(sealNames[decode_sealID(spirit_powers[p_no].owner) - FIRST_SEAL]),
src/spell.c:			Sprintf(buf, "%-20s     Level  %-12s Fail   Memory", "    Name", "Category");
src/spell.c:			Sprintf(buf, "Name\tLevel\tCategory\tFail\tMemory");
src/spell.c:			// Sprintf(buf, "You long for the flickering shadows!");
src/spell.c:			Sprintf(buf, "It's too big!");
src/spell.c:			Sprintf(buf, "You're suffering a crisis of faith!");
src/spell.c:			Sprintf(buf, "You can't bring yourself to use your magic.");
src/spell.c:			Sprintf(buf, iflags.menu_tab_sep ?
src/spell.c:			Sprintf(buf, "Cast a spell instead");
src/spell.c:			Sprintf(buf, "Maintain a spell instead");
src/spell.c:			Sprintf(buf, "Describe a spell instead");
src/spell.c:			Sprintf(buf, "Rearrange spells instead");
src/spell.c:			Sprintf(buf, "Quiver a spell instead");
src/spell.c:			Sprintf(buf, "Unquiver %s", OBJ_NAME(objects[u.quivered_spell]));
src/spell.c:			Sprintf(buf, "Choose which spell");
src/spell.c:			Sprintf(buf, "Choose which spell to reorder");
src/spell.c:			Sprintf(buf, "Choose which spell to cast");
src/spell.c:			Sprintf(buf, "Choose which spell to (un)maintain");
src/spell.c:			Sprintf(buf, "Choose which spell to describe");
src/spell.c:			Sprintf(buf, "Choose which spell to quiver");
src/spell.c:			Sprintf(buf, "Reordering spells; swap '%c' with", spellet(splaction));
src/spell.c:		sprintf(name,  " %s", spellname(spellID));
src/spell.c:		sprintf(stats, " Level %d %s spell", spellev(spellID), spelltypemnemonic(spell_skilltype(spellid(spellID))));
src/spell.c:		sprintf(fail,  " Fail chance: %d%%", (100 - percent_success(spellID)));
src/spell.c:		sprintf(known, " Memory:      %d%%", (spellknow(spellID) * 100 + (KEEN - 1)) / KEEN);
src/spell.c:	Sprintf(buf, "%-20s   Level    %-12s Fail", "    Name", "Category");
src/spell.c:		Sprintf(buf, "%c - %-20s  %2d%s   %-12s %3d%%",
src/spell.c:	Sprintf(buf, "Read the spellbook or study its wardings?");
src/spell.c:		Sprintf(buf, "Read spell");
src/spell.c:		Sprintf(buf, "Study warding");
src/spell.c:		Sprintf(qbuf, "Use which power? [%s ?]", lets);
src/spell.c:		Sprintf(buf, "%s, %ld", sealNames[j], u.spiritT[i] - monstermoves);
src/spell.c:		Sprintf(buf, "%s, %ld", sealNames[j], u.spiritT[i] - monstermoves);
src/spell.c:		Sprintf(buf, "%s, %ld", sealNames[j], u.spiritT[i] - monstermoves);
src/steed.c:		Sprintf(kbuf, "attempting to saddle %s", an(mtmp->data->mname));
src/steed.c:	    Sprintf(kbuf, "attempting to ride %s", an(mtmp->data->mname));
src/steed.c:	    Sprintf(buf, "slipped while mounting %s",
src/teleport.c:		    if (u.usteed) Sprintf(buf," and %s", mon_nam(u.usteed));
src/teleport.c:				Sprintf(buf,
src/teleport.c:		    Sprintf(buf,
src/testing.c:	Sprintf(buf, "Select test to run:");
src/testing.c:	Sprintf(buf, "Test readobjnam()");
src/testing.c:	Sprintf(buf, "Test level generation");
src/testing.c:		Sprintf(buf2, "2 %s", makeplural(simple_typename(i)));
src/testing.c:		Sprintf(buf2, "statue of %s",
src/thoughtglyph.c:	Sprintf(buf, "Learn what?");
src/thoughtglyph.c:		Sprintf(buf, "Increase HP");
src/thoughtglyph.c:		Sprintf(buf, "Increase speed");
src/thoughtglyph.c:		Sprintf(buf, "Magic resistance");
src/thoughtglyph.c:		Sprintf(buf, "Shock resistance");
src/thoughtglyph.c:		Sprintf(buf, "Fire resistance");
src/thoughtglyph.c:		Sprintf(buf, "Cold resistance");
src/thoughtglyph.c:		Sprintf(buf, "Sneak attack healing");
src/thoughtglyph.c:		Sprintf(buf, "Stronger sneak attacks");
src/thoughtglyph.c:		Sprintf(buf, "Poison resistance");
src/thoughtglyph.c:		Sprintf(buf, "Damage reduction");
src/thoughtglyph.c:		Sprintf(buf, "Sanity recovery");
src/thoughtglyph.c:		Sprintf(buf, "Carrying capacity");
src/thoughtglyph.c:		Sprintf(buf, "Regeneration at low health");
src/thoughtglyph.c:		Sprintf(buf, "More battle loot");
src/thoughtglyph.c:		Sprintf(buf, "More magical energy");
src/thoughtglyph.c:		Sprintf(buf, "Counterattack healing");
src/thoughtglyph.c:		Sprintf(buf, "Damage reduction for pets");
src/thoughtglyph.c:		Sprintf(buf, "Faster experience gain");
src/thoughtglyph.c:		Sprintf(buf, "Recover energy from sneak attacks");
src/thoughtglyph.c:		Sprintf(buf, "More magical healing");
src/thoughtglyph.c:		Sprintf(buf, "More powerful beast claws");
src/thoughtglyph.c:		Sprintf(buf, "Greater accuracy");
src/timeout.c:		Sprintf(monnambuf, "%s%s",
src/timeout.c:			    Sprintf(carriedby, "%s pack",
src/timeout.c:	    Sprintf(buf, " %4ld   %4ld  %-6s %s(%s) %d",
src/timeout.c:	    Sprintf(buf, " %4ld   %4ld  %-6s #%d(%s)",
src/timeout.c:    Sprintf(buf, "Current time = %ld.", monstermoves);
src/timeout.c:				Sprintf(buf, " %*s    inf", -longestlen, propname);
src/timeout.c:                Sprintf(buf, " %*s %6ld", -longestlen, propname,
src/topten.c:    Sprintf(new_dump_fn, "%s", dump_format_str(fname));
src/topten.c:		Sprintf(pbuf,
src/topten.c:			    Sprintf(pbuf,
src/topten.c:			Sprintf(pbuf,
src/topten.c:	if (rank) Sprintf(eos(linebuf), "%3d", rank);
src/topten.c:	Sprintf(eos(linebuf), " %10ld  %.10s", t1->points, t1->name);
src/topten.c:	Sprintf(eos(linebuf), "-%s", t1->plrole);
src/topten.c:		Sprintf(eos(linebuf), "-%s", t1->plrace);
src/topten.c:	Sprintf(eos(linebuf), "-%s", t1->plgend);
src/topten.c:		Sprintf(eos(linebuf), "-%s ", t1->plalign);
src/topten.c:	    Sprintf(eos(linebuf), "escaped the dungeon %s[max level %d]",
src/topten.c:	    Sprintf(eos(linebuf), "ascended to demigod%s-hood",
src/topten.c:		Sprintf(eos(linebuf), "choked on h%s food",
src/topten.c:		Sprintf(eos(linebuf), fmt, arg);
src/topten.c:		Sprintf(eos(linebuf), " in %s", dungeons[t1->deathdnum].dname);
src/topten.c:		    Sprintf(eos(linebuf), " on level %d", t1->deathlev);
src/topten.c:		    Sprintf(eos(linebuf), " [max %d]", t1->maxlvl);
src/topten.c:	    Sprintf(eos(linebuf), "  %c%s.", highc(*(t1->death)), t1->death+1);
src/topten.c:	else Sprintf(hpbuf, "%d", t1->hp);
src/topten.c:	    Sprintf(linebuf, "%15s %s", "", linebuf3);
src/topten.c:	    Sprintf(eos(bp), " %s[%d]",
src/topten.c:		Sprintf(eos(achieveXbuff), "%s%s", seperator, string);\
src/topten.c:	if(achievesWritten > 0) Sprintf(eos(achieveXbuff), ",");
src/topten.c:	if(achieve.get_kroo)   Sprintf(eos(achieveXbuff), "%s,", "get_kroo");
src/topten.c:	if(achieve.get_raggo)   Sprintf(eos(achieveXbuff), "%s,", "get_raggo");
src/topten.c:	if(achieve.get_poplar)   Sprintf(eos(achieveXbuff), "%s,", "get_poplar");
src/topten.c:	if(achieve.get_abominable)   Sprintf(eos(achieveXbuff), "%s,", "get_abominable");
src/topten.c:	if(achieve.get_gilly)   Sprintf(eos(achieveXbuff), "%s,", "get_gilly");
src/topten.c:	if(achieve.did_unknown)   Sprintf(eos(achieveXbuff), "%s,", "did_unknown");
src/topten.c:	if(achieve.killed_illurien)   Sprintf(eos(achieveXbuff), "%s,", "killed_illurien");
src/topten.c:	if(achieve.get_skey && achieve.get_ckey)   Sprintf(eos(achieveXbuff), "%s,", "pain_duo");
src/topten.c:	if(achieve.used_smith) Sprintf(eos(achieveXbuff), "%s,", "used_smith");
src/topten.c:	if(achieve.max_punch) Sprintf(eos(achieveXbuff), "%s,", "max_punch");
src/topten.c:	if(achieve.garnet_spear) Sprintf(eos(achieveXbuff), "%s,", "garnet_spear");
src/topten.c:	if(achieve.inked_up) Sprintf(eos(achieveXbuff), "%s,", "inked_up");
src/topten.c:	if(achieve.new_races) Sprintf(eos(achieveXbuff), "%s,", "new_races");
src/topten.c:	    Sprintf(pbuf, "Cannot find any %sentries for ",
src/trap.c:					Sprintf(buf,"%s helmet", material_name(item, FALSE));
src/trap.c:	    Sprintf(msgbuf, "The hole in the %s above you closes up.",
src/trap.c:			    Sprintf(verbbuf, "and %s fall",
src/trap.c:			    Sprintf(verbbuf,"lead %s",
src/trap.c:				Sprintf(verbbuf,"lead %s",
src/trap.c:		    Sprintf(verbbuf, "%s", Levitation ? (const char *)"float" :
src/trap.c:			Sprintf(verbbuf, "lead %s",
src/trap.c:		 Sprintf(verbbuf,"%s",
src/trap.c:		Sprintf(kbuf, "%s corpse", an(mons[uwep->corpsenm].mname));
src/trap.c:		Sprintf(kbuf, "%s corpse", an(mons[uswapwep->corpsenm].mname));
src/trap.c:			Sprintf(kbuf, "trying to help %s out of a pit",
src/trap.c:			    Sprintf(qbuf, "There %s and %s here. %s %s?",
src/trap.c:				Sprintf(qbuf, "There is %s bolted down here. Unbolt it?",
src/trap.c:				Sprintf(qbuf, "There is %s here. Check it for traps?",
src/trap.c:				Sprintf(buf, "exploding %s", xname(obj));
src/u_init.c:		if(flags.female) Sprintf(u.osepro,"he");
src/u_init.c:		else Sprintf(u.osepro,"she");
src/u_init.c:				if(flags.female) Sprintf1(u.osegen,urace.individual.m);
src/u_init.c:				else Sprintf1(u.osegen,urace.individual.f);
src/u_init.c:				Sprintf1(u.osegen,urace.noun);
src/u_init.c:				if(flags.female) Sprintf1(u.osegen,races[rndI].individual.m);
src/u_init.c:				else Sprintf1(u.osegen,races[rndI].individual.f);
src/u_init.c:				Sprintf1(u.osegen,races[rndI].noun);
src/u_init.c:		if(!flags.female) Sprintf(u.osepro,"he");
src/u_init.c:		else Sprintf(u.osepro,"she");
src/u_init.c:				if(flags.female) Sprintf1(u.osegen,urace.individual.f);
src/u_init.c:				else Sprintf1(u.osegen,urace.individual.m);
src/u_init.c:				Sprintf1(u.osegen,urace.noun);
src/u_init.c:				if(flags.female) Sprintf1(u.osegen,races[rndI].individual.f);
src/u_init.c:				else Sprintf1(u.osegen,races[rndI].individual.m);
src/u_init.c:				Sprintf1(u.osegen,races[rndI].noun);
src/vault.c:	    Sprintf(buf,
src/version.c:	Sprintf(eos(buf), " %s", BETA_INFO);
src/weapon.c:					Sprintf(welded_buf, "%s welded to %s %s",
src/weapon.c:		    Sprintf(buf,
src/weapon.c:		    Sprintf(buf,
src/weapon.c:		 	Sprintf(buf2,"%-*s [%s]",
src/weapon.c:			Sprintf(buf, " %s%-*s %-12s %5d(%4d)",
src/weapon.c:			Sprintf(buf, " %s%s\t%s\t%5d(%4d)",
src/weapon.c:			Sprintf(buf, " %s %-*s [%s / %s]",
src/weapon.c:			Sprintf(buf, " %s%s\t[%s / %s]",
src/weapon.c:		Sprintf(eos(buf), "  (%d slot%s available)",
src/were.c:	    Sprintf(qbuf, "Do you want to change into %s? ",
src/wield.c:	    Sprintf(kbuf, "%s corpse", an(mons[wep->corpsenm].mname));
src/wield.c:		Sprintf(kbuf, "%s corpse", an(mons[uswapwep->corpsenm].mname));
src/wield.c:		Sprintf(buf, "Your %s %s.", makeplural(body_part(HAND)),
src/worn.c:		    Sprintf(buf, " removes %s and", distant_name(old, doname));
src/worn.c:		Sprintf(buf, "falling off %s",
src/write.c:	Sprintf(qbuf, "What type of %s do you want to write?", typeword);
src/write.c:			    Sprintf(namebuf, "%s was here!", plname);
src/xhity.c:			    		Sprintf(buf, "%s appears",
src/xhity.c:			    		Sprintf(buf, "%s appear",
src/xhity.c:			Sprintf(buf, "You appear to be %s again.",
src/xhity.c:		Sprintf(buf, "%s %s %s %s",
src/xhity.c:		Sprintf(buf, "%s %s %s", Monnam(magr), otmp->otyp == AKLYS ? "throws" : "thrusts",
src/xhity.c:		Sprintf(buf2, "%s!", buf);
src/xhity.c:		Sprintf(buf2, "%s at %s.", buf, mon_nam(mdef));
src/xhity.c:			Sprintf(buf, "%s", ((!weapon || valid_weapon(weapon)) ? "attack" : cxname(weapon)));
src/xhity.c:				Sprintf(buf, "%s%s covered in acid",
src/xhity.c:				//	Sprintf(buf, "%s! %s screams!", buf, Monnam(mdef));
src/xhity.c:				Sprintf(buf, "%s %s",
src/xhity.c:					Sprintf(buf, "decapitated by %s", mon_nam(magr));
src/xhity.c:					Sprintf(buf, "%s headspike", s_suffix(mon_nam(magr)));
src/xhity.c:			Sprintf(buf, "%s %s",
src/xhity.c:						Sprintf(killer_buf, "disintegrated by %s", 
src/xhity.c:							Sprintf(buf, "%s by %s",
src/xhity.c:				Sprintf(buf, "unwisely tried to eat %s",
src/xhity.c:					Sprintf(buf, "You totally digest %s.",
src/xhity.c:						Sprintf(buf, "%s isn't sitting well with you.",
src/xhity.c:			case AD_FIRE:	Sprintf(buf, "fiery");		break;
src/xhity.c:			case AD_COLD:	Sprintf(buf, "icy");		break;
src/xhity.c:			case AD_ELEC:	Sprintf(buf, "shocking");	break;
src/xhity.c:			case AD_DARK:	Sprintf(buf, "dark");	break;
src/xhity.c:						Sprintf(buf, "%s image is reflected by %%s %%s.",
src/xhity.c:								Sprintf(buf, "%%s doesn't seem to notice that %s image was reflected by your %%s.",
src/xhity.c:								Sprintf(buf, "%s doesn't seem to notice that %s image was reflected by %%s %%s.",
src/xhity.c:								Sprintf(buf, "%%s image is reflected back at %s by %s, which %s reflects away with %s %%s!",
src/xhity.c:								Sprintf(buf, "%%s %%s reflects %s image away!",
src/xhity.c:							Sprintf(buf, "%s sees %s image reflected in your %%s%%s!",
src/xhity.c:							Sprintf(buf, "%s sees %s image reflected in %%s %%s!",
src/xhity.c:				Sprintf(buf, "%%s gaze is %sreflected by your %%s%s",
src/xhity.c:				Sprintf(buf, "%s gaze is %sreflected by %%s %%s%s",
src/xhity.c:					Sprintf(buf, "is put to sleep by %s gaze.",
src/xhity.c:					Sprintf(buf, "is put to sleep under %s gaze.",
src/xhity.c:				Sprintf(buf, "falls asleep!");
src/xhity.c:				Sprintf(killerbuf, "%s trap", killer_xname(weapon));	/* killer_xname() adds a/an/the */
src/xhity.c:				Sprintf(killerbuf, "%s", killer_xname(weapon));	/* killer_xname() adds a/an/the */
src/xhity.c:		Sprintf(buf, "%s ", (magr ? (youagr ? "Your" : s_suffix(Monnam(magr))) : "The"));
src/xhity.c:			Sprintf(seared, "%s %s",
src/xhity.c:					Sprintf(poisons_str, "poison");
src/xhity.c:					Sprintf(poisons_str, "filth");
src/xhity.c:					Sprintf(poisons_str, "drug");
src/xhity.c:					Sprintf(poisons_str, "hallucinogen");
src/xhity.c:					Sprintf(poisons_str, "lethe-rust");
src/xhity.c:					Sprintf(poisons_str, "acid-coating");
src/xhity.c:					Sprintf(buf, "unwisely drained %s", pd->mname);
src/xhity.c:						Sprintf(buf, "%s shadow", s_suffix(Monnam(mdef)));
src/xhityhelpers.c:					Sprintf(qbuf, "Really attack %s? [no/yes]",
src/xhityhelpers.c:					Sprintf(qbuf, "Really attack %s?", mon_nam(mdef));
src/xhityhelpers.c:				Sprintf(kbuf, "stolen %s corpse", mons[otmp->corpsenm].mname);
src/xhityhelpers.c:				Sprintf(kbuf, "stolen %s corpse", mons[otmp->corpsenm].mname);
src/xhityhelpers.c:			Sprintf(buf, "%s", ((!weapon || valid_weapon(weapon)) ? "attack" : cxname(weapon)));
src/xhityhelpers.c:							Sprintf(kbuf, "stolen %s corpse", mons[otmp->corpsenm].mname);
src/xhityhelpers.c:							Sprintf(kbuf, "stolen %s corpse", mons[otmp->corpsenm].mname);
src/zap.c:			Sprintf(buf, "zapped %sself with a wand", uhim());
src/zap.c:		    Sprintf(buf, "shot %sself with a death ray", uhim());
src/zap.c:		    Sprintf(buf, "shot %sself with a posion spray", uhim());
src/zap.c:#define addmsg(...) do{if(!havemsg){Sprintf(buf, __VA_ARGS__);havemsg=TRUE;}else{Strcat(buf, " "); Sprintf(eos(buf), __VA_ARGS__);}}while(0)
src/zap.c:			Sprintf(llog, "wished for \"%s\"", mungspaces(bufcpy));
src/allmain.c:			Sprintf(buf, "%s", artilist[i].name);
src/allmain.c:	Sprintf(eos(buf), " %s", align_str(galign(u.ugodbase[UGOD_CURRENT])));
src/allmain.c:	Sprintf(eos(buf), " %s", genders[currentgend].adj);
src/allmain.c:	Sprintf(eos(racebuf), "%s %s", get_ent_species(u.ent_species), urace.adj);
src/allmain.c:	Sprintf(eos(racebuf), "%s", urace.adj);
src/allmain.c:		Sprintf(pbuf,"Number\tName\tclass\thumanoid\tanimaloid\tserpentine\tcentauroid\tnaganoid\tleggedserpent\tNAoid\thumanoid torso\thumanoid upperbody\thead\thands\tgloves\tfeet\tboots\teyes\toldpolywep\thands but no polywep\n");
src/allmain.c:			Sprintf(pbuf,"%d	%s	%d	%d	%d	%d	%d	%d	%d	%d	%d	%d	%d	%d	%d	%d	%d	%d	%d	%d\n", 
src/allmain.c:		Sprintf(pbuf,"Number\tName\tclass\tslain insight\tseen insight\tsanity\n");
src/allmain.c:			Sprintf(pbuf,"%d	%s	%d	%d	%d	%d\n", 
src/allmain.c:		Sprintf(pbuf,"Number\tName\tclass\taverage\tmax\tper-hit avg\tper-hit max\tspeed\talignment\tunique?\n");
src/allmain.c:			Sprintf(pbuf,"%d\t%s\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%s\n", j, mons[j].mname, mons[j].mlet,avdm, mdm, avgperhit, maxperhit, mons[j].mmove,ptr->maligntyp,(mons[j].geno&G_UNIQ) ? "unique":"");
src/allmain.c:					Sprintf(sizebuf,"tiny");
src/allmain.c:					Sprintf(sizebuf,"small");
src/allmain.c:					Sprintf(sizebuf,"medium");
src/allmain.c:					Sprintf(sizebuf,"large");
src/allmain.c:					Sprintf(sizebuf,"huge");
src/allmain.c:					Sprintf(sizebuf,"gigantic");
src/allmain.c:			Sprintf(pbuf,"{{monster\n");
src/allmain.c:			Sprintf(eos(pbuf)," |name=%s\n", mons[i].mname);
src/allmain.c:			Sprintf(eos(pbuf)," |symbol={{%s|%c}}\n", colorstr, def_monsyms[(int)mons[i].mlet]);
src/allmain.c:			Sprintf(eos(pbuf)," |tile=\n");
src/allmain.c:			Sprintf(eos(pbuf)," |difficulty=%d\n", monstr[i]);
src/allmain.c:			Sprintf(eos(pbuf)," |level=%d\n", mons[i].mlevel);
src/allmain.c:			Sprintf(eos(pbuf)," |experience=%d\n", ptrexperience(ptr));
src/allmain.c:			Sprintf(eos(pbuf)," |speed=%d\n", mons[i].mmove);
src/allmain.c:			Sprintf(eos(pbuf)," |AC=%d\n", 10-(mons[i].nac+mons[i].dac+mons[i].pac));
src/allmain.c:			Sprintf(eos(pbuf)," |MR=%d\n", mons[i].mr);
src/allmain.c:			Sprintf(eos(pbuf)," |align=%d\n", mons[i].maligntyp);
src/allmain.c:			Sprintf(eos(pbuf)," |frequency=%d\n", (int)(mons[i].geno & G_FREQ));
src/allmain.c:			Sprintf(eos(pbuf)," |genocidable=%s\n", ((mons[i].geno & G_GENO) != 0) ? "Yes":"No");
src/allmain.c:			Sprintf(eos(pbuf)," |attacks=%s\n", attkbuf);
src/allmain.c:			Sprintf(eos(pbuf)," |weight=%d\n", (int) mons[i].cwt);
src/allmain.c:			Sprintf(eos(pbuf)," |nutr=%d\n", (int) mons[i].cnutrit);
src/allmain.c:			Sprintf(eos(pbuf)," |size=%s\n", sizebuf);
src/allmain.c:			Sprintf(eos(pbuf)," |resistances=%s\n", resbuf);
src/allmain.c:			Sprintf(eos(pbuf)," |resistances conveyed=%s\n", convbuf);
src/allmain.c:			Sprintf(eos(pbuf)," |attributes={{attributes\n");
src/allmain.c:				Sprintf(eos(pbuf)," |%s|=\n", Aptrnam(ptr));
src/allmain.c:			if(species_flies(&mons[i]))	Sprintf(eos(pbuf)," |fly=%s\n", species_flies(&mons[i]) ? "1":"");
src/allmain.c:			if(species_swims(&mons[i]))	Sprintf(eos(pbuf)," |swim=%s\n", species_swims(&mons[i]) ? "1":"");
src/allmain.c:			if(amorphous(ptr))	Sprintf(eos(pbuf)," |amorphous=%s\n", amorphous(ptr) ? "1":"");
src/allmain.c:			if(species_passes_walls(ptr))	Sprintf(eos(pbuf)," |wallwalk=%s\n", species_passes_walls(ptr) ? "1":"");
src/allmain.c:			if(is_clinger(ptr))	Sprintf(eos(pbuf)," |cling=%s\n", is_clinger(ptr) ? "1":"");
src/allmain.c:			if(tunnels(ptr))	Sprintf(eos(pbuf)," |tunnel=%s\n", tunnels(ptr) ? "1":"");
src/allmain.c:			if(needspick(ptr))	Sprintf(eos(pbuf)," |needpick=%s\n", needspick(ptr) ? "1":"");
src/allmain.c:			if(hides_under(ptr))	Sprintf(eos(pbuf)," |conceal=%s\n", hides_under(ptr) ? "1":"");
src/allmain.c:			if(is_hider(ptr))	Sprintf(eos(pbuf)," |hide=%s\n",  is_hider(ptr) ? "1":"");
src/allmain.c:			if( amphibious(ptr) )	Sprintf(eos(pbuf)," |amphibious=%s\n",  amphibious(ptr) ? "1":"");
src/allmain.c:			if(breathless(ptr))	Sprintf(eos(pbuf)," |breathless=%s\n",  breathless(ptr) ? "1":"");
src/allmain.c:			if(notake(ptr) )	Sprintf(eos(pbuf)," |notake=%s\n", notake(ptr) ? "1":"");
src/allmain.c:			if(!haseyes(ptr))	Sprintf(eos(pbuf)," |noeyes=%s\n", !haseyes(ptr) ? "1":"");
src/allmain.c:			if(nohands(ptr))	Sprintf(eos(pbuf)," |nohands=%s\n", nohands(ptr) ? "1":"");
src/allmain.c:			if(nolimbs(ptr))	Sprintf(eos(pbuf)," |nolimbs=%s\n", nolimbs(ptr) ? "1":"");
src/allmain.c:			if(!has_head(ptr))	Sprintf(eos(pbuf)," |nohead=%s\n", !has_head(ptr) ? "1":"");
src/allmain.c:			if(mindless(ptr))	Sprintf(eos(pbuf)," |mindless=%s\n", mindless(ptr) ? "1":"");
src/allmain.c:			if( humanoid(ptr))	Sprintf(eos(pbuf)," |humanoid=%s\n", humanoid(ptr) ? "1":"");
src/allmain.c:			if(is_animal(ptr))	Sprintf(eos(pbuf)," |animal=%s\n", is_animal(ptr) ? "1":"");
src/allmain.c:			if(slithy(ptr))	Sprintf(eos(pbuf)," |slithy=%s\n", slithy(ptr) ? "1":"");
src/allmain.c:			if(unsolid(ptr))	Sprintf(eos(pbuf)," |unsolid=%s\n", unsolid(ptr) ? "1":"");
src/allmain.c:			if(thick_skinned(ptr))	Sprintf(eos(pbuf)," |thick=%s\n", thick_skinned(ptr) ? "1":"");
src/allmain.c:			if(lays_eggs(ptr))	Sprintf(eos(pbuf)," |oviparous=%s\n", lays_eggs(ptr) ? "1":"");
src/allmain.c:			if(species_regenerates(ptr))	Sprintf(eos(pbuf)," |regen=%s\n", species_regenerates(ptr) ? "1":"");
src/allmain.c:			if(species_perceives(ptr))	Sprintf(eos(pbuf)," |seeinvis=%s\n", species_perceives(ptr) ? "1":"");
src/allmain.c:			if(species_teleports(ptr))	Sprintf(eos(pbuf)," |tport=%s\n", species_teleports(ptr) ? "1":"");
src/allmain.c:			if(species_controls_teleports(ptr))	Sprintf(eos(pbuf)," |tportcntrl=%s\n", species_controls_teleports(ptr) ? "1":"");
src/allmain.c:			if(acidic(ptr))	Sprintf(eos(pbuf)," |acid=%s\n", acidic(ptr) ? "1":"");
src/allmain.c:			if(poisonous(ptr) )	Sprintf(eos(pbuf)," |pois=%s\n", poisonous(ptr) ? "1":"");
src/allmain.c:			if(carnivorous(ptr)&&!herbivorous(ptr))	Sprintf(eos(pbuf)," |carnivore=%s\n", carnivorous(ptr)&&!herbivorous(ptr) ? "1":"");
src/allmain.c:			if(herbivorous(ptr)&&!carnivorous(ptr))	Sprintf(eos(pbuf)," |herbivore=%s\n", herbivorous(ptr)&&!carnivorous(ptr) ? "1":"");
src/allmain.c:			if(carnivorous(ptr)&&herbivorous(ptr))	Sprintf(eos(pbuf)," |omnivore=%s\n", carnivorous(ptr)&&herbivorous(ptr) ? "1":"");
src/allmain.c:			if(metallivorous(ptr))	Sprintf(eos(pbuf)," |metallivore=%s\n", metallivorous(ptr) ? "1":"");
src/allmain.c:			if(!polyok(ptr))	Sprintf(eos(pbuf)," |nopoly=%s\n", !polyok(ptr) ? "1":"");
src/allmain.c:			if(is_undead(ptr))	Sprintf(eos(pbuf)," |undead=%s\n", is_undead(ptr) ? "1":"");
src/allmain.c:			if(is_were(ptr))	Sprintf(eos(pbuf)," |were=%s\n", is_were(ptr) ? "1":"");
src/allmain.c:			if(is_human(ptr))	Sprintf(eos(pbuf)," |human=%s\n", is_human(ptr) ? "1":"");
src/allmain.c:			if(is_elf(ptr))	Sprintf(eos(pbuf)," |elf=%s\n", is_elf(ptr) ? "1":"");
src/allmain.c:			if(is_dwarf(ptr))	Sprintf(eos(pbuf)," |dwarf=%s\n", is_dwarf(ptr) ? "1":"");
src/allmain.c:			if(is_gnome(ptr))	Sprintf(eos(pbuf)," |gnome=%s\n", is_gnome(ptr) ? "1":"");
src/allmain.c:			if(is_orc(ptr))	Sprintf(eos(pbuf)," |orc=%s\n", is_orc(ptr) ? "1":"");
src/allmain.c:			if(is_demon(ptr))	Sprintf(eos(pbuf)," |demon=%s\n", is_demon(ptr) ? "1":"");
src/allmain.c:			if(is_mercenary(ptr))	Sprintf(eos(pbuf)," |merc=%s\n", is_mercenary(ptr) ? "1":"");
src/allmain.c:			if(is_lord(ptr))	Sprintf(eos(pbuf)," |lord=%s\n", is_lord(ptr) ? "1":"");
src/allmain.c:			if(is_prince(ptr))	Sprintf(eos(pbuf)," |prince=%s\n", is_prince(ptr) ? "1":"");
src/allmain.c:			if(is_giant(ptr) )	Sprintf(eos(pbuf)," |giant=%s\n", is_giant(ptr) ? "1":"");
src/allmain.c:			if(is_male(ptr))	Sprintf(eos(pbuf)," |male=%s\n", is_male(ptr) ? "1":"");
src/allmain.c:			if(is_female(ptr))	Sprintf(eos(pbuf)," |female=%s\n", is_female(ptr) ? "1":"");
src/allmain.c:			if(is_neuter(ptr))	Sprintf(eos(pbuf)," |neuter=%s\n", is_neuter(ptr) ? "1":"");
src/allmain.c:			if(always_hostile(ptr))	Sprintf(eos(pbuf)," |hostile=%s\n", always_hostile(ptr) ? "1":"");
src/allmain.c:			if(always_peaceful(ptr))	Sprintf(eos(pbuf)," |peaceful=%s\n", always_peaceful(ptr) ? "1":"");
src/allmain.c:			if(is_domestic(ptr))	Sprintf(eos(pbuf)," |domestic=%s\n", is_domestic(ptr) ? "1":"");
src/allmain.c:			if(is_wanderer(ptr))	Sprintf(eos(pbuf)," |wander=%s\n", is_wanderer(ptr) ? "1":"");
src/allmain.c:			if((((ptr)->mflagst & MT_STALK) != 0L))	Sprintf(eos(pbuf)," |stalk=%s\n", (((ptr)->mflagst & MT_STALK) != 0L) ? "1":"");
src/allmain.c:			if(extra_nasty(ptr))	Sprintf(eos(pbuf)," |nasty=%s\n", extra_nasty(ptr) ? "1":"");
src/allmain.c:			if(strongmonst(ptr) )	Sprintf(eos(pbuf)," |strong=%s\n", strongmonst(ptr) ? "1":"");
src/allmain.c:			if(throws_rocks(ptr))	Sprintf(eos(pbuf)," |rockthrow=%s\n", throws_rocks(ptr) ? "1":"");
src/allmain.c:			if(likes_gold(ptr))	Sprintf(eos(pbuf)," |greedy=%s\n", likes_gold(ptr) ? "1":"");
src/allmain.c:			if(likes_gems(ptr))	Sprintf(eos(pbuf)," |jewels=%s\n", likes_gems(ptr) ? "1":"");
src/allmain.c:			if(likes_objs(ptr))	Sprintf(eos(pbuf)," |collect=%s\n", likes_objs(ptr) ? "1":"");
src/allmain.c:			if(likes_magic(ptr))	Sprintf(eos(pbuf)," |magic=%s\n", likes_magic(ptr) ? "1":"");
src/allmain.c:			if(wants_amul(ptr))	Sprintf(eos(pbuf)," |wantsamul=%s\n", wants_amul(ptr) ? "1":"");
src/allmain.c:			if(wants_bell(ptr))	Sprintf(eos(pbuf)," |wantsbell=%s\n", wants_bell(ptr) ? "1":"");
src/allmain.c:			if(wants_book(ptr))	Sprintf(eos(pbuf)," |wantsbook=%s\n", wants_book(ptr) ? "1":"");
src/allmain.c:			if(wants_cand(ptr))	Sprintf(eos(pbuf)," |wantscand=%s\n", wants_cand(ptr) ? "1":"");
src/allmain.c:			if(wants_qart(ptr))	Sprintf(eos(pbuf)," |wantsarti=%s\n", wants_qart(ptr) ? "1":"");
src/allmain.c:			if(is_covetous(ptr))	Sprintf(eos(pbuf)," |wantsall=%s\n", is_covetous(ptr) ? "1":"");
src/allmain.c:			if((((ptr)->mflagst & MT_WAITFORU) != 0L))	Sprintf(eos(pbuf)," |waitsforu=%s\n", (((ptr)->mflagst & MT_WAITFORU) != 0L) ? "1":"");
src/allmain.c:			if((((ptr)->mflagst & MT_CLOSE) != 0L))	Sprintf(eos(pbuf)," |close=%s\n", (((ptr)->mflagst & MT_CLOSE) != 0L) ? "1":"");
src/allmain.c:			if(is_covetous(ptr))	Sprintf(eos(pbuf)," |covetous=%s\n", is_covetous(ptr) ? "1":"");
src/allmain.c:			if(infravision(ptr))	Sprintf(eos(pbuf)," |infravision=%s\n", infravision(ptr) ? "1":"");
src/allmain.c:			if(infravisible(ptr))	Sprintf(eos(pbuf)," |infravisible=%s\n", infravisible(ptr) ? "1":"");
src/allmain.c:			if((mons[i].geno & G_NOHELL))	Sprintf(eos(pbuf)," |nohell=%s\n", (mons[i].geno & G_NOHELL) ? "1":"");
src/allmain.c:			if(((mons[i].geno & G_HELL) != 0))	Sprintf(eos(pbuf)," |hell=%s\n", ((mons[i].geno & G_HELL) != 0) ? "1":"");
src/allmain.c:			// if(((mons[i].geno & G_PLANES) != 0))	Sprintf(eos(pbuf)," |hell=%s\n", ((mons[i].geno & G_PLANES) != 0) ? "1":"");
src/allmain.c:			// if()	Sprintf(eos(pbuf)," |moria=\n");
src/allmain.c:			if((mons[i].geno & G_SGROUP))	Sprintf(eos(pbuf)," |sgroup=%s\n", (mons[i].geno & G_SGROUP) ? "1":"");
src/allmain.c:			if((mons[i].geno & G_LGROUP))	Sprintf(eos(pbuf)," |lgroup=%s\n", (mons[i].geno & G_LGROUP) ? "1":"");
src/allmain.c:			// if()	Sprintf(eos(pbuf)," |vlgroup=\n");
src/allmain.c:			if((mons[i].geno & G_NOCORPSE))	Sprintf(eos(pbuf)," |nocorpse=%s\n", (mons[i].geno & G_NOCORPSE) ? "1":"");
src/allmain.c:			if((is_undead(ptr) && !(mons[i].geno & G_NOCORPSE)))	Sprintf(eos(pbuf)," |oldcorpse=%s\n", (is_undead(ptr) && !(mons[i].geno & G_NOCORPSE)) ? "1":"");
src/allmain.c:			if(emits_light(ptr))	Sprintf(eos(pbuf)," |light=%s\n", emits_light(ptr) ? "1":"");
src/allmain.c:			if((nonliving(ptr) || is_demon(ptr)))	Sprintf(eos(pbuf)," |death=%s\n", (nonliving(ptr) || is_demon(ptr)) ? "1":"");
src/allmain.c:			if((mons[i].mresists & MR_DRAIN))	Sprintf(eos(pbuf)," |drain=%s\n", (mons[i].mresists & MR_DRAIN) ? "1":"");
src/allmain.c:			// if()	Sprintf(eos(pbuf)," |plusone=\n");
src/allmain.c:			// if()	Sprintf(eos(pbuf)," |plustwo=\n");
src/allmain.c:			// if()	Sprintf(eos(pbuf)," |plusthree=\n");
src/allmain.c:			// if()	Sprintf(eos(pbuf)," |plusfour=\n");
src/allmain.c:			// if()	Sprintf(eos(pbuf)," |hitasone=\n");
src/allmain.c:			// if()	Sprintf(eos(pbuf)," |hitastwo=\n");
src/allmain.c:			// if()	Sprintf(eos(pbuf)," |hitasthree=\n");
src/allmain.c:			// if()	Sprintf(eos(pbuf)," |hitasfour=\n");
src/allmain.c:			if(is_vampire(ptr))	Sprintf(eos(pbuf)," |vampire=%s\n", is_vampire(ptr) ? "1":"");
src/allmain.c:			if(can_betray(ptr))	Sprintf(eos(pbuf)," |traitor=%s\n", can_betray(ptr) ? "1":"");
src/allmain.c:			if(is_untamable(ptr))	Sprintf(eos(pbuf)," |notame=%s\n", is_untamable(ptr) ? "1":"");
src/allmain.c:			if((emits_light(ptr) == 1))	Sprintf(eos(pbuf)," |light1=%s\n", (emits_light(ptr) == 1) ? "1":"");
src/allmain.c:			if((emits_light(ptr) == 2))	Sprintf(eos(pbuf)," |light2=%s\n", (emits_light(ptr) == 2) ? "1":"");
src/allmain.c:			if((emits_light(ptr) == 3))	Sprintf(eos(pbuf)," |light3=%s\n", (emits_light(ptr) == 3) ? "1":"");
src/allmain.c:			// if()	Sprintf(eos(pbuf)," |groupattack=\n");
src/allmain.c:			// if()	Sprintf(eos(pbuf)," |blinker=\n");
src/allmain.c:			if((!species_regenerates(ptr) && nonliving(ptr)))	Sprintf(eos(pbuf)," |noregen=%s\n", (!species_regenerates(ptr) && nonliving(ptr)) ? "1":"");
src/allmain.c:			if(stationary(ptr))	Sprintf(eos(pbuf)," |stationary=%s\n", stationary(ptr) ? "1":"");
src/allmain.c:			Sprintf(eos(pbuf)," }}\n");
src/allmain.c:			Sprintf(eos(pbuf)," |reference=\n");
src/allmain.c:			Sprintf(eos(pbuf),"}}\n\n");
src/allmain.c:			if((int)mons[i].mlet == S_SHADE) Sprintf(pbuf,"[[%s|{{%s|&nbsp;}}]]", mons[i].mname, colorstr);
src/allmain.c:			else Sprintf(pbuf,"[[%s|{{%s|%c}}]]", mons[i].mname, colorstr, def_monsyms[(int)mons[i].mlet]);
src/allmain.c:				Sprintf(pbuf,"<br/>\n");
src/allmain.c:			Sprintf(pbuf,"{{black|&nbsp;}}");
src/allmain.c:	// Sprintf(buf,""); //What was this for?
src/allmain.c:				Sprintf(buf, "%s", mrKey[i]);
src/allmain.c:				Sprintf(eos(buf), ", %s", mrKey[i]);
src/allmain.c:			Sprintf(buf, "%s %dd%d %s",
src/allmain.c:			Sprintf(eos(buf), ", %s %dd%d %s",
sys/amiga/amidos.c:# define Sprintf (void) sprintf
sys/amiga/amirip.c:    Sprintf(buf, "%s", plname);
sys/amiga/amirip.c:    Sprintf(buf, "%ld Au",
sys/amiga/amirip.c:    Sprintf(buf, "%4d", getyear());
sys/amiga/amirip.c:    sprintf(buf," %s ",p);
sys/amiga/winami.c:	sprintf( buf, "%-10s - %s ",
sys/amiga/winami.c:		sprintf( buf, "%-10s - %s ",
sys/amiga/winami.c:	    sprintf( t, "xxx%s", obufp );
sys/amiga/winami.c:	    sprintf( t, "# %s", obufp );
sys/amiga/winami.c:	    Sprintf(prompt, "%s [%s] ", query, respbuf);
sys/amiga/winami.c:	    if (def) Sprintf(eos(prompt), "(%c) ", def);
sys/amiga/winami.c:	    Sprintf(rtmp, "%c", q);
sys/amiga/winami.c:	    sprintf( buf, "Can't display %s: %s", fn,
sys/amiga/winami.c:		Sprintf(pbuf, "Pick a role for your %s", plbuf);
sys/amiga/winami.c:		    Sprintf(pbuf, "Pick the race of your %s", plbuf);
sys/amiga/winami.c:		    Sprintf(pbuf, "Pick the gender of your %s", plbuf);
sys/amiga/winami.c:		    Sprintf(pbuf, "Pick the alignment of your %s", plbuf);
sys/amiga/winchar.c:			sprintf( buf, "Char #%d", num );
sys/amiga/winchar.c:	    sprintf(buf, "Can't open %s: %s", filenames[i], strerror( errno ));
sys/amiga/winchar.c:	    sprintf(buf,"ParseIFF failed for image %d, failure code: %d",i,j);
sys/amiga/winchar.c:	    sprintf(buf, "Can't allocate bitmap for image %d\n", i );
sys/amiga/winfuncs.c:	sprintf( buf, "nw type (%d) dims l: %d, t: %d, w: %d, h: %d",
sys/amiga/winfuncs.c:	sprintf(fname,"NetHack %d.%d.%d", VERSION_MAJOR, VERSION_MINOR, PATCHLEVEL);
sys/amiga/winmenu.c:	Sprintf( buf, "%c - %s", ch, str );
sys/amiga/winmenu.c:	    sprintf( title, "%s the %s's Inventory", plname, pl_character );
sys/amiga/winmenu.c:	    sprintf( buf, "No Window Opened For Menu (%d,%d,%d-%d,%d-%d)",
sys/amiga/winmenu.c:			    sprintf(countString, "Count: %d", count);
sys/amiga/winreq.c:			sprintf( nname, "%s/New_NetHack.cnf", oname );
sys/amiga/winreq.c:			sprintf( nname, "%sNew_NetHack.cnf", oname );
sys/amiga/winreq.c:    sprintf( buf, "%d ", mxsize );
sys/amiga/winreq.c:    sprintf( buf, "%d ", mysize );
sys/amiga/winreq.c:    sprintf( buf, "%d ", xclipbord );
sys/amiga/winreq.c:    sprintf( buf, "%d ", yclipbord );
sys/amiga/winreq.c:		    sprintf( buf, "%d ",lmxsize );
sys/amiga/winreq.c:		    sprintf( buf, "%d ", mysize );
sys/amiga/winreq.c:		    sprintf( buf, "%d ", xclipbord );
sys/amiga/winreq.c:		    sprintf( buf, "%d ", yclipbord );
sys/amiga/winreq.c:    	sprintf( buf, "c:copy \"%s\" \"%s\" clone", from, to );
sys/amiga/winreq.c:    sprintf( buf, "%s=%03x default=%s%s", colname, colors[idx], defval,
sys/amiga/winreq.c:    	sprintf( s, "%s%03lx", i ? "/" : "", (long)flags.amii_curmap[ i ] );
sys/be/bemain.c:	Sprintf(lock,"%d%s", getuid(), plname);
sys/mac/dprintf.c:			vsprintf (&buffer [1], format, list);
sys/mac/macerrs.c:	vsprintf((char *)buf, format, ap);
sys/mac/macerrs.c:			sprintf((char *)&errdesc[1],"a %d error occurred",errcode);
sys/mac/macerrs.c:		Vsprintf(pbuf,line,VA_ARGS);
sys/mac/macerrs.c:	sprintf((char *)&paserr[1], "%s - %d",s,n);
sys/mac/macmain.c:	Sprintf (lock, "%d%s", getuid (), plname);
sys/mac/macwin.c:		Sprintf(locStr, "%c - %s", (menuChar ? menuChar : ' '), inStr);
sys/mac/mttymain.c:		sprintf (ptr, "%s%s%x%x%x", count ? "/" : "" ,
sys/mac/mttymain.c:		sprintf (ptr, "/%s%x%x%x" ,
sys/mac/mttymain.c:	vsprintf (buf, str, args);
sys/msdos/ovlinit.c:	Sprintf (buf, "Overlay buffer memory allocation: %ld bytes.",
sys/msdos/ovlinit.c:	Sprintf (buf, "_ovrbuffer = %u.", _ovrbuffer); putstr(win, 0, buf);
sys/msdos/ovlinit.c:	Sprintf (buf, "Startup memory usage: 0x%X", ProgramSize);
sys/msdos/ovlinit.c:	Sprintf (buf, "Current memory usage: 0x%X", runAlloc);
sys/msdos/ovlinit.c:	if (emsstatus) Sprintf (buf, "EMS search failed (%d).", emsstatus);
sys/msdos/ovlinit.c:	else Sprintf (buf, "EMS search successful.");
sys/msdos/ovlinit.c:	if (xmsstatus) Sprintf (buf, "XMS search failed (%d).", xmsstatus);
sys/msdos/ovlinit.c:	else Sprintf (buf, "XMS search successful.");
sys/share/lev_yacc.c:			    Sprintf(ebuf,
sys/share/lev_yacc.c:				Sprintf(ebuf,
sys/share/lev_yacc.c:				Sprintf(ebuf,
sys/share/lev_yacc.c:			    Sprintf(ebuf,
sys/share/pcmain.c:	Sprintf(fnamebuf, "%s-%s", get_username(0), plname);
sys/share/pcmain.c:	Sprintf(lock, "%s",encodedfnamebuf);
sys/share/pcmain.c:	(void) Sprintf(buf2,
sys/share/pcmain.c:	(void) Sprintf(buf2,
sys/share/pcsys.c:	Sprintf(buf, "%s%s", path, files);
sys/share/pcsys.c:	       Sprintf(buf, "%s%s", path, foundfile);
sys/share/pcsys.c:	Sprintf(from, "%s%s", frompath, allbones);
sys/share/pcsys.c:			Sprintf(from, "%s%s", frompath, foundfile);
sys/share/pcsys.c:			Sprintf(to, "%s%s", topath, foundfile);
sys/share/pcsys.c:		Sprintf(copy, "%cC copy",switchar());
sys/share/pcsys.c:		Sprintf(to, "%s%s", topath, allbones);
sys/share/pcsys.c:	Sprintf(to, "%s%s", topath, last);
sys/share/pcsys.c:	Sprintf(to, "%s%s", topath, allbones);
sys/share/pcsys.c:		Sprintf(qbuf,"File name (default \"%s\"%s) ?", SAVEF,
sys/share/pcunix.c:	Sprintf(tbuf,"%s",fqname(lock, LEVELPREFIX, 0));
sys/share/pcunix.c:			    Sprintf(eos(oops), "Cannot open %s", fq_lock);
sys/share/tclib.c:/* format a parameterized string, ala sprintf */
sys/share/tclib.c:		(void) sprintf(numbuf, fmt, av[ac++]);
sys/unix/cpp1.shr:X/* extern char	*sprintf();		/* Lint needs this		*/
sys/unix/cpp1.shr:X		    sprintf(tmpname, "%s/%s", *incptr, filename);
sys/unix/cpp1.shr:X		    sprintf(tmpname, "%s%s", *incptr, filename);
sys/unix/cpp2.shr:X	    sprintf(work, "%d", line);
sys/unix/cpp2.shr:X		    sprintf(work, "\"%s\"", (file->progname != NULL)
sys/unix/cpp3.shr:X		sprintf(work, "%s%s", token1, token);
sys/unix/unixmain.c:		sprintf(mac_tmp, "%s%s%s", mac_exe, MAC_PATH_VALUE, mac_exe);
sys/unix/unixmain.c:			Sprintf(lock, "%d%s", (int)getuid(), plname);
sys/unix/unixmain.c:		Sprintf(lock, "%d%s", (int)getuid(), plname);
sys/vms/oldcrtl.c: *	atexit, memcmp, memcpy, qsort, rename, vprintf, vsprintf
sys/vms/oldcrtl.c: * <varargs.h> is available) to avoid the need for vprintf & vsprintf].
sys/vms/vmsmail.c:	Sprintf(cmd_buf, "XYZZY %s@%s", user, node);
sys/vms/vmsmail.c:	Sprintf(txt_buf, "Message from %s@%s:%s", user, node,
sys/vms/vmsmain.c:			Sprintf(lock, "_%u%s", (unsigned)getuid(), plname);
sys/vms/vmsmain.c:		Sprintf(lock, "_%u%s", (unsigned)getuid(), plname);
sys/wince/celib.c:	retval = vsprintf(buf, format, args);
sys/wince/celib.c:	retval = vsprintf(buf, format, args);
sys/wince/mhmenu.c:		sprintf(buf, "%c - %s", max(data->menu.items[i].accelerator, ' '), data->menu.items[i].str );
sys/wince/mhstatus.c:	Sprintf(nb = eos(text)," the ");
sys/wince/mhstatus.c:		Sprintf(nb = eos(nb), mbot);
sys/wince/mhstatus.c:		Sprintf(nb = eos(nb), rank_of(u.ulevel, Role_switch, flags.female));
sys/wince/mhstatus.c:	if( format==NHSTAT_LINES_4 ) Sprintf(nb = eos(nb),"\r\n");
sys/wince/mhstatus.c:		    Sprintf(nb = eos(nb),"St:%2d ",ACURR(A_STR)-100);
sys/wince/mhstatus.c:		    Sprintf(nb = eos(nb), "St:18/%02d ",ACURR(A_STR)-18);
sys/wince/mhstatus.c:		    Sprintf(nb = eos(nb),"St:18/** ");
sys/wince/mhstatus.c:		Sprintf(nb = eos(nb), "St:%-1d ",ACURR(A_STR));
sys/wince/mhstatus.c:	Sprintf(nb = eos(nb),
sys/wince/mhstatus.c:	Sprintf(nb = eos(nb), (u.ualign.type == A_CHAOTIC) ? "  Chaotic" :
sys/wince/mhstatus.c:	    Sprintf(nb = eos(nb), " S:%ld", botl_score());
sys/wince/mhstatus.c:	Sprintf(nb = eos(nb),
sys/wince/mhstatus.c:		Sprintf(nb = eos(nb), " HD:%d", mons[u.umonnum].mlevel);
sys/wince/mhstatus.c:		Sprintf(nb = eos(nb), " Xp:%u/%-1ld", u.ulevel,u.uexp);
sys/wince/mhstatus.c:		Sprintf(nb = eos(nb), " Exp:%u", u.ulevel);
sys/wince/mhstatus.c:	    Sprintf(nb = eos(nb), "T:%ld ", moves);
sys/wince/mhstatus.c:			Sprintf(nb = eos(nb), " ");
sys/wince/mhstatus.c:		Sprintf(nb = eos(nb), " ");
sys/wince/mhstatus.c:	if(Confusion)	   Sprintf(nb = eos(nb), "Conf");
sys/wince/mhstatus.c:			   Sprintf(nb = eos(nb), " FoodPois");
sys/wince/mhstatus.c:			   Sprintf(nb = eos(nb), " Ill");
sys/wince/mhstatus.c:	if(Blind)	   Sprintf(nb = eos(nb), " Blind");
sys/wince/mhstatus.c:	if(Stunned)	   Sprintf(nb = eos(nb), " Stun");
sys/wince/mhstatus.c:	if(Hallucination)  Sprintf(nb = eos(nb), " Hallu");
sys/wince/mhstatus.c:	if(Slimed)         Sprintf(nb = eos(nb), " Slime");
sys/wince/mhstatus.c:		Sprintf(nb = eos(nb), " %s", enc_stat[cap]);
sys/wince/mswproc.c:		Sprintf(pbuf, "Pick a role for your %s", plbuf);
sys/wince/mswproc.c:		    Sprintf(pbuf, "Pick the race of your %s", plbuf);
sys/wince/mswproc.c:		    Sprintf(pbuf, "Pick the gender of your %s", plbuf);
sys/wince/mswproc.c:		    Sprintf(pbuf, "Pick the alignment of your %s", plbuf);
sys/wince/mswproc.c:		sprintf(message, "%s [%s] ", question, choicebuf);
sys/wince/mswproc.c:		if (def) sprintf(eos(message), "(%c) ", def);
sys/wince/winhack.c:	Sprintf(tbuf, "%s", fqname(lock, LEVELPREFIX, 0));
sys/wince/winhack.c:	vsprintf(buf, s, VA_ARGS);
sys/wince/winhack.c:	Sprintf(eos(buf), " %s", portstr);
sys/winnt/nh340key.c:		Sprintf(buf,
sys/winnt/nhdefkey.c:		Sprintf(buf,
sys/winnt/nhraykey.c:		Sprintf(buf,
sys/winnt/nttty.c:		Sprintf(newtitle, "%-55s tty=(%02d,%02d) nttty=(%02d,%02d)",
sys/winnt/nttty.c:	Vsprintf(buf, fmt, VA_ARGS);
sys/winnt/nttty.c:	(void) vsprintf(&buf[1], s, VA_ARGS);
sys/winnt/winnt.c:		(void) vsprintf(&buf[1], s, VA_ARGS);
sys/winnt/winnt.c:		(void) vsprintf(buf, s, VA_ARGS);
util/dlb_main.c:    sprintf(buf,"%3ld %8ld %8ld %8ld %8ld\n",
util/dlb_main.c:    sprintf(buf, ENTRY_FORMAT, ENC_NORMAL, DLB_DIRECTORY, (long) 0);
util/dlb_main.c:	sprintf(buf, ENTRY_FORMAT,
util/lev_comp.y:			    Sprintf(ebuf,
util/lev_comp.y:				Sprintf(ebuf,
util/lev_comp.y:				Sprintf(ebuf,
util/lev_comp.y:			    Sprintf(ebuf,
util/lev_main.c:	Sprintf(ebuf, "Bad god name \"%s\"", s);
util/lev_main.c:		      Sprintf(msg,
util/lev_main.c:	    Sprintf(msg, "Map too large! (max %d x %d)", MAP_X_LIM, MAP_Y_LIM);
util/lev_main.c:		    Sprintf(msg,
util/lev_main.c:			    Sprintf(msg,
util/lev_main.c:	Sprintf(ebuf, "%s placed in wall at (%02d,%02d)?!", str, x, y);
util/makedefs.c:	Sprintf(eos(filename), DATA_TEMPLATE, RUMOR_FILE);
util/makedefs.c:	Sprintf(infile, DATA_IN_TEMPLATE, RUMOR_FILE);
util/makedefs.c:	Sprintf(infile, DATA_IN_TEMPLATE, RUMOR_FILE);
util/makedefs.c:    Sprintf(outbuf, "%d.%d.%d", VERSION_MAJOR, VERSION_MINOR, PATCHLEVEL);
util/makedefs.c:    Sprintf(eos(outbuf), "-%d", EDITLEVEL);
util/makedefs.c:        Sprintf(outbuf, "SlashDNH v%s (SlashDNH git %s), last build %s.",
util/makedefs.c:        Sprintf(outbuf, "SlashDNH v%s (SlashDNH), last build %s.",
util/makedefs.c:		Sprintf(eos(filename), INCLUDE_TEMPLATE, DATE_FILE);
util/makedefs.c:		Sprintf(eos(filename), INCLUDE_TEMPLATE, VERINFO_FILE);
util/makedefs.c:	Sprintf(eos(save_bones_compat_buf), "s %lu.%lu.%lu through %d.%d.%d",
util/makedefs.c:	Sprintf(eos(save_bones_compat_buf), " %d.%d.%d only",
util/makedefs.c:	Sprintf(eos(filename), DATA_TEMPLATE, OPTIONS_FILE);
util/makedefs.c:	Sprintf(tempfile, DATA_TEMPLATE, "database.tmp");
util/makedefs.c:	Sprintf(eos(filename), DATA_TEMPLATE, DATA_FILE);
util/makedefs.c:	Sprintf(infile, DATA_IN_TEMPLATE, DATA_FILE);
util/makedefs.c:	Sprintf(in_line, "rewind of \"%s\"", tempfile);
util/makedefs.c:	Sprintf(in_line, "rewind of \"%s\"", filename);
util/makedefs.c:	   Sprintf(in_line, "header rewrite of \"%s\"", filename);
util/makedefs.c:	Sprintf(tempfile, DATA_TEMPLATE, "oracles.tmp");
util/makedefs.c:	Sprintf(eos(filename), DATA_TEMPLATE, ORACLE_FILE);
util/makedefs.c:	Sprintf(infile, DATA_IN_TEMPLATE, ORACLE_FILE);
util/makedefs.c:	Sprintf(in_line, "rewind of \"%s\"", tempfile);
util/makedefs.c:	Sprintf(in_line, "rewind of \"%s\"", filename);
util/makedefs.c:	    Sprintf(in_line, "header rewrite of \"%s\"", filename);
util/makedefs.c:	    Sprintf(in_line, "data rewrite of \"%s\"", filename);
util/makedefs.c:		Sprintf(filename, DATA_IN_TEMPLATE, DGN_I_FILES[i]);
util/makedefs.c:		Sprintf(eos(filename), DGN_TEMPLATE, DGN_O_FILES[i]);
util/makedefs.c:    Sprintf(eos(filename), SOURCE_TEMPLATE, MON_STR_C);
util/makedefs.c:	Sprintf(eos(filename), INCLUDE_TEMPLATE, MONST_FILE);
util/makedefs.c:	Sprintf(eos(filename), INCLUDE_TEMPLATE, GODS_FILE);
util/makedefs.c:	Sprintf(filename, DATA_IN_TEMPLATE, QTXT_I_FILE);
util/makedefs.c:	Sprintf(eos(filename), DATA_TEMPLATE, QTXT_O_FILE);
util/makedefs.c:	Sprintf(eos(filename), INCLUDE_TEMPLATE, ONAME_FILE);
util/makedefs.c:    Sprintf(filename, INCLUDE_TEMPLATE, VIS_TAB_H);
util/makedefs.c:    Sprintf(filename, SOURCE_TEMPLATE, VIS_TAB_C);
util/makedefs.c:	Sprintf(filename, INCLUDE_TEMPLATE, VIS_TAB_H);
util/lev_yacc.c:			    Sprintf(ebuf,
util/lev_yacc.c:				Sprintf(ebuf,
util/lev_yacc.c:				Sprintf(ebuf,
util/lev_yacc.c:			    Sprintf(ebuf,
win/Qt/qt_win.cpp:    msg.sprintf(
win/Qt/qt_win.cpp:	Sprintf(buf,"%s%s",t,tail);
win/Qt/qt_win.cpp:	Sprintf(buf,"%s%ld%s",t,v,tail);
win/Qt/qt_win.cpp:	msg.sprintf("Cannot load \"%s\"", fn);
win/Qt/qt_win.cpp:	Sprintf(buf,"STR:%d",ACURR(A_STR)-100);
win/Qt/qt_win.cpp:	Sprintf(buf,"STR:18/**");
win/Qt/qt_win.cpp:	Sprintf(buf,"STR:18/%02d",ACURR(A_STR)-18);
win/Qt/qt_win.cpp:	Sprintf(buf,"STR:%d",ACURR(A_STR));
win/Qt/qt_win.cpp:	Sprintf(buf, "%s, level ", dungeons[u.uz.dnum].dname);
win/Qt/qt_win.cpp:	Sprintf(buf, "/%d", u.mhmax);
win/Qt/qt_win.cpp:	Sprintf(buf, "/%d", u.uhpmax);
win/Qt/qt_win.cpp:    Sprintf(buf, "/%d", u.uenmax);
win/Qt/qt_win.cpp:		text.sprintf("%d",i.count);
win/Qt/qt_win.cpp:		Sprintf(buf,"%d", item[row].count);
win/Qt/qt_win.cpp:    Sprintf(rip_line[NAME_LINE], "%s", plname);
win/Qt/qt_win.cpp:    Sprintf(rip_line[GOLD_LINE], "%ld Au", u.ugold);
win/Qt/qt_win.cpp:    Sprintf(rip_line[GOLD_LINE], "%ld Au", done_money);
win/Qt/qt_win.cpp:    Sprintf(rip_line[YEAR_LINE], "%4d", getyear());
win/Qt/qt_win.cpp:	    msg.sprintf("Cannot load x11tiles or nhtiles.bmp");
win/Qt/qt_win.cpp:	message.sprintf("File not found: %s\n",filename);
win/Qt/qt_win.cpp:	    Sprintf(message, "%s [%s] ", question, choicebuf);
win/Qt/qt_win.cpp:	    if (def) Sprintf(eos(message), "(%c) ", def);
win/X11/winX.c:	Sprintf(buf, "%s [%s] ", ques, choicebuf);
win/X11/winX.c:	if (def) Sprintf(eos(buf), "(%c) ", def);
win/X11/winmap.c:	Sprintf(buf, "Failed to load %s", filename);
win/X11/winmap.c:	Sprintf(buf, "Insufficient colors available to load %s.",
win/X11/winmap.c:	    Sprintf(buf, "Insufficient colors available to load %s.",
win/X11/winmap.c:	    Sprintf(buf, "Failed to load %s: %s", appResources.tile_file,
win/X11/winmap.c:	Sprintf(buf,
win/X11/winmap.c:	Sprintf(buf, "Wrong tile file version, expected 2, got %lu",
win/X11/winmap.c:	    Sprintf(buf, "%dth out of %ld color allocation failed",
win/X11/winmap.c:	Sprintf(buf, "tile file incomplete, expecting %d tiles, found %lu",
win/X11/winmenu.c:	Sprintf(buf, "%c - ", ch ? ch : ' ');
win/X11/winmisc.c:	Sprintf(qbuf, "Choose your %s Role", s_suffix(plbuf));
win/X11/winmisc.c:	    Sprintf(qbuf, "Pick your %s race", s_suffix(plbuf));
win/X11/winmisc.c:	    Sprintf(qbuf, "Your %s gender?", s_suffix(plbuf));
win/X11/winmisc.c:	    Sprintf(qbuf, "Your %s alignment?", s_suffix(plbuf));
win/X11/winstat.c:		Sprintf(eos(buf), ", level %d", depth(&u.uz));
win/X11/winstat.c:		    Sprintf(buf,"%ld", new_value-100);
win/X11/winstat.c:		    Sprintf(buf, "18/%02ld", new_value-18);
win/X11/winstat.c:		Sprintf(buf, "%ld", new_value);
win/X11/winstat.c:	    Sprintf(buf, "%ld", new_value);
win/X11/wintext.c:	Sprintf(rip_line[NAME_LINE], "%s", plname);
win/X11/wintext.c:	Sprintf(rip_line[GOLD_LINE], "%ld Au",
win/X11/wintext.c:	Sprintf(rip_line[YEAR_LINE], "%4d", getyear());
win/X11/wintext.c:	    Sprintf(buf, "Failed to load %s: %s", appResources.tombstone,
win/curses/cursmain.c:    sprintf(window_title, "%s %s", DEF_GAME_NAME, VERSION_STRING);
win/curses/cursmain.c:    sprintf(window_title, "%s", DEF_GAME_NAME);
win/curses/cursmain.c:    sprintf(window_title, "%s %s", "NetHack", VERSION_STRING);
win/curses/cursmain.c:    sprintf(window_title, "%s", "NetHack");
win/curses/cursstat.c:        sprintf(buf, "%*d / %-*d", len, cur, len, max);
win/curses/cursstat.c:    sprintf(buf, "%s the %s", plname, rank);
win/curses/cursstat.c:    sprintf(buf, "%-*s the %-*s", namelen, plname, ranklen, rank);
win/curses/cursinit.c:    sprintf(choice, "%s%c", tmpchoice, '\033');
win/gem/wingem.c:				Sprintf(pbuf, "Pick the race of your %s",
win/gem/wingem.c:				Sprintf(pbuf, "Pick the gender of your %s %s",
win/gem/wingem.c:				Sprintf(pbuf, "Pick the alignment of your %s %s %s",
win/gem/wingem.c:		Sprintf(buf, "%c - %s", ch ? ch : '?', str);
win/gem/wingem.c:		Sprintf(buf, "%s", str);
win/gem/wingem.c:	Sprintf(rip_line[NAME_LINE], "%s", plname);
win/gem/wingem.c:	Sprintf(rip_line[GOLD_LINE], "%ld Au",
win/gem/wingem.c:	Sprintf(rip_line[YEAR_LINE], "%4d", getyear());
win/gem/wingem1.c:		sprintf(buf,"%s","[1][ Image Header | corrupt. ][ Oops ]");
win/gem/wingem1.c:		sprintf(buf,"%s","[1][ Not enough | memory for | an image. ][ Oops ]");
win/gem/wingem1.c:		sprintf(buf,"%s","[1][ The Image-file | is not available ][ Oops ]");
win/gem/wingem1.c:		sprintf(buf,"%s","[1][ The Image-file | is corrupt ][ Oops ]");
win/gem/wingem1.c:		sprintf(buf,"%s","[1][ Number of colors | not supported ][ Oops ]");
win/gem/wingem1.c:		sprintf(buf,"[1][ img_error | strange error | number: %i ][ Hmm ]",errnumber);
win/gem/wingem1.c:	sprintf(buf,"!%s",str);
win/gnome/gnbind.c:            sprintf(message, "Warning! Could not find file: %s\n",filename);
win/gnome/gnbind.c:	sprintf(message, "%s [%s] ", question, choicebuf);
win/gnome/gnbind.c:	if (def) sprintf(eos(message), "(%c) ", def);
win/gnome/gnbind.c:    Sprintf(buf, "%s\n", plname);
win/gnome/gnbind.c:    Sprintf(buf, "%ld Au\n",
win/gnome/gnbind.c:    Sprintf(buf, "%4d\n", getyear());
win/gnome/gnopts.c:	    sprintf( accelBuf, "%c ", tolower(tilesets[i][0]));
win/gnome/gnplayer.c:	    sprintf( accelBuf, "%c ", tolower(choices[i][0]));
win/gnome/gnstatus.c:        sprintf(buf, "%s, level %d", dungeons[u.uz.dnum].dname, depth(&u.uz));
win/gnome/gnstatus.c:        sprintf(buf,"STR:%d",ACURR(A_STR)-100);
win/gnome/gnstatus.c:        sprintf(buf,"STR:18/**");
win/gnome/gnstatus.c:        sprintf(buf,"STR:18/%02d",ACURR(A_STR)-18);
win/gnome/gnstatus.c:        sprintf(buf,"STR:%d",ACURR(A_STR));
win/gnome/gnstatus.c:    sprintf(buf,"INT:%d",ACURR(A_INT));
win/gnome/gnstatus.c:    sprintf(buf,"WIS:%d",ACURR(A_WIS));
win/gnome/gnstatus.c:    sprintf(buf,"DEX:%d",ACURR(A_DEX));
win/gnome/gnstatus.c:    sprintf(buf,"CON:%d",ACURR(A_CON));
win/gnome/gnstatus.c:    sprintf(buf,"CHA:%d",ACURR(A_CHA));
win/gnome/gnstatus.c:    sprintf(buf,"Au:%ld", u.ugold);
win/gnome/gnstatus.c:    sprintf(buf,"Au:%ld", umoney);
win/gnome/gnstatus.c:	sprintf(buf,"HP:%d/%d", ( (u.mh  > 0)? u.mh  : 0), u.mhmax);
win/gnome/gnstatus.c:	sprintf(buf,"HP:%d/%d", ( (u.uhp  > 0)? u.uhp  : 0), u.uhpmax);
win/gnome/gnstatus.c:	sprintf(buf,"HD:%d", mons[u.umonnum].mlevel);
win/gnome/gnstatus.c:	sprintf(buf,"Level:%d", u.ulevel);
win/gnome/gnstatus.c:    sprintf(buf,"Power:%d/%d", u.uen, u.uenmax);
win/gnome/gnstatus.c:    sprintf(buf,"AC:%d", (u.uac + u.ustdy));
win/gnome/gnstatus.c:    sprintf(buf,"DR:%d", (u.udr - u.ustdy));
win/gnome/gnstatus.c:	sprintf(buf,"Exp:%ld", u.uexp);
win/gnome/gnstatus.c:	sprintf(buf,"Time:%ld", moves);
win/gnome/gnstatus.c:	sprintf(buf,"Score:%ld", botl_score());
win/gnome/gnyesno.c:		sprintf( button_name, GNOME_STOCK_BUTTON_YES);
win/gnome/gnyesno.c:		sprintf( button_name, GNOME_STOCK_BUTTON_NO);
win/gnome/gnyesno.c:	        sprintf( button_name, "Quit");
win/gnome/gnyesno.c:		sprintf( button_name, "%c", choices[i]);
win/share/gifread.c:		Sprintf(buf, "UNKNOWN (0x%02x)", label);
win/share/thintile.c:	Sprintf(comment,"# tile %d (%s)", i, buf);
win/share/tilemap.c:			Sprintf(buf, "%s / %s",
win/share/tilemap.c:					    Sprintf(buf, "sink");
win/share/tilemap.c:					    Sprintf(buf, "cmap %d", tilenum);
win/share/tilemap.c:		Sprintf(buf, "explosion %s %d",
win/share/tilemap.c:			Sprintf(buf, "zap %d %d", i/4, i%4);
win/share/tilemap.c:			Sprintf(buf, "warning %d", i);
win/share/tilemap.c:		    Sprintf(buf, "sub %s %d", substitutes[i].sub_name, j);
win/share/tilemap.c:	Sprintf(buf, "unknown %d %d", set, entry);
win/share/tilemap.c:    Sprintf(filename, SOURCE_TEMPLATE, TILE_FILE);
win/tty/getline.c:		Sprintf(toplines, "%s ", query);
win/tty/termcap.c:#define tgoto(fmt, x, y)	(Sprintf(tgotobuf, fmt, y+' ', x+' '), tgotobuf)
win/tty/termcap.c:#define tgoto(fmt, x, y)	(Sprintf(tgotobuf, fmt, y+1, x+1), tgotobuf)
win/tty/termcap.c:			Sprintf(hilites[i|BRIGHT], "\033[1;3%dm", i);
win/tty/termcap.c:				Sprintf(hilites[i], "\033[0;3%dm", i);
win/tty/termcap.c:	    Sprintf(hilites[c|BRIGHT], "\033[1;3%dm", c);
win/tty/termcap.c:		    Sprintf(hilites[c], "\033[0;3%dm", c);
win/tty/termcap.c:			Sprintf(foo, "\033b%c", (c&~BRIGHT)+'0');
win/tty/termcap.c:		sprintf(hilites[CLR_BROWN], "\033b%c", (CLR_BROWN^BRIGHT)+'0');
win/tty/termcap.c:		sprintf(hilites[CLR_GREEN], "\033b%c", (CLR_GREEN^BRIGHT)+'0');
win/tty/termcap.c:		    Sprintf(hilites[c], "\033[%d", !!(c & BRIGHT));
win/tty/termcap.c:			Sprintf(eos(hilites[c]), ";3%d", c & ~BRIGHT);
win/tty/termcap.c:			Sprintf(eos(hilites[c]), ";4%d", backg & ~BRIGHT);
win/tty/termcap.c:	Sprintf(tmp, "\033[%dm", ((color % 8) + 40));
win/tty/topl.c:	    Sprintf(prompt, "%s [%s] ", query, respbuf);
win/tty/topl.c:	    if (def) Sprintf(eos(prompt), "(%c) ", def);
win/tty/topl.c:		Sprintf(rtmp, "%c", q);
win/tty/wintty.c:		Sprintf(pbuf, "Pick a role for your %s", plbuf);
win/tty/wintty.c:		    Sprintf(pbuf, "Pick the race of your %s", plbuf);
win/tty/wintty.c:		    Sprintf(pbuf, "Pick the gender of your %s", plbuf);
win/tty/wintty.c:		    Sprintf(pbuf, "Pick the alignment of your %s", plbuf);
win/tty/wintty.c:		Sprintf(cw->morestr, "(%d of %d)",
win/tty/wintty.c:	Sprintf(buf, "(%ld of %ld) ", cw->npages, cw->npages);
win/win32/mhmenu.c:		sprintf(buf, "%c - %s", max(data->menu.items[i].accelerator, ' '), data->menu.items[i].str );
win/win32/mhsplash.c:	Sprintf(buf, "%s\r\n%s\r\n%s\r\n\r\n", COPYRIGHT_BANNER_A, COPYRIGHT_BANNER_B,
win/win32/mhsplash.c:		Sprintf (VersionString, "%d.%d.%d", VERSION_MAJOR, VERSION_MINOR,
win/win32/mswproc.c:		Sprintf(pbuf, "Pick a role for your %s", plbuf);
win/win32/mswproc.c:		    Sprintf(pbuf, "Pick the race of your %s", plbuf);
win/win32/mswproc.c:		    Sprintf(pbuf, "Pick the gender of your %s", plbuf);
win/win32/mswproc.c:		    Sprintf(pbuf, "Pick the alignment of your %s", plbuf);
win/win32/mswproc.c:		sprintf(message, "%s [%s] ", question, choicebuf);
win/win32/mswproc.c:		if (def) sprintf(eos(message), "(%c) ", def);
win/win32/mswproc.c:	Sprintf(buf, "%s", plname);
win/win32/mswproc.c:	Sprintf(buf, "%ld Au", u.ugold);
win/win32/mswproc.c:	Sprintf(buf, "%ld Au", done_money);
win/win32/mswproc.c:	Sprintf(buf, "%4d", getyear());
win/win32/mswproc.c:    sprintf(keystring, "%s\\%s\\%s\\%s", 
win/win32/mswproc.c:        sprintf(keystring, "%s\\%s\\%s\\%s", 
win/win32/mswproc.c:    sprintf(keystring, "%s\\%s\\%s\\%s", 
win/win32/mswproc.c:    sprintf(keystring, "%s\\%s\\%s", 
win/win32/mswproc.c:    sprintf(keystring, "%s\\%s", CATEGORYKEY, COMPANYKEY);
win/win32/winhack.c:        Sprintf(buf, "Cannot load common control library.\n%s\n%s",
win/win32/winhack.c:        Sprintf(buf, "Common control library is outdated.\n%s %d.%d\n%s\n%s",
