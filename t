src/allmain.c:		impossible("Bad alignment initializer detected and fixed. Save and reload.");
src/allmain.c:		impossible("Bad alignment initializer detected and fixed. Save and reload.");
src/allmain.c:		impossible("Bad alignment initializer detected and fixed. Save and reload.");
src/allmain.c:		&& (artilist[i].alignment == A_NONE
src/allmain.c:			|| artilist[i].alignment == u.ualign.type)
src/allmain.c:     * even when polymorphed or wearing a helm of opposite alignment.
src/allmain.c:     * Alignment is shown unconditionally for new games; for restores
src/allmain.c:		Sprintf(pbuf,"Number\tName\tclass\taverage\tmax\tper-hit avg\tper-hit max\tspeed\talignment\tunique?\n");
src/alloc.c: *	"possible pointer alignment problem" for (long *) malloc()
src/apply.c:	/* listening to eggs is a little fishy, but so is stethoscopes detecting alignment
src/apply.c:			   lose pacifism, take alignment and luck hit, make
src/artifact.c:									//the odds of getting a sac gift.  These are the alignment keys and a few
src/artifact.c:	/* Fix up the alignments of "gift" artifacts */
src/artifact.c:	    		&& (art->alignment != A_NONE || Role_if(PM_BARD))
src/artifact.c:			art->alignment = alignmnt;
src/artifact.c:		artilist[ART_CRESCENT_BLADE].alignment = A_NONE;
src/artifact.c:		artilist[ART_LIFEHUNT_SCYTHE].alignment = alignmnt;
src/artifact.c:	case HELM_OF_OPPOSITE_ALIGNMENT:
src/artifact.c:		obj_descr[HELM_OF_OPPOSITE_ALIGNMENT].oc_name = "tiara of treachery";
src/artifact.c:			artilist[ART_HELM_OF_THE_DARK_LORD].alignment = alignmnt;
src/artifact.c:			artilist[ART_CROWN_OF_THE_SAINT_KING].alignment = alignmnt;
src/artifact.c:	    artilist[ART_GRANDMASTER_S_ROBE].alignment = alignmnt;
src/artifact.c:	    artilist[ART_ROBE_OF_THE_ARCHMAGI].alignment = A_CHAOTIC;
src/artifact.c:	    artilist[urole.questarti].alignment = alignmnt;
src/artifact.c:	if(aligns[flags.initalign].value == artilist[ART_CARNWENNAN].alignment){
src/artifact.c:	artilist[ART_PEN_OF_THE_VOID].alignment = A_VOID; //something changes this??? Change it back.
src/artifact.c:struct obj *otmp;	/* existing object; NOT ignored even if alignment specified */
src/artifact.c:	a->alignment = rn2(3) ? A_NONE : !rn2(3) ? A_LAWFUL : !rn2(2) ? A_NEUTRAL : A_CHAOTIC;
src/artifact.c:		if (!rn2(20) && a->alignment != A_LAWFUL)
src/artifact.c:		if (!rn2(40) && a->alignment == A_LAWFUL)
src/artifact.c:		if (!rn2(60) && a->alignment != A_LAWFUL)
src/artifact.c:   Make an artifact.  If a specific alignment is specified, then an object of
src/artifact.c:   the appropriate alignment is created from scratch, or 0 is returned if
src/artifact.c:   If no alignment is given, then 'otmp' is converted
src/artifact.c:   for the 1st, ``obj = mk_artifact((struct obj *)0, some_alignment);''.
src/artifact.c:mk_artifact(otmp, alignment)
src/artifact.c:struct obj *otmp;	/* existing object; ignored if alignment specified */
src/artifact.c:aligntyp alignment;	/* target alignment, or A_NONE */
src/artifact.c:	boolean by_align = (alignment != A_NONE);
src/artifact.c:		arti = select_gift_artifact(alignment);
src/artifact.c:select_gift_artifact(alignment)
src/artifact.c:aligntyp alignment;
src/artifact.c:			/* try to get a role-specific first (second, third, etc.) gift -- overrides alignment, artg_gift considerations */
src/artifact.c:				skip_if(!u.ugifts && a->alignment != alignment);
src/artifact.c:			skip_if(a->alignment != A_NONE && a->alignment != alignment);
src/artifact.c:			badalign = !(oart->gflags & ARTG_NAME) && oart->alignment != A_NONE &&
src/artifact.c:			   (oart->alignment == -1*u.ualign.type); //Unicorn horns blast OPOSITE alignment alignment -D_E
src/artifact.c:			badalign = !(oart->gflags & ARTG_NAME) && oart->alignment != A_NONE &&
src/artifact.c:			   ((oart->alignment != u.ualign.type && obj->otyp != HELM_OF_OPPOSITE_ALIGNMENT) || u.ualign.record < 0);
src/artifact.c:				badalign = !(oart->gflags & ARTG_NAME) && oart->alignment != A_NONE &&
src/artifact.c:				   (oart->alignment != sgn(EPRI(mon)->shralign));
src/artifact.c:				badalign = !(oart->gflags & ARTG_NAME) && oart->alignment != A_NONE &&
src/artifact.c:				   (oart->alignment != sgn(EMIN(mon)->min_align));
src/artifact.c:				badalign = !(oart->gflags & ARTG_NAME) && oart->alignment != A_NONE &&
src/artifact.c:				   (oart->alignment != sgn(mon->data->maligntyp));
src/artifact.c:				badalign = oart->alignment != A_NONE && (oart->alignment != sgn(EPRI(mon)->shralign));
src/artifact.c:				badalign = oart->alignment != A_NONE && (oart->alignment != sgn(EMIN(mon)->min_align));
src/artifact.c:				badalign = oart->alignment != A_NONE && (oart->alignment != sgn(mon->data->maligntyp));
src/artifact.c:       bad for them even if their alignments happen to match */
src/artifact.c:		if(u.specialSealsActive&SEAL_ALIGNMENT_THING){
src/artifact.c:		else if(oart->alignment == A_LAWFUL && (u.specialSealsActive&SEAL_COSMOS || u.specialSealsActive&SEAL_LIVING_CRYSTAL || u.specialSealsActive&SEAL_TWO_TREES)){
src/artifact.c:		else if(oart->alignment == A_CHAOTIC && u.specialSealsActive&SEAL_MISKA){
src/artifact.c:		else if(oart->alignment == A_NEUTRAL && u.specialSealsActive&SEAL_NUDZIRATH){
src/artifact.c:		/* alignment */
src/artifact.c:		if (weap->aflags & ARTA_CROSSA && (youdef ? (u.ualign.type != weap->alignment) :
src/artifact.c:			sgn(ptr->maligntyp) != weap->alignment))
src/artifact.c:		align_str(artilist[m].alignment), simple_typename(otyp));
src/artifact.c:	} else if (u.specialSealsActive&SEAL_ALIGNMENT_THING){
src/artifact.c:	else if (u.specialSealsActive&SEAL_ALIGNMENT_THING) {
src/artifact.c:						/* The player wears a helm of opposite alignment? */
src/artifact.c:						if (uarmh && uarmh->otyp == HELM_OF_OPPOSITE_ALIGNMENT)
src/artifact.c:struct obj *otmp;	/* existing object; ignored if alignment specified */
src/artifact.c:char *name;	/* target alignment, or A_NONE */
src/attrib.c:	    /* Initialize alignment stuff */
src/attrib.c:/* avoid possible problems with alignment overflow, and provide a centralized
src/attrib.c: * location for any future alignment limits
src/botl.c:		 	Is_nearvoid(&u.uz)?"The Gate ":Is_nearvoid2(&u.uz)?"The Near Void ":Is_alignvoid(&u.uz)?"The Alignment Void ":Is_farvoid(&u.uz)?"The Far Void ":Is_ilsensine(&u.uz)?"The Lost Void ":"??? ");
src/crown.c:	/* Noble (human, vampire, incant). Vampires always get Dark Lord regardless of alignment */
src/crown.c:	/* Pirate -- all alignments are identical */
src/crown.c:	/* Valkyrie -- female by-role-valkyries of all alignments get Skadi instead of their normal god */
src/crown.c:	/* Dwarf Knight -- all alignments */
src/crown.c:	/* Dwarf Noble -- all alignments */
src/crown.c:				impossible("Player alignment is %d?", u.ualign.type);
src/crown.c:	/* enhance weapon regardless of alignment or artifact status */
src/do.c:			u.ualign.god = u.ugodbase[UGOD_CURRENT] = u.ugodbase[UGOD_ORIGINAL] = align_to_god(u.ualign.type); // Re set the starting alignment based on Traitor
src/do_wear.c:	case HELM_OF_OPPOSITE_ALIGNMENT:
src/do_wear.c:			/* forcibly sets your god to that alignments' in the pantheon */
src/do_wear.c:		flags.botl = 1;		/* reveal new alignment or INT & WIS */
src/do_wear.c:		    makeknown(HELM_OF_OPPOSITE_ALIGNMENT);
src/do_wear.c:	case HELM_OF_OPPOSITE_ALIGNMENT:
src/do_wear.c:	if (otmp->otyp == HELM_OF_OPPOSITE_ALIGNMENT &&
src/dog.c:	set_malign(mtmp); /* recalc alignment now that it's tamed */
src/dog.c:	set_malign(mtmp); /* more alignment changes */
src/dungeon.c: * pct/100 of the time, returns the alignment of the current level / branch
src/dungeon.c:				/* altar and temple alignment handled below */
src/end.c:get_alignment_code()
src/end.c:	return "Naa"; //Not An Alignment
src/end.c:get_alignment_adj()
src/end.c:	return "Not applicable"; //Not An Alignment
src/end.c:                        get_alignment_adj(),
src/engrave.c:	"the Alignment Thing", /* 38 */
src/engrave.c:	"the Alignment Thing", /* 38 */
src/enlighten.c:	/* Starting alignment */
src/enlighten.c:	Sprintf(buf, fmtstr, "alignment", align_str(galign(u.ugodbase[UGOD_ORIGINAL])));
src/enlighten.c:	/* Current alignment */
src/enlighten.c:	Sprintf(buf, fmtstr, "alignment", align_str(u.ualign.type));
src/enlighten.c:		enl_msg("Your alignment ", "is", "was", buf);
src/enlighten.c:		enl_msg("Your max alignment ", "is", "was", buf);
src/enlighten.c:		if(!u.spirit[ALIGN_SPIRIT] && u.specialSealsKnown&(SEAL_COSMOS|SEAL_LIVING_CRYSTAL|SEAL_TWO_TREES|SEAL_MISKA|SEAL_NUDZIRATH|SEAL_ALIGNMENT_THING|SEAL_UNKNOWN_GOD)){
src/enlighten.c:		if(numFound < numBound && u.specialSealsActive&SEAL_ALIGNMENT_THING){
src/enlighten.c:			Strcat(buf, sealName((ALIGNMENT_THING) - (FIRST_SEAL)));
src/enlighten.c:	/* only show alignment spirits if you know any */
src/enlighten.c:			SEAL_ALIGNMENT_THING |
src/enlighten.c:		putstr(en_win, 0, "Alignment Spirit");
src/enlighten.c:	if(u.specialSealsActive&SEAL_ALIGNMENT_THING){
src/enlighten.c:	if(u.specialSealsActive&SEAL_ALIGNMENT_THING){
src/files.c:	  get_alignment_code(),
src/files.c:		     get_alignment_code(),
src/invent.c:				!(u.specialSealsKnown&SEAL_ALIGNMENT_THING)
src/invent.c:			u.specialSealsKnown |= SEAL_ALIGNMENT_THING;
src/invent.c:			(artilist[(int)(otmp)->oartifact].alignment == A_NONE)
src/invent.c:			(artilist[(int)(otmp)->oartifact].alignment == u.ualign.type && u.ualign.record > 0)
src/invent.c:			/* alignment damage properties */
src/invent.c:	if (otyp == HELM_OF_OPPOSITE_ALIGNMENT)	OBJPUTSTR("Forces an alignment change.");
src/makemon.c:				/* if auton was going to be peaceful but you killed Axus, make it hostile and worth negative alignment */
src/makemon.c:			otmp = mksobj(find_gcirclet() == HELM_OF_OPPOSITE_ALIGNMENT ? HELM_OF_BRILLIANCE : find_gcirclet(), mkobjflags|MKOBJ_NOINIT);
src/makemon.c:			otmp = mksobj(find_gcirclet() == HELM_OF_OPPOSITE_ALIGNMENT ? HELM_OF_BRILLIANCE : find_gcirclet(), mkobjflags|MKOBJ_NOINIT);
src/makemon.c:			else if(mndx == PM_THE_ALIGNMENT_THING){
src/makemon.c: *	comparing the dungeon alignment and monster alignment.
src/makemon.c:conflicting_unaligned_alignment(gnum, ptr)
src/makemon.c: *	Alignment vs. yours determines monster's attitude to you.
src/makemon.c:		* it will make autons hostile AND penalize alignment as though they had been generated peaceful */
src/makemon.c:	/* the monster is hostile if its alignment is different from the
src/makemon.c:	 * Normal: Done by comparing the signs on the alignments.
src/makemon.c:		if(conflicting_unaligned_alignment(u.ualign.god, ptr))
src/makemon.c:/* Set malign to have the proper effect on player alignment if monster is
src/makemon.c:		/* some monsters have individual alignments; check them */
src/makemon.c:		/* unless alignment is none, set mal to -5,0,5 */
src/mcastu.c:				aligntyp alignment;
src/mcastu.c:					alignment = EMIN(magr)->min_align;
src/mcastu.c:					alignment = EPRI(magr)->shralign;
src/mcastu.c:					alignment = sgn(magr->data->maligntyp);
src/mcastu.c:					gnum = align_to_god(alignment);
src/mcastu.c:				EMIN(mtmp)->min_align = alignment;
src/minion.c:				/* alignment should match the summoner */
src/minion.c:	aligntyp alignment = galign(godnum);
src/minion.c:			EMIN(mon)->min_align = alignment;
src/minion.c:summon_minion(alignment, talk, devils, angels)
src/minion.c:aligntyp alignment;
src/minion.c:    switch ((int)alignment) {
src/minion.c:	    mtyp = devils ? ndemon(alignment) : lminion();
src/minion.c:	    mtyp = angels ? cminion() : ndemon(alignment);
src/minion.c:	    mtyp = angels ? PM_FALLEN_ANGEL : ndemon(alignment);
src/minion.c:		pline("Odd alignment in minion summoning: %d",(int)alignment);
src/minion.c:			EMIN(mon)->min_align = alignment;
src/minion.c:			EMIN(mon)->godnum = align_to_god(alignment);
src/minion.c:			pline_The("voice of %s booms:", align_gname(alignment));
src/mklev.c:/* lint complains about possible pointer alignment problems, but we know
src/mklev.c:add_altar(x, y, alignment, shrine, godnum)
src/mklev.c:aligntyp alignment;
src/mklev.c:	altars[altarindex].align = alignment;
src/mkmaze.c:	/* ALIGNMENT QUESTS */
src/mkobj.c:				otmp->otyp == HELM_OF_OPPOSITE_ALIGNMENT ||
src/mkroom.c:	aligntyp alignment;
src/mkroom.c:		alignment = A_NONE;	/* in gehennom, all altars are to moloch */
src/mkroom.c:		alignment = induced_align(80);
src/mkroom.c:	add_altar(shrine_spot->x, shrine_spot->y, alignment, TRUE, align_to_god(alignment));
src/mon.c:	 * their alignment if the monster takes something they need
src/mon.c:					pline("The alignment void's balance falls apart and waves rush in!");
src/mon.c:	/* adjust alignment points */
src/mondata.c:		horror->maligntyp = d(2, 9) - 10;			/* any alignment */
src/monst.c:    MON("The Alignment Thing", S_DEMON,
src/monst.c: * alignment quest allies and foes
src/monst.c: * alignment quest nemeses
src/monstr.c:/* The Alignment Thing */47,
src/o_init.c:	case HELM_OF_OPPOSITE_ALIGNMENT:
src/o_init.c:		obj_descr[HELM_OF_OPPOSITE_ALIGNMENT].oc_name = "tiara of treachery";
src/objects.c:HELM(("helm of opposite alignment", "crested helmet"), /* tiara of treachery */
src/objnam.c:	{ "helm of opposite alignment", HELM_OF_OPPOSITE_ALIGNMENT },
src/objnam.c:	{ "tiara of treachery", HELM_OF_OPPOSITE_ALIGNMENT },
src/objnam.c:			// (otmp->oartifact >= ART_ROD_OF_SEVEN_PARTS && otmp->oartifact <= ART_SILVER_KEY) || //no wishing for alignment quest artifacts
src/options.c:	{ "align",    "your starting alignment (lawful, neutral, or chaotic)",
src/options.c:	{ "align_message", "message window alignment", 20, DISP_IN_GAME }, 	/*WC*/
src/options.c:	{ "align_status", "status window alignment", 20, DISP_IN_GAME }, 	/*WC*/
src/pager.c:	case AD_ALIG: return "alignment blast and opposite alignment";
src/pager.c:	case AD_SPIR: return "releases other alignment spirits";
src/pager.c:			sprintf(temp_buf, "Base level = %d. Difficulty = %d. AC = %d. DR = %d. MR = %d. Alignment %d. ",
src/pline.c:const char * const hallu_alignments[] = {
src/pline.c:align_str(alignment)
src/pline.c:    aligntyp alignment;
src/pline.c:		return hallu_alignments[rn2(SIZE(hallu_alignments))];
src/pline.c:		switch ((int)alignment) {
src/pline.c:		switch ((int)alignment) {
src/pline.c:		switch ((int)alignment) {
src/pline.c:align_str_proper(alignment)
src/pline.c:    aligntyp alignment;
src/pline.c:		switch ((int)alignment) {
src/pline.c:		switch ((int)alignment) {
src/pline.c:		switch ((int)alignment) {
src/pline.c:	aligntyp alignment;
src/pline.c:		alignment = EPRI(mtmp)->shralign;
src/pline.c:		alignment = EMIN(mtmp)->min_align;
src/pline.c:		alignment = mtmp->data->maligntyp;
src/pline.c:	alignment = (alignment > 0) ? A_LAWFUL :
src/pline.c:		(alignment < 0) ? A_CHAOTIC :
src/pline.c:		align_str(alignment),
src/polyself.c:	boolean allow_selfrace_poly = (wizard || (u.specialSealsActive&SEAL_ALIGNMENT_THING));
src/pray.c:	/* added test for alignment diff -dlc */
src/pray.c:				//Does not re-set alignment value (as if you attacked a peaceful)
src/pray.c:				//Does not re-set alignment value (as if you attacked a peaceful)
src/pray.c:      of your alignment, is strongly discouraged.
src/pray.c:					&& !uwep->oartifact && !(uarmh && uarmh->otyp == HELM_OF_OPPOSITE_ALIGNMENT)
src/pray.c:			/* If sacrificing unicorn of your alignment to altar not of */
src/pray.c:			/* your alignment, your god gets angry and it's a conversion */
src/pray.c:	/* Sacrificing at an altar of a different alignment OR a different god */
src/pray.c:		    /* The player wears a helm of opposite alignment? */
src/pray.c:		    if (uarmh && uarmh->otyp == HELM_OF_OPPOSITE_ALIGNMENT)
src/pray.c:    int alignment;
src/pray.c:		  godlist[p_god].alignment ? "lawful" : "neutral");
src/pray.c:	alignment = -u.ualign.record;		/* Opposite alignment altar */
src/pray.c:	alignment = u.ualign.record / 2;	/* Different alignment altar */
src/pray.c:    else alignment = u.ualign.record;
src/pray.c:    if ((int)Luck < 0 || godlist[u.ualign.god].anger || alignment < 0)
src/pray.c:    else /* alignment >= 0 */ {
src/pray.c:    /* set up p_type and p_alignment */
src/pray.c:    aligntyp alignment = galign(p_god);
src/pray.c:align_gname(alignment)
src/pray.c:aligntyp alignment;
src/pray.c:	return godname(align_to_god(alignment));
src/pray.c:	/* Sacrificing at an altar of a different alignment */
src/pray.c:	/* Sacrificing at an altar of a different alignment */
src/pray.c:	return godlist[godnum].alignment;
src/pray.c:/* transitory function, hopefully, to convert an alignment into the most likely candidate god */
src/priest.c:temple_alignment(roomno)
src/priest.c:			if(Is_astralevel(&u.uz) && Role_if(PM_ANACHRONONAUT) && temple_alignment(roomno) == A_LAWFUL) {
src/priest.c:mk_roamer(ptr, alignment, x, y, peaceful)
src/priest.c:aligntyp alignment;
src/priest.c:	register boolean coaligned = (u.ualign.type == alignment);
src/priest.c:	EMIN(roamer)->min_align = alignment;
src/priest.c:	EMIN(roamer)->godnum = align_to_god(alignment);
src/priest.c:	if (Role_if(PM_EXILE) && on_level(&u.uz, &astral_level) && alignment != A_NONE) {
src/priest.c:		} while(galign(EMIN(roamer)->godnum) != alignment);
src/priest.c:	int alignment = (get_mx(roamer, MX_EPRI) ? EPRI(roamer)->shralign : get_mx(roamer, MX_EMIN) ? EMIN(roamer)->min_align : 0);
src/priest.c:	if (alignment != u.ualign.type) {
src/quest.c:    aligntyp original_alignment = galign(u.ugodbase[UGOD_ORIGINAL]);
src/quest.c:	if (u.ualign.type != original_alignment) {
src/quest.c:		align_str(u.ualign.type), align_str(original_alignment));
src/quest.c:	} else if (galign(u.ugodbase[UGOD_ORIGINAL]) != original_alignment) {
src/quest.c:			  u.ualign.type == original_alignment &&
src/quest.c:			  galign(u.ugodbase[UGOD_CURRENT]) == original_alignment) ?  1 :
src/quest.c:			 (galign(u.ugodbase[UGOD_CURRENT]) != original_alignment) ? -1 : 0;
src/quest.c:	/*Convert to new alignment (Even if already did once before) */
src/quest.c:		    if (uarmh && uarmh->otyp == HELM_OF_OPPOSITE_ALIGNMENT)
src/quest.c:		/* Fix up the alignments of "gift" artifacts */
src/quest.c:			if (art->role == Role_switch && art->alignment != A_NONE)
src/quest.c:				art->alignment = alignmnt;
src/quest.c:			artilist[urole.questarti].alignment = alignmnt;
src/restore.c:	role_init(FALSE);	/* Reset the initial role, race, gender, and alignment */
src/restore.c:	/* Fix up the alignment quest nemesi */
src/role.c:/* Table of all alignments */
src/role.c:STATIC_DCL int FDECL(race_alignmentcount, (int));
src/role.c:/* I TRIED to add forced alignments in a non-hacky manner, but SOMETHING SOMEWHERE nullpointers if the
src/role.c:	/* Count the number of valid alignments */
src/role.c:	/* Pick a random alignment */
src/role.c:	/* This role/race has no permitted alignments? */
src/role.c:/* gender and alignment are not comparable (and also not constrainable) */
src/role.c:/* gender and alignment are not comparable (and also not constrainable) */
src/role.c:/* alignment and gender are not comparable (and also not constrainable) */
src/role.c:/* pick a random alignment subject to any rolenum/racenum/gendnum constraints */
src/role.c:/* alignment and gender are not comparable (and also not constrainable) */
src/role.c:/* If pickhow == PICK_RIGID an alignment is returned only if there is  */
src/role.c:    /* Some roles are limited to a single race, alignment, or gender and
src/role.c:race_alignmentcount(racenum)
src/role.c:	/* How many alignments are allowed for the desired race? */
src/role.c:		aligncount = race_alignmentcount(racenum);
src/role.c:		/* if race specified, and multiple choice of alignments for it */
src/role.c:		/* if alignment not specified, but race is specified
src/role.c:			and only one choice of alignment for that race then
src/role.c:			Strcat(buf, "alignment");
src/role.c: *	2 - Priests start with a random alignment - convert the leader and
src/role.c:	/* Check for a valid alignment */
src/role.c:	    /* Pick a random alignment */
src/shk.c:		if(u.specialSealsActive&SEAL_ALIGNMENT_THING) count++;
src/shknam.c:	HELM_OF_OPPOSITE_ALIGNMENT,
src/sounds.c:static const char *alignmentThings[] = {
src/sounds.c:	case ALIGNMENT_THING:{
src/sounds.c:		if(u.sealTimeout[ALIGNMENT_THING-FIRST_SEAL] < moves){
src/sounds.c:					a = rn2(SIZE(alignmentThings));
src/sounds.c:					b = rn2(SIZE(alignmentThings));
src/sounds.c:				pline("%s",alignmentThings[a]);
src/sounds.c:				pline("%s",alignmentThings[b]);
src/sounds.c:				u.sealTimeout[ALIGNMENT_THING-FIRST_SEAL] = moves + bindingPeriod;
src/sounds.c:	case ALIGNMENT_THING:
src/sounds.c:	case ALIGNMENT_THING:
src/sounds.c:		floorID == ALIGNMENT_THING ||
src/sounds.c:		/* Peacefully eject current alignment spirit */
src/sp_lev.c:STATIC_DCL int FDECL(noncoalignment, (ALIGNTYP_P));
src/sp_lev.c:			if (xaltmp == -1) /* Horizontal alignment is RANDOM */
src/sp_lev.c:			if (yaltmp == -1) /* Vertical alignment is RANDOM */
src/sp_lev.c:noncoalignment(alignment)
src/sp_lev.c:aligntyp alignment;
src/sp_lev.c:	if(alignment == A_VOID)
src/sp_lev.c:	if (!alignment)
src/sp_lev.c:	return(k ? sgn(-alignment) : 0); /* |alignment| might not be 1, so use sign(-alignment) */
src/sp_lev.c:    aligntyp alignment;
src/sp_lev.c:		alignment = galign(u.ugodbase[UGOD_ORIGINAL]);
src/sp_lev.c:		alignment = noncoalignment(galign(u.ugodbase[UGOD_ORIGINAL]));
src/sp_lev.c:		alignment = induced_align(80);
src/sp_lev.c:		alignment = Amask2align(ralign[-m->align-1]);
src/sp_lev.c:		alignment = Amask2align(m->align);
src/sp_lev.c:	    mtmp = mk_roamer(pm, alignment, x, y, m->peaceful);
src/sp_lev.c:	aligntyp	alignment;
src/sp_lev.c:	/* Is the alignment random ?
src/sp_lev.c:	 * The alignment is encoded as amask values instead of alignment
src/sp_lev.c:		alignment = galign(u.ugodbase[UGOD_ORIGINAL]);
src/sp_lev.c:		alignment = noncoalignment(galign(u.ugodbase[UGOD_ORIGINAL]));
src/sp_lev.c:		alignment = induced_align(80);
src/sp_lev.c:		alignment = Amask2align(ralign[-a->align-1]);
src/sp_lev.c:		alignment = Amask2align(a->align);
src/sp_lev.c:		a->god = align_to_god(alignment);
src/sp_lev.c:	if(Role_if(PM_ANACHRONOUNBINDER) && Is_astralevel(&u.uz) && alignment == A_LAWFUL){
src/sp_lev.c:		alignment = A_VOID;
src/sp_lev.c:		alignment = A_VOID;
src/sp_lev.c:	add_altar(x, y, alignment, a->shrine, a->god);
src/sp_lev.c:	/* shuffle 3 alignments; can't use sp_lev_shuffle() on aligntyp's */
src/sp_lev.c:					 /* horizontal alignment */
src/sp_lev.c:					 /* vertical alignment */
src/sp_lev.c:					/* Horizontal alignment */
src/sp_lev.c:					/* Vertical alignment */
src/spell.c:	{ SEAL_SPECIAL|SEAL_ALIGNMENT_THING,	"Flowing Forms",			
src/spell.c:	{ SEAL_SPECIAL|SEAL_ALIGNMENT_THING,	"Flowing Forms",			
src/steal.c:	 * alignment penalty during retaliation;
src/topten.c:	(void) strncpy(t0->plalign, get_alignment_code(), ROLESZ);
src/topten.c:	/* Printing of gender and alignment is intentional.  It has been
src/trap.c:			set_malign(mtmp);	/* reset alignment */
src/trap.c:			set_malign(mtmp);		/* reset alignment */
src/u_init.c:		/* Override racial alignment */
src/u_init.c:    	/* Override racial alignment */
src/u_init.c:	/* Fix up the alignment quest nemesi */
src/xhity.c:			       	dmg += d(1,u.ualign.record);/*1dalignment, first hit could be pretty big after that its chill -- is it now? i doubt that*/
src/xhity.c:			if(uarmh && uarmh->otyp == HELM_OF_OPPOSITE_ALIGNMENT) {
src/xhity.c:				otmp = mksobj(HELM_OF_OPPOSITE_ALIGNMENT, NO_MKOBJ_FLAGS);		
