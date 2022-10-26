include/youprop.h:						&& which_armor(u.usteed, W_SADDLE)->oartifact == ART_HELLRIDER_S_SADDLE) || \
include/youprop.h:						 && which_armor(u.usteed, W_SADDLE)->oartifact == ART_HELLRIDER_S_SADDLE) || \
include/mondata.h:	((mon) != &youmonst ? (which_armor((mon), W_ARMF) && which_armor((mon), W_ARMF)->otyp == SHACKLES && which_armor((mon), W_ARMF)->cursed) :\
include/mondata.h:#define straitjacketed_mon(mon) (which_armor(mon, W_ARM) && which_armor(mon, W_ARM)->otyp == STRAITJACKET && which_armor(mon, W_ARM)->cursed)
include/mondata.h:#define shackled_arms_mon(mon) (which_armor(mon, W_ARMG) && which_armor(mon, W_ARMG)->otyp == SHACKLES && which_armor(mon, W_ARMG)->cursed)
include/extern.h:E struct obj *FDECL(which_armor, (struct monst *,long));
src/apply.c:			curo = which_armor(u.usteed, W_SADDLE);
src/artifact.c:			struct obj *cloak = which_armor(mdef, W_ARMC);
src/artifact.c:						otmp == which_armor(mdef, W_SADDLE))
src/artifact.c:			struct obj *cloak = which_armor(mdef, W_ARMC);
src/artifact.c:		struct obj *cloak = which_armor(mdef, W_ARMC);
src/artifact.c:		struct obj *armor = which_armor(mdef, W_ARM);
src/artifact.c:		struct obj *shield = which_armor(mdef, W_ARMS);
src/artifact.c:					obj == which_armor(mdef, W_SADDLE))
src/artifact.c:				armor = youdef ? uarmh : which_armor(mdef, W_ARMH);
src/artifact.c:				armor = youdef ? uarm  : which_armor(mdef, W_ARM);
src/artifact.c:				armor = youdef ? uarms : which_armor(mdef, W_ARMS);
src/artifact.c:			cloak = which_armor(mdef, W_ARMC);
src/artifact.c:		struct obj *cloak = which_armor(mdef, W_ARMC);
src/artifact.c:		obj = which_armor(mtmp, W_ARM);
src/artifact.c:		obj = which_armor(mtmp, W_ARMS);
src/artifact.c:		obj = which_armor(mtmp, W_ARM);
src/do.c:		    if ((otmp = which_armor(mtmp, W_ARMS)) == 0 ||
src/do_wear.c:	otmph = (victim == &youmonst) ? uarmc : which_armor(victim, W_ARMC);
src/do_wear.c:	    otmph = (victim == &youmonst) ? uarm : which_armor(victim, W_ARM);
src/do_wear.c:	    otmph = (victim == &youmonst) ? uarmu : which_armor(victim, W_ARMU);
src/do_wear.c:	otmp = (victim == &youmonst) ? uarmh : which_armor(victim, W_ARMH);
src/do_wear.c:	otmp = (victim == &youmonst) ? uarmg : which_armor(victim, W_ARMG);
src/do_wear.c:	otmp = (victim == &youmonst) ? uarmf : which_armor(victim, W_ARMF);
src/do_wear.c:	otmp = (victim == &youmonst) ? uarms : which_armor(victim, W_ARMS);
src/dogmove.c:						|| !which_armor(mon, W_ARMS))) {
src/dogmove.c:				 && !((mtmp->misc_worn_check & W_ARMH) && which_armor(mtmp, W_ARMH) && 
src/dogmove.c:					   FacelessHelm(which_armor(mtmp, W_ARMH)) && (which_armor(mtmp, W_ARMH))->cursed)
src/dogmove.c:				 && !((mtmp->misc_worn_check & W_ARMC) && which_armor(mtmp, W_ARMC) && 
src/dogmove.c:					   FacelessCloak(which_armor(mtmp, W_ARMC)) && (which_armor(mtmp, W_ARMC))->cursed)
src/hack.c:		cloak = which_armor(u.usteed, W_ARMC);
src/hack.c:		bodyarmor = which_armor(u.usteed, W_ARM);
src/hack.c:		underarmor = which_armor(u.usteed, W_ARMU);
src/hack.c:		boots = which_armor(u.usteed, W_ARMF);
src/invent.c:		if(which_armor(mon, W_ARMC)) return which_armor(mon, W_ARMC);
src/invent.c:		if(which_armor(mon, W_ARM) && !(!arm_blocks_upper_body(which_armor(mon, W_ARM)->otyp) && which_armor(mon, W_ARMU) && rn2(2))) return which_armor(mon, W_ARM);
src/invent.c:		if(which_armor(mon, W_ARMU)) return which_armor(mon, W_ARMU);
src/makemon.c:					if(which_armor(mtmp, W_ARMH)){
src/makemon.c:						struct obj *hlm = which_armor(mtmp, W_ARMH);
src/mcastu.c:			struct obj * boots = (youdef ? uarmf : which_armor(mdef, W_ARMF));
src/mcastu.c:			struct obj * helm = (youdef ? uarmh : which_armor(mdef, W_ARMH));
src/mcastu.c:			struct obj * helm = (youdef ? uarmh : which_armor(mdef, W_ARMH));
src/mon.c:	if ((otmp = which_armor(mtmp, W_ARMF)) &&
src/mon.c:		if (inshallow) water_damage(which_armor(mtmp, W_ARMF), FALSE, FALSE, level.flags.lethe, mtmp);
src/mon.c:	gloves = which_armor(mtmp, W_ARMG);
src/mon.c:	cloak = which_armor(mtmp, W_ARMC);
src/mon.c:	bodyarmor = which_armor(mtmp, W_ARM);
src/mon.c:	underarmor = which_armor(mtmp, W_ARMU);
src/mon.c:	boots = which_armor(mtmp, W_ARMF);
src/mon.c:	    otmp = which_armor(mon, W_AMUL);
src/mon.c:		&& which_armor(mtmp, W_ARMC)
src/mon.c:		&& which_armor(mtmp, W_ARMC)->oartifact == ART_SPELL_WARDED_WRAPPINGS_OF_
src/mon.c:				if(which_armor(mtmp, W_ARMC)->oeroded3){
src/mon.c:					m_useup(mtmp, which_armor(mtmp, W_ARMC));
src/mon.c:					which_armor(mtmp, W_ARMC)->oeroded3 = 1;
src/mon.c:					helm = which_armor(mtmp, W_ARMH);
src/mon.c:					robe = which_armor(mtmp, W_ARMC);
src/mon.c:						if(!which_armor(mtmp, W_ARMH)){
src/mon.c:				struct obj *m_armr = which_armor(mon, W_ARM);
src/mon.c:				else if ((m_armr = which_armor(mon, W_ARMC)) && m_armr->otyp == LEO_NEMAEUS_HIDE)
src/mon.c:			helm = which_armor(tmpm, W_ARMH);
src/mon.c:						!(targ->misc_worn_check & W_ARMH && (otmp = which_armor(targ, W_ARMH)) && !otmp->cursed) &&
src/mon.c:						!(targ->misc_worn_check & W_ARMC && (otmp = which_armor(targ, W_ARMC)) && !otmp->cursed) &&
src/mon.c:						!(targ->misc_worn_check & W_ARM && (otmp = which_armor(targ, W_ARM)) && !otmp->cursed) &&
src/mon.c:						!(targ->misc_worn_check & W_ARMU && (otmp = which_armor(targ, W_ARMU)) && !otmp->cursed) &&
src/mon.c:						!(targ->misc_worn_check & W_ARMG && (otmp = which_armor(targ, W_ARMG)) && !otmp->cursed) &&
src/mon.c:						!(targ->misc_worn_check & W_ARMF && (otmp = which_armor(targ, W_ARMF)) && !otmp->cursed)
src/mondata.c:	struct obj * gloves = ((mtmp == &youmonst) ? uarmg : which_armor(mtmp, W_ARMG));
src/mondata.c:	struct obj *gloves = which_armor(mon, W_ARMG);
src/mondata.c:	struct obj *gloves = which_armor(mon, W_ARMG);
src/mondata.c:	struct obj *cloak = which_armor(magr, W_ARMC);
src/mondata.c:		struct obj *helm = which_armor(magr, W_ARMH);
src/mondata.c:		struct obj *armor = which_armor(magr, W_ARM);
src/mondata.c:		struct obj *under = which_armor(magr, W_ARMU);
src/monmove.c:	if(mat && (get_mx(mtmp, MX_ESUM) || is_mask_of_nyarlathotep(mtmp->data)) && which_armor(mat, W_ARMC) && which_armor(mat, W_ARMC)->oartifact == ART_SPELL_WARDED_WRAPPINGS_OF_)
src/monmove.c:					if(nonliving(patient->data) || patient->mpeaceful != mtmp->mpeaceful || (which_armor(patient, W_ARM) && arm_blocks_upper_body(which_armor(patient, W_ARM)->otyp)))
src/monmove.c:							struct obj *armor = which_armor(tmon, W_ARM);
src/monmove.c:							struct obj *under = which_armor(tmon, W_ARMU);
src/muse.c:	struct obj *helmet = which_armor(mtmp, W_ARMH);
src/muse.c:				struct obj *helmet = which_armor(mtmp2, W_ARMH);
src/muse.c:		    struct obj *helmet = which_armor(mtmp, W_ARMH);
src/muse.c:			|| ((mtmp->misc_worn_check & W_ARMH) && which_armor(mtmp, W_ARMH) && FacelessHelm(which_armor(mtmp, W_ARMH)))
src/muse.c:			|| ((mtmp->misc_worn_check & W_ARMC) && which_armor(mtmp, W_ARMC)
src/muse.c:				&& FacelessCloak(which_armor(mtmp, W_ARMC)));
src/muse.c:	if ((m_armr = which_armor(mon, W_ARM)) != 0) {
src/muse.c:	if(mtmp && which_armor(mtmp, W_ARMC) && which_armor(mtmp, W_ARMC)->oartifact == ART_MANTLE_OF_WRATH)
src/muse.c:	struct obj *orefl = which_armor(mon, W_ARMS);
src/muse.c:	orefl = which_armor(mon, W_AMUL);
src/muse.c:	orefl = which_armor(mon, W_ARMC);
src/muse.c:	orefl = which_armor(mon, W_ARM);
src/muse.c:	orefl = which_armor(mon, W_ARMH);
src/muse.c:	orefl = which_armor(mon, W_ARMG);
src/muse.c:	orefl = which_armor(mon, W_ARMF);
src/muse.c:	orefl = which_armor(mon, W_ARMU);
src/muse.c:	orefl = which_armor(mon, W_SADDLE);
src/muse.c:	} else if (u.usteed && u.usteed->misc_worn_check & W_SADDLE  && which_armor(u.usteed, W_SADDLE)->oartifact == ART_HELLRIDER_S_SADDLE) {
src/pickup.c:			if((armor = which_armor(mtmp, W_ARM)) && arm_blocks_upper_body(armor->otyp))
src/pickup.c:			else if((armor = which_armor(mtmp, W_ARMU)) && arm_blocks_upper_body(armor->otyp))
src/pickup.c:			otmp = which_armor(mtmp, W_ARMH);
src/pray.c:	    otmp = which_armor(u.usteed, W_SADDLE);
src/pray.c:		    otmp = which_armor(u.usteed, W_SADDLE);
src/priest.c:		if (rn2(2) && (otmp = which_armor(priest, W_ARMC)) != 0) {
src/read.c:				obj = which_armor(u.usteed, W_SADDLE);
src/read.c:				struct obj *helmet = which_armor(mtmp, W_ARMH);
src/region.c:		struct obj *otmp = which_armor(mtmp, W_ARMH);
src/seduce.c:				otmp == which_armor(mdef, W_SADDLE))
src/seduce.c:					otmp == which_armor(mdef, W_SADDLE))
src/sit.c:		(otmp = which_armor(u.usteed, W_SADDLE)) != 0 &&
src/spell.c:					boots = which_armor(mon, W_ARMF);
src/steed.c:			which_armor(mtmp, W_SADDLE)) {
src/steed.c:	otmp = which_armor(mtmp, W_SADDLE);
src/steed.c:	otmp = which_armor(mtmp, W_SADDLE);
src/trap.c:				item = (victim == &youmonst) ? uarmh : which_armor(victim, W_ARMH);
src/trap.c:				item = (victim == &youmonst) ? uarmc : which_armor(victim, W_ARMC);
src/trap.c:				item = (victim == &youmonst) ? uarm : which_armor(victim, W_ARM);
src/trap.c:				if (item && (arm_blocks_upper_body(item->otyp) || !((victim == &youmonst) ? uarmu : which_armor(victim, W_ARMU)) || rn2(2))) {
src/trap.c:				item = (victim == &youmonst) ? uarmu : which_armor(victim, W_ARMU);
src/trap.c:				item = (victim == &youmonst) ? uarms : which_armor(victim, W_ARMS);
src/trap.c:				item = (victim == &youmonst) ? uarmg : which_armor(victim, W_ARMG);
src/trap.c:				item = (victim == &youmonst) ? uarmf : which_armor(victim, W_ARMF);
src/trap.c:			    target = which_armor(mtmp, W_ARMH);
src/trap.c:			    target = which_armor(mtmp, W_ARMS);
src/trap.c:glovecheck:		    target = which_armor(mtmp, W_ARMG);
src/trap.c:			    target = which_armor(mtmp, W_ARMC);
src/trap.c:				target = which_armor(mtmp, W_ARM);
src/trap.c:				    target = which_armor(mtmp, W_ARMU);
src/trap.c:		struct obj *cloak = which_armor(owner, W_ARMC);
src/trap.c:		if((armor = which_armor(mtmp, W_ARM)) && arm_blocks_upper_body(armor->otyp))
src/trap.c:		else if((armor = which_armor(mtmp, W_ARMU)) && arm_blocks_upper_body(armor->otyp))
src/weapon.c:		if (could_twoweap_mon(mon) && !which_armor(mon, W_ARMS) && !bimanual(MON_WEP(mon), mon->data))
src/weapon.c:	if (could_twoweap_mon(mon) && !which_armor(mon, W_ARMS) && !bimanual(obj, mon->data))
src/weapon.c:	arm = which_armor(mon, W_ARMG);
src/weapon.c:	arms = which_armor(mon, W_ARMS);
src/weapon.c:			arm = which_armor(mon, W_ARMG);
src/weapon.c:			arm = which_armor(mon, W_ARMH);
src/weapon.c:			arm = which_armor(mon, W_ARMG);
src/weapon.c:			arm = which_armor(mon, W_ARMG);
src/weapon.c:			arm = which_armor(mon, W_ARMH);
src/weapon.c:			arm = which_armor(mon, W_ARMH);
src/weapon.c:			arm = which_armor(mon, W_ARMH);
src/weapon.c:			arm = which_armor(mon, W_ARMH);
src/worn.c:		struct obj * armor = which_armor(mon, W_ARM);
src/worn.c:		struct obj * armor = which_armor(mon, W_ARM);
src/worn.c:		if((curarm = which_armor(mon, marmor[i]))){
src/worn.c:			if (!which_armor(mon, W_ARMC) && (slot & CLOAK_DR)) {
src/worn.c:			if (!which_armor(mon, W_ARM) && (slot & TORSO_DR)) {
src/worn.c: * check which_armor() each round.
src/worn.c:	old = which_armor(mon, flag);
src/worn.c:	old = which_armor(mon, flag);
src/worn.c:	} while(tries-- && !(old = which_armor(mon, flag)));
src/worn.c:		if(!which_armor(mon, flag)) continue;
src/worn.c:which_armor(mon, flag)
src/worn.c:	if ((otmp = which_armor(mon, W_ARM)) != 0) {
src/worn.c:	if ((otmp = which_armor(mon, W_ARMC)) != 0) {
src/worn.c:	if ((otmp = which_armor(mon, W_ARMU)) != 0) {
src/worn.c:	if ((otmp = which_armor(mon, W_ARMG)) != 0) {
src/worn.c:	if ((otmp = which_armor(mon, W_ARMS)) != 0) {
src/worn.c:	if ((otmp = which_armor(mon, W_ARMH)) != 0 &&
src/worn.c:	if ((otmp = which_armor(mon, W_ARMF)) != 0) {
src/worn.c:	    if ((otmp = which_armor(mon, W_SADDLE)) != 0) {
src/worn.c:	armor = (mon == &youmonst) ? uarm : which_armor(mon, W_ARM);
src/worn.c:	armor = (mon == &youmonst) ? uarmc : which_armor(mon, W_ARMC);
src/worn.c:	armor = (mon == &youmonst) ? uarmh : which_armor(mon, W_ARMH);
src/worn.c:	armor = (mon == &youmonst) ? uarmu : which_armor(mon, W_ARMU);
src/worn.c:	armor = (mon == &youmonst) ? uarmg : which_armor(mon, W_ARMG);
src/worn.c:	armor = (mon == &youmonst) ? uarmf : which_armor(mon, W_ARMF);
src/worn.c:	armor = (mon == &youmonst) ? uarms : which_armor(mon, W_ARMS);
src/worn.c:	armor = (mon == &youmonst) ? 0 : which_armor(mon, W_SADDLE);
src/worn.c:		struct obj *armor = which_armor(obj->ocarry, W_ARMC);
src/xhity.c:			struct obj * helm = youagr ? uarmh : which_armor(magr, W_ARMH);
src/xhity.c:			struct obj * cloak = youagr ? uarmc : which_armor(magr, W_ARMC);
src/xhity.c:				(!youagr && (which_armor(magr, W_ARMS) || (MON_WEP(magr) && bimanual(MON_WEP(magr), pa))))	// monster attacking with shield
src/xhity.c:					(!youagr && (which_armor(magr, W_ARMS) || (MON_WEP(magr) && bimanual(MON_WEP(magr), pa))))	// monster attacking and cannot twoweapon (wearing shield)
src/xhity.c:			obj = which_armor(mtmp, WORN_HELMET);
src/xhity.c:			if (which_armor(magr, W_ARMC) && which_armor(magr, W_ARMC)->oartifact == ART_SPELL_WARDED_WRAPPINGS_OF_){
src/xhity.c:					|| (mdef && !(which_armor(mdef, W_ARM) || which_armor(mdef, W_ARMU) || which_armor(mdef, W_ARMH) || 
src/xhity.c:						 which_armor(mdef, W_ARMG) || which_armor(mdef, W_ARMF) || which_armor(mdef, W_ARMC) ||
src/xhity.c:		struct obj * otmp = (youagr ? uarmg : which_armor(magr, W_ARMG));
src/xhity.c:		struct obj * otmp = (youagr ? uarm : which_armor(magr, W_ARM));
src/xhity.c:		obj = (youdef ? uarmh : which_armor(mdef, W_ARMH));
src/xhity.c:		obj = (youdef ? uarmg : which_armor(mdef, W_ARMG));
src/xhity.c:		obj = (youdef ? uarmf : which_armor(mdef, W_ARMF));
src/xhity.c:		obj = (youdef ? uarmf : which_armor(mdef, W_ARMF));
src/xhity.c:		if (!obj) obj = (youdef ? uarmc : which_armor(mdef, W_ARMC));
src/xhity.c:		if (!obj) obj = (youdef ? uarm : which_armor(mdef, W_ARM));
src/xhity.c:		if (!obj) obj = (youdef ? uarmu : which_armor(mdef, W_ARMU));
src/xhity.c:			if ((otmp = which_armor(magr, W_ARMG))) {
src/xhity.c:			gloves = (youagr ? uarmg : which_armor(magr, W_ARMG));
src/xhity.c:			if (!thrown && !bimanual(weapon, magr->data) && !which_armor(magr, W_ARMS)) {
src/xhity.c:				struct obj * otmp = which_armor(magr, W_ARMG);
src/xhity.c:		otmp = (youagr ? uarmf : which_armor(magr, W_ARMF));
src/xhity.c:				if(which_armor(mdef, W_ARMS)) *shield_margin = arm_ac_bonus(which_armor(mdef, W_ARMS));
src/xhity.c:				otmp = (youdef ? uarmh : which_armor(mdef, W_ARMH));
src/xhity.c:			otmp = (youdef ? uarmh : which_armor(mdef, W_ARMH));
src/xhity.c:				otmp = (youdef ? uarmf : which_armor(mdef, W_ARMF));
src/xhity.c:				otmp = (youdef ? uarmg : which_armor(mdef, W_ARMG));
src/xhity.c:				otmp = (youdef ? uarms : which_armor(mdef, W_ARMS));
src/xhity.c:				otmp = (youdef ? uarmh : which_armor(mdef, W_ARMH));
src/xhity.c:				otmp = (youdef ? uarmh : which_armor(mdef, W_ARMH));
src/xhity.c:		otmp = (youdef ? uarmh : which_armor(mdef, W_ARMH));
src/xhity.c:				struct obj *otmp = which_armor(mdef, W_ARMH);
src/xhity.c:		if (which_armor(mon, W_AMUL) && (which_armor(mon, W_AMUL)->otyp == AMULET_VERSUS_CURSES)) {
src/xhity.c:		if (which_armor(mon, W_ARMC) && (which_armor(mon, W_ARMC)->otyp == PRAYER_WARDED_WRAPPING || which_armor(mon, W_ARMC)->oartifact == ART_SPELL_WARDED_WRAPPINGS_OF_)) {
src/xhity.c:		otmp = which_armor(mon, W_ARMH);
src/xhity.c:		if((otmp = which_armor(mon, W_ARM)) && check_oprop(otmp, OPROP_CGLZ) && arm_blocks_upper_body(otmp->otyp))
src/xhity.c:		else if((otmp = which_armor(mon, W_ARMC)) && check_oprop(otmp, OPROP_CGLZ) && arm_blocks_upper_body(otmp->otyp))
src/xhity.c:		else if((otmp = which_armor(mon, W_ARMU)) && check_oprop(otmp, OPROP_CGLZ) && arm_blocks_upper_body(otmp->otyp))
src/xhity.c:		if((otmp = which_armor(mon, W_ARM)) && check_oprop(otmp, OPROP_CGLZ) && arm_blocks_lower_body(otmp->otyp))
src/xhity.c:		else if((otmp = which_armor(mon, W_ARMC)) && check_oprop(otmp, OPROP_CGLZ) && arm_blocks_lower_body(otmp->otyp))
src/xhity.c:		else if((otmp = which_armor(mon, W_ARMU)) && check_oprop(otmp, OPROP_CGLZ) && arm_blocks_lower_body(otmp->otyp))
src/xhity.c:		if((otmp = which_armor(mon, W_ARMG)) && check_oprop(otmp, OPROP_CGLZ))
src/xhity.c:		if((otmp = which_armor(mon, W_ARMF)) && check_oprop(otmp, OPROP_CGLZ))
src/xhity.c:	else if(youagr ? uarms : which_armor(magr, W_ARMS))
src/xhity.c:		otmp = (youagr ? uarmg : which_armor(magr, slot));
src/xhity.c:		otmp = (youagr ? uarmf : which_armor(magr, slot));
src/xhity.c:		otmp = (youagr ? uarmh : which_armor(magr, slot));
src/xhity.c:		otmp = (youagr ? uarm : which_armor(magr, W_ARM));
src/xhity.c:		struct obj * gloves = (youagr ? uarmg : which_armor(magr, W_ARMG));
src/xhity.c:		otmp = (youagr ? uarmc : which_armor(magr, W_ARMC));
src/xhity.c:		otmp = (youagr ? uarmf : which_armor(magr, W_ARMF));
src/xhity.c:			((otmp = (youagr ? uarmh : which_armor(magr, W_ARMH))) &&
src/xhity.c:			otmp = (youagr ? uarmg : which_armor(magr, W_ARMG));
src/xhity.c:			otmp = (youagr ? uarmf : which_armor(magr, W_ARMF));
src/xhity.c:			otmp = (youagr ? uarmg : which_armor(magr, W_ARMG));
src/xhity.c:			otmp = (youagr ? uarmf : which_armor(magr, W_ARMF));
src/xhity.c:			otmp = (youagr ? uarmg : which_armor(magr, slot));
src/xhity.c:			otmp = (youagr ? uarmf : which_armor(magr, slot));
src/xhity.c:			otmp = (youagr ? uarmh : which_armor(magr, slot));
src/xhity.c:			otmp = (youagr ? uarmg : which_armor(magr, slot));
src/xhity.c:			otmp = (youagr ? uarmf : which_armor(magr, slot));
src/xhity.c:			otmp = (youagr ? uarmh : which_armor(magr, slot));
src/xhityhelpers.c:			target = which_armor(mdef, W_ARMH);
src/xhityhelpers.c:			target = which_armor(mdef, W_ARMC);
src/xhityhelpers.c:			if ((target = which_armor(mdef, W_ARM)) != (struct obj *)0) {
src/xhityhelpers.c:			else if ((target = which_armor(mdef, W_ARMU)) != (struct obj *)0) {
src/xhityhelpers.c:			target = which_armor(mdef, W_ARMS);
src/xhityhelpers.c:			target = which_armor(mdef, W_ARMG);
src/xhityhelpers.c:			target = which_armor(mdef, W_ARMF);
src/xhityhelpers.c:			otmp = (youagr ? uarmg : which_armor(magr, slot));
src/xhityhelpers.c:			otmp = (youagr ? uarmf : which_armor(magr, slot));
src/xhityhelpers.c:			otmp = (youagr ? uarmh : which_armor(magr, slot));
src/xhityhelpers.c:					if(otmp->otyp == CORPSE && touch_petrifies(&mons[otmp->corpsenm]) && !which_armor(mdef, W_ARMG)){
src/xhityhelpers.c:				} else if((otmp = which_armor(mdef, W_ARMS))){
src/xhityhelpers.c:				} else if((otmp = which_armor(mdef, W_ARMS))){
src/xhityhelpers.c:					if(otmp->otyp == CORPSE && touch_petrifies(&mons[otmp->corpsenm]) && !which_armor(mdef, W_ARMG)){
src/xhityhelpers.c:	otmp = (mtmp==&youmonst) ? uarm : which_armor(mtmp, W_ARM);
src/xhityhelpers.c:	otmp = (mtmp==&youmonst) ? uarms : which_armor(mtmp, W_ARMS);
src/zap.c:		} else if (!!(obj = which_armor(mtmp, W_SADDLE))) {
src/zap.c:			((otmp = youdef ? uarm : which_armor(mdef, W_ARM)) && (
src/zap.c:			((otmp = youdef ? uarms : which_armor(mdef, W_ARMS)) && (
src/zap.c:				(otmp = youdef ? uarms : which_armor(mdef, W_ARMS)) ||
src/zap.c:				(otmp = youdef ? uarmc : which_armor(mdef, W_ARMC)) ||
src/zap.c:				(otmp = youdef ? uarm : which_armor(mdef, W_ARM)) ||
src/zap.c:				((otmp = youdef ? uarmu : which_armor(mdef, W_ARMU)) && objects[otmp->otyp].a_can > 0)
src/zap.c:			((otmp = youdef ? uarms : which_armor(mdef, W_ARMS)) && otmp->obj_material != GOLD) ||
src/zap.c:			((otmp = youdef ? uarmc : which_armor(mdef, W_ARMC)) && otmp->obj_material != GOLD) ||
src/zap.c:			((otmp = youdef ? uarm  : which_armor(mdef, W_ARM )) && otmp->obj_material != GOLD) ||
src/zap.c:			((otmp = youdef ? uarmu : which_armor(mdef, W_ARMU)) && otmp->obj_material != GOLD && objects[otmp->otyp].a_can > 0)
src/zap.c:		if(which_armor(mon, W_ARMH)){
src/zap.c:			struct obj *hlm = which_armor(mon, W_ARMH);
src/allmain.c:							if(which_armor(mtmp, W_ARMC) && which_armor(mtmp, W_ARMC)->otyp == MUMMY_WRAPPING){
src/allmain.c:							if(which_armor(mtmp, W_ARMC) && which_armor(mtmp, W_ARMC)->otyp == PRAYER_WARDED_WRAPPING){
src/allmain.c:					if(which_armor(mtmp, W_ARMC) && which_armor(mtmp, W_ARMC)->oartifact == ART_SPELL_WARDED_WRAPPINGS_OF_)
src/allmain.c:			if(which_armor(mtmp, W_ARMC) && which_armor(mtmp, W_ARMC)->oartifact == ART_SPELL_WARDED_WRAPPINGS_OF_){
src/allmain.c:		if(which_armor(mtmp, W_ARMC) && which_armor(mtmp, W_ARMC)->oartifact == ART_SPELL_WARDED_WRAPPINGS_OF_){
src/allmain.c:				if(which_armor(mtmp, W_ARMH) && which_armor(mtmp, W_ARMH)->otyp == SEDGE_HAT){
src/allmain.c:				} else if(which_armor(mtmp, W_ARMH) && which_armor(mtmp, W_ARMH)->otyp == WAR_HAT) {
src/allmain.c:				} else if(which_armor(mtmp, W_ARMH) && which_armor(mtmp, W_ARMH)->otyp == WITCH_HAT) {
src/allmain.c:				} else if(which_armor(mtmp, W_ARMH) && which_armor(mtmp, W_ARMH)->otyp == WIDE_HAT) {
sys/msdos/schema3.MSC:functions:322 _where_name _which_armor _which_arti
