#	SCCS Id: @(#)quest.txt	3.4	2002/01/30
#	Copyright (c) 1991 by M. Stephenson
# NetHack may be freely redistributed.  See license for details.
#
#	The quest text file for NetHack 3.4
#
#	These are the "standard" message numbers from qtext.h.  All class
#	dialogue must have at least these entries.
#
#	QT_FIRSTTIME	 1
#	QT_NEXTTIME		 2
#	QT_OTHERTIME	 3
#
#	QT_GUARDTALK	 5	/* 5 random things guards say before quest */
#	QT_GUARDTALK2	10	/* 5 random things guards say after quest */
#
#	QT_FIRSTLEADER	15
#	QT_NEXTLEADER	16
#	QT_OTHERLEADER	17
#	QT_LASTLEADER	18
#	QT_BADLEVEL	19
#	QT_BADALIGN	20
#	QT_ASSIGNQUEST	21
#
#	QT_ENCOURAGE	25	/* 1-10 random encouragement messages */
#
#	QT_FIRSTLOCATE	35
#	QT_NEXTLOCATE	36
#
#	QT_FIRSTACQUIRE	40
#	QT_NEXTACQUIRE	41
#
#	QT_FIRSTNEMESIS	50
#	QT_NEXTNEMESIS	51
#	QT_OTHERNEMESIS	52
#	QT_NEMWANTSIT	53	/* you somehow got the artifact */
#
#	QT_DISCOURAGE	60	/* 1-10 random maledictive messages */
#
#	QT_GOTIT	70
#
#	QT_KILLEDNEM	80
#	QT_OFFEREDIT	81
#	QT_OFFEREDIT2	82	/* if you throw artifact to leader after #81 */
#
#	QT_OFFERART2	83	/* if you throw the alternate 
#	                     artifact to leader after #81 */
#	QT_POSTHANKS	90
#	QT_HASAMULET	91
#
#	QT_TURNEDSTAG	100 /* offset if you turn stag on 
#	                      your original quest leader */
#	QT_FIRSTPERRIN	101
#	QT_NOITEMPERRIN	102
#	QT_ITEMPERRIN	103
#	QT_LOCMNGR		104
#	QT_LOCWRKSHP	105
#	QT_LOCWRKSHPMOD	106
#	QT_LOCSPP
#   QT_STARTQUEST1	200 - entry into the starter quest
#   QT_STARTLEADER1	201 - initial talk with starter leader
#   QT_STARTTRAITOR1	202 - initial talk with Traitor 
#   QT_STARTLEADER2	203 - Starter leader, 2nd time but not the mini-quest item
#   QT_STARTTRAITOR2	204 - Traitor, 2nd time but not the mini-quest item
#   QT_STARTLEADER3	205 - Starter leader - has the quest item!
#   QT_STARTTRAITOR3	206 - Traitor - has the quest item!
#   QT_STARTLEADER4	207 - Starter leader - after delivery
#   QT_STARTTRAITOR4	208 - Traitor - after delivery
#   QT_GLADIATORLEADER1	300 - Gladiator leader first time
#   QT_GLADIATORLEADER2	301 - Gladiator leader, 2nd time but no quest item
#   QT_GLADIATORLEADER3	302 - Gladiator leader - has the quest item!
#   QT_GLADIATORLEADER4	303
#   QT_SALAMANDERLEADER1 304
#   QT_SALAMANDERLEADER2 305
#   QT_SALAMANDERLEADER3 306
#   QT_SALAMANDERLEADER4 307
#   QT_BERSERKERLEADER1	308
#   QT_BERSERKERLEADER2	309
#   QT_BERSERKERLEADER3	310
#   QT_BERSERKERLEADER4	311
#   QT_BLINDLEADER1	312
#   QT_BLINDLEADER2	313
#   QT_BLINDLEADER3	314
#   QT_BLINDLEADER4	315
#   QT_PACIFISTLEADER1 316
#   QT_PACIFISTLEADER2 317
#   QT_PACIFISTLEADER3 318
#   QT_PACIFISTLEADER4 319
#   QT_YEOMANLEADER1 320
#   QT_YEOMANLEADER2 321
#   QT_YEOMANLEADER3 322
#   QT_YEOMANLEADER4 323
#   QT_PALADINLEADER1 324
#   QT_PALADINLEADER2 325
#   QT_PALADINLEADER3 326
#   QT_PALADINLEADER4 327
#   QT_UNDERTAKERLEADER1	328
#   QT_UNDERTAKERLEADER2	329
#   QT_UNDERTAKERLEADER3	330
#   QT_UNDERTAKERLEADER4	331
#   QT_DIVERLEADER1	332
#   QT_DIVERLEADER2	333
#   QT_DIVERLEADER3	334
#   QT_DIVERLEADER4	335
#   QT_NINJALEADER1	336
#   QT_NINJALEADER2	337
#   QT_NINJALEADER3	338
#   QT_NINJALEADER4	339
#   QT_LOCKSMITHLEADER1	340
#   QT_LOCKSMITHLEADER2	341
#   QT_LOCKSMITHLEADER3	342
#   QT_LOCKSMITHLEADER4	343
#   QT_DRUNKLEADER1	344
#   QT_DRUNKLEADER2	345
#   QT_DRUNKLEADER3	346
#   QT_DRUNKLEADER4	347
#   QT_HACKERLEADER1	348
#   QT_HACKERLEADER2	349
#   QT_HACKERLEADER3	350
#   QT_HACKERLEADER4	351
#   QT_ROLEPLAYERLEADER1	352
#   QT_ROLEPLAYERLEADER2	353
#   QT_ROLEPLAYERLEADER3	354
#   QT_ROLEPLAYERLEADER4	355
#   QT_ZOOLEADER1	356
#   QT_ZOOLEADER2	357
#   QT_ZOOLEADER3	358
#   QT_ZOOLEADER4	359
#   QT_SACRIFICELEADER1	360
#   QT_SACRIFICELEADER2	361
#   QT_SACRIFICELEADER3	362
#   QT_SACRIFICELEADER4	363
#   QT_GHOULLEADER1	364
#   QT_GHOULLEADER2	365
#   QT_GHOULLEADER3	366
#   QT_GHOULLEADER4	367
#   QT_STARTCLOCKARC1	368

#
#	Archeologist
#
%Cc Arc 00001
You are suddenly in familiar surroundings.  The buildings in the distance
seem to be those of your old alma mater, but something is wrong.  It feels
as if there has been a riot recently, or %H has
been under siege.

All of the windows are boarded up, and there are objects scattered around
the entrance.

Strange forbidding shapes seem to be moving in the distance.
%E
%Cp Arc 00002
Once again, you are back at %H.
%E
%Cp Arc 00003
You are back at %H.
You have an odd feeling this may be the last time you ever come here.
%E
%Cp Arc 00005
"Did you see Lash LaRue in 'Song of Old Wyoming' the other night?"
%E
%Cp Arc 00006
"Hey man, got any potions of hallucination for sale?"
%E
%Cp Arc 00007
"Did you see the artifact %l brought back from the last dig?"
%E
%Cp Arc 00008
"So what species do *you* think we evolved from?"
%E
%Cp Arc 00009
"So you're %ls prize pupil!  I don't know what he sees in you."
%E
%Cp Arc 00010
"Did you see Lash LaRue in 'Song of Old Wyoming' the other night?"
%E
%Cp Arc 00011
"Hey man, got any potions of hallucination for sale?"
%E
%Cp Arc 00012
"I guess you are guaranteed to make full professor now."
%E
%Cp Arc 00013
"So, what was worse, %n or your entrance exams?"
%E
%Cp Arc 00014
"%oC is impressive, but nothing like the bones I dug up!"
%E
%Cc Arc 00015
"Finally you have returned, %p.  You were always
my most promising student.  Allow me to see if you are ready for the
most difficult task of your career."
%E
%Cp Arc 00016
"Again, %p, you stand before me.
Let me see if you have gained experience in the interim."
%E
%Cp Arc 00017
"Once more, %p, you have returned from the field.
Are you finally ready for the task that must be accomplished?"
%E
%Cc Arc 00018
"%p, you have failed us.  All of my careful training has been in
vain.  Begone!  Your tenure at this college has been revoked!

"You are a disgrace to the profession!"
%E
%Cc Arc 00019
"%p, you are yet too inexperienced to undertake such a demanding
quest.  A mere %r could not possibly face the rigors demanded and
survive.  Go forth, and come here again when your adventures have further
taught you."
%E
%Cc Arc 00020
"%pC!  I've heard that you've been using sloppy techniques.  Your
results lately can hardly be called suitable for %ra!

"How could you have strayed from the %a path?  Go from here, and come
back only when you have purified yourself."
%E
%Cc Arc 00021
"Grave times have befallen the college, for %na has
stolen %o.  Without it, the board of directors of
the university will soon have no choice but to revoke our research grants.

"You must locate the entrance to %i.  Within it,
you will find %n.

"You must then defeat %n and return %o
to me.

"Only in this way will we be able to prevent the budget cuts that could
close this college.

"May the wisdom of %d be your guide."
%E
%Cp Arc 00025
"Beware, for %n is powerful and cunning."
%E
%Cp Arc 00026
"To locate the entrance to %i, you must pass
many traps."
%E
%Cp Arc 00027
"A %nt may be vulnerable to attacks by magical cold."
%E
%Cp Arc 00028
"Call upon %d when you encounter %n."
%E
%Cp Arc 00029
"You must destroy %n.  It will pursue you otherwise."
%E
%Cp Arc 00030
"%oC is a mighty talisman.  With it you
can destroy %n."
%E
%Cp Arc 00031
"Go forth with the blessings of %d."
%E
%Cp Arc 00032
"I will have my %gP watch for your return."
%E
%Cp Arc 00033
"Remember not to stray from the true %a path."
%E
%Cp Arc 00034
"You may be able to sense %o when you are near."
%E
%Cc Arc 00035
A plain opens before you.  Beyond the plain lies a foreboding edifice.

You have the feeling that you will soon find the entrance to
%i.
%E
%Cp Arc 00036
Once again, you are near the entrance to %i.
%E
%Cc Arc 00040
A strange feeling washes over you, and you think back to things you
learned during the many lectures of %l.

You realize the feeling must be the presence of %o.
%E
%Cp Arc 00041
The familiar presence of %o is in the ether.
%E
%Cc Arc 00050
"So, %p, you think that you can succeed in recovering
%o, when your teacher, %l, has already failed.

"Come, try your best!  I shall destroy you, and gnaw on your bones."
%E
%Cc Arc 00051
"Again you try to best me, eh %p?  Well, you shall fail again.

"You shall never recover %o.

"I shall bear your soul to the Plane of Origins for my master's pleasure."
%E
%Cp Arc 00052
"You persist yet %p!  Good.  Now, you shall die!"
%E
%Cp Arc 00053
"I shall have %o from you, %p, then feast
upon your entrails!"
%E
%Cp Arc 00060
"Try your best, %p.  You cannot defeat me."
%E
%Cp Arc 00061
"I shall rend the flesh from your body whilst you still breathe!"
%E
%Cp Arc 00062
"First you, %p, then I shall destroy your mentor, %l."
%E
%Cp Arc 00063
"Tiring yet, %p?  I draw my power from my master and cannot
falter!"
%E
%Cp Arc 00064
"I shall rend thy soul from thy body and consume it!"
%E
%Cp Arc 00065
"You are far too %a -- it weakens you.  You shall die in this place."
%E
%Cp Arc 00066
"%d has forsaken you!  You are lost now!"
%E
%Cp Arc 00067
"A mere %r cannot hope to defeat me!"
%E
%Cp Arc 00068
"If you are the best %l can send, I have nothing to fear."
%E
%Cp Arc 00069
"Die %c!  I shall exhibit your carcass as a trophy."
%E
%Cc Arc 00070
The power of %o flows through your body!  You feel
as if you could now take on the Wizard of Yendor himself and win, but
you know you must return %o to %l.
%E
%Cp Arc 00080
The body of %n dissipates in a cloud of noxious fumes.
%E
%Cc Arc 00081
%lC touches %o briefly, gazes into it,
then smiles at you and says:

"Well done, %p.  You have defeated %n and
recovered %o.  But I fear that it shall never be safe
here.

Please take %o with you.  You, %p, can
guard it now far better than I.

May the blessings of %d follow you and guard you."
%E
# Assumes Itlachiayaque (smooth shield)
%Cc Arc 00082
%l looks over %os polished surface.

"Of all the items that have been excavated from %i,
this one has given us the greatest insight into Toltec civilisation.
Understand that guarding this artifact is no small responsibility,
%p. Now, it is time that you resumed your expedition for the
Amulet. %Z await you through the portal which brought you here."
%E
%Cc Arc 00090
"Welcome back, %p.  Have you progressed with your quest to
regain the Amulet of Yendor for %d?"
%E
%Cc Arc 00091
"Congratulations, %p.  I wondered if anyone could prevail against
the Wizard and the minions of Moloch.  Now, you must embark on one
final adventure.

"Take the Amulet, and find your way onto the Astral Plane.
There you must find the altar of %d and sacrifice the
Amulet on that altar to fulfill your destiny.

"Remember, your path now should always be upwards."
%E
%Cc Arc 00200
You are at a university, but which one.  The buildings are similar but this
place is confusing.  It feels as if something is definitely wrong.  You need
to figure out what is going wrong.
%E
%Cc Arc 00201
Welcome %p!  Have you ever wanted to leave home forever and go on a never
ending quest which is most likely to result in your death?
I am talking about an adventure so good that songs will be written of it!
You will never hear them because you will be dead, but they will be epic!
To start your quest in earnest please find and return to me with a relic
known as "The Pick-Axe of the Ancients"!
%E
%Cc Arc 00202
Have you lost faith in this digging for corpes mumbo jumbo?
I know I have and I think the two of us could take down this whole
organization!  We could gain all the power they have been keeping from us!
If this sounds good to you, you can turn TRAITOR and return to me with
a relic known as "The Sack of Infinite Depth".  If you do you can 
turn into a TRAITOR and we can rule these fools that think digging is fun.
%E
%Cc Arc 00203
Have you found "The Pick Axe of the Ancients" yet?  Once you have that
I can send you to your doom.
%E
%Cc Arc 00204
Have you found "The Sack of Infinite Depth" yet?  Once you have that
we can start to overthrow this place.
%E
%Cc Arc 00205
You have it!  You are ready for the ultimate quest now.  I told you
that you would die, but really I just wanted to be sure that you were
truly ready.  You are ready.  As such I give you my blessing and this
key which will allow you to enter your real quest!
%E
%Cc Arc 00206
Excellent.  You have it!  We can finally throw off this tyranny.
Together we will make a difference!  This key will help you to start
our journey of conquest.
%E
%Cc Arc 00368
You are at a university, but which one.  The buildings are similar but this
place is confusing.  It feels as if something is definitely wrong.
Additionally your body seems to be acting strangely.  Your clock speed is
higher than it ever has been and you cannot control it!  You need to figure
out a solution as soon as possible!

OH NOW, NOW YOU ARE SURROUNDED!
%E
#
#      Anachronounbinder
#
%Cc Acu 00001
Something is wrong. You cannot feel the Elder Brain as you have in the past.
%E
%Cp Acu 00002
You return to %H.
%E
%Cp Acu 00003
You are back at %H.

You have an odd feeling this may be the last time you ever come here.
%E
%Cp Acu 00005
"UNITY WAS NEAR"
%E
%Cp Acu 00006
"WE TRIED"
%E
%Cp Acu 00007
"KILL THE LICH"
%E
%Cp Acu 00008
"ILLITHIDS ARE STRONG"
%E
%Cp Acu 00009
"THE ULITHARID IS MIGHTY"
%E
%Cp Acu 00010
"YOU DID IT"
%E
%Cp Acu 00011
"WE WILL BE SAVED"
%E
%Cp Acu 00012
"DEATH TO VESTIGES"
%E
%Cp Acu 00013
"FEAR NO UNDEAD"
%E
%Cp Acu 00014
"THE ELDER GOD WILL RETURN"
%E
%Cc Acu 00015
I see you made it back. The Elder Brain has been attacked.
We cannot risk another illithid to %nt and his undead rebels. 
%d's empire is falling. 

Let me see if you are ready for certain death.
%E
%Cp Acu 00016
"You have returned from farther up the time-stream, I see.
Let me check if you are strong enough now."
%E
%Cp Acu 00017
"You have traveled quite far up the time-stream now.
Let me check if you are strong enough now."
%E
%Cc Acu 00018
You have betrayed the Elder Brain. Begone. Only %L is pure.
%E
%Cc Acu 00019
"You are weak. You would die.
Go now, return to the future, and come back to us from farther up
the time-stream."
%E
%Cc Acu 00020
"You disrespect %d.

What distinguishes you from %n?   Return
to the future and rededicate yourself to %d."
%E
%Cc Acu 00021
"Illithocyte, you may now be ready to undertake the final preparations
for your mission."

"I know not how we are remembered. 
No gith slave could possibly overpower the forces of %d. 
The void fills with the spirits of our slave races.
We will fall to the foolish illithids who betray the Elder Brain
and attempt to seek their own eternity by meddling with The Gate."

"%nt and his spirits of our slaves have just begun attacks on Elder Brains.
All our knowledge now belongs to %nt and his abominations. 
You are ready now to travel to %i and recover %o."

"Should you be successful, you must recover the Amulet of Yendor
and use it to recover Ilsensine from The Void and close The Gate."

%E
%Cp Acu 00025
"Should you fail, the Illithid Empire will be no more."
%E
%Cp Acu 00026
"%n is an alhoon, a dangerous undead illich. He is mindless."
%E
%Cp Acu 00027
"Villithids will suck your mind and your life. Watch out for those abominations."
%E
%Cp Acu 00028
"With the power of %o you can prevent the fall of the greatest empire ever."
%E
%Cp Acu 00029
"%n's abominations include adversaries, illithids whose host controls them."
%E
%Cp Acu 00030
"Beware of neothelids and their many tentacles. They have committed grave sins."
%E
%Cp Acu 00031
"Be sure to take advantage of the items you have taken from spirits."
%E
%Cp Acu 00032
"The Illithid Cavern is full of abominations. May %d guide your steps."
%E
%Cp Acu 00033
"You will need to name a double lightsaber The Illithid Staff one day."
%E
%Cp Acu 00034
"I hope you found luck in the future, for there is surely
none left in this fading world."
%E
%Cc Acu 00035
You stand before the Illithid Cavern. 
You hear dripping water echo throughout the cavern.
A sense of dread hangs over this once great place.
The knowledge and memories here have deteriorated 
and this place lays in waste. 
%E
%Cp Acu 00036
Once again, you arrive at the Illithid Cavern.
%E
%Cc Acu 00040
You have reached %i. The air here is heavier.
You feel closer to the collective suppressed minds of the 
slaves of the illithid empire. %n will have hell to pay. 
%E
%Cp Acu 00041
You have returned to %i.
%E
%Cc Acu 00050
You will die, %r. %d will never stop the rebellion of civilization.
%E
%Cc Acu 00051
I will bind your spirit when I finish you.
%E
%Cp Acu 00052
You blood will feed my villithids.
%E
%Cp Acu 00053
The knowledge of %o is mine!
%E
%Cp Acu 00060
The Alignment Thing will dismember you!
%E
%Cp Acu 00061
You will never use %o to save %d!
%E
%Cp Acu 00062
I'll bind your spirit to my pet neothelid!
%E
%Cp Acu 00063
Through death I will live forever!
%E
%Cp Acu 00064
The knowledge of %o makes me stronger than you.
%E
%Cp Acu 00065
Defeat is the only end you can meet.
%E
%Cp Acu 00066
Death means nothing to me.
%E
%Cp Acu 00067
I fear no god.
%E
%Cp Acu 00068
You are nothing more than a grunt.
%E
%Cp Acu 00069
How does it feel to be a pawn for %d?
%E
%Cc Acu 00070
The Elder Cerebral Fluid glows briefly. Your mind opens up in new ways to new
ideas and you understand the universe differently.

You must return to %l, to learn
the details of the next and final stage of the plan.
%E
%Cp Acu 00080
%n breathes his dying curses. His body blows away into the wind and
his spirit cannot survive here.
%E
%Cc Acu 00081
%l looks wonderingly at %o.

"Well done, %s.  You have succeed where
all others have failed, and returned hope to
our world.

"You must now travel deep into the earth, and
retrieve the Amulet of Yendor, that was stolen by
Moloch at the beginning of time.

"With %o inside The Illithid Staff, a double lightsaber you 
will have to name as a Keeper of The Gate, you must travel to
the Astral Plane and perform the Elder Memory invocation on
the altar of the void."

"From there you must travel through The Gate to The Far Void
and use the Amulet of Yendor to free her from banishment."

"Should you find yourself needing a double lightsaber after getting
the amulet you can return here."
%E
%Cc Acu 00082
"%o's power can help you in your fight against the spirits of the
near void. Should you lose it this will all be meaningless."
%E
%Cc Acu 00090
"You must return to the future and finish the plan."
%E
%Cc Acu 00091
"You've done it!  But there is still nothing you can do for us
here in the past."

"With %o inside The Illithid Staff  you must travel to
the Astral Plane and perform the Elder Memory invocation on
the high altar of the void."

"From there you must travel through The Gate to The Far Void
and use the Amulet of Yendor to free her from banishment."
%E
%Cc Acu 00200
%E
%Cc Acu 00201
%E
%Cc Acu 00202
%E
%Cc Acu 00203
%E
%Cc Acu 00204
%E
%Cc Acu 00205
%E
%Cc Acu 00206
%E
%Cc Acu 00207
%E
%Cc Acu 00208
%E

#
#	Anachrononaut
#
%Cc Ana 00001
Suddenly, you find yourself back in the warrens surrounding the Last Bastion.
%E
%Cp Ana 00002
Once again, you return to the Last Bastion.
%E
%Cp Ana 00003
You are back at the Last Bastion.

You have an odd feeling this may be the last time you ever come here.
%E
%Cp Ana 00005
"The sepulchers have opened!  The Seraphs are rising to the surface!"
%E
%Cp Ana 00006
"They know our location.  This position will be overrun shortly."
%E
%Cp Ana 00007
"We're out of time."
%E
%Cp Ana 00008
"Ever since the Rapture of Slime, the puppets of the Black Web have
been appearing on the surface in great numbers."
%E
%Cp Ana 00009
"You must speak with Sara before the Last Bastion falls!"
%E
%Cp Ana 00010
"Have you seen the flowers at the end of time?"
%E
%Cp Ana 00011
"We're being overrun!"
%E
%Cp Ana 00012
"We're out of time."
%E
%Cp Ana 00013
"All the world has begun to move with the semblance of life."
%E
%Cp Ana 00014
"You retrieved the Annulus?  Why?  It won't save us now."
%E
%Cc Ana 00015
"I'm glad you were able to return.  For you, many days have
gone by since you were sent back, but for us, it's only been
a few minutes.

"The mission to the past was meant to be a one-way trip.
However, our Enemy's attack has forced us to send you 
back prematurely, and to recall you from farther down
the time-stream, in the hopes that you can complete the
final preparations for your mission.

"But, before I can tell you in more detail what you
must do, I must check to see if you have grown strong
enough to withstand the perils ahead."
%E
%Cp Ana 00016
"You have returned from farther down the time-stream, I see.
Let me check if you are strong enough now."
%E
%Cp Ana 00017
"You have traveled quite far down the time-stream now.
Let me check if you are strong enough now."
%E
%Cc Ana 00018
"%p, my %s!  How could you betray us!

"Begone!  Live out what remains of your cursed life in
the doomed, distant past!"
%E
%Cc Ana 00019
"%sC, you are not yet strong enough to undertake the mission
I must give you now.  The army of the bastions has tried, 
and failed, to complete this mission for our entire lives.

Go now, return to the past, and come back to us from farther down
the time-stream."
%E
%Cc Ana 00020
"%sC, I fear that you have strayed from your chosen path.

"The Enemy will exploit any weaknesses in your psyche.  Return
to the past and rededicate yourself to the %a path."
%E
%Cc Ana 00021
"%sC, you may now be ready to undertake the final preparations
for your mission.

"The great Enemy, the Grey Thought Entity called Ilsensine, comes to
Yggdrasil from the Far Realms that lie beyond it.  She entered our
world in the distant past, possibly even through the beginning.  For
eons, she lay dormant as the seed of inspiration, buried in the 
minds of the gods of Law.

"In this age before ages, the mind flayers ruled the universe, having
themselves traveled through far realms to that era from the distant
future.  They learned of that nascent thought, or brought knowledge
of it back from the future, and worshiped it as Ilsensine.

"Before the mind flayers could complete preparations for the rise of
the Enemy, they were overthrown by a revolt of the slave races, and
the great ring of Penumbra was broken.

"But the gods of Law, contemplating the strange natural order of
the mind flayers, stumbled on the Thought, and were consumed by
it.  The other gods of the heavens became aware of the Enemy and
fought against it, but they too were consumed one by one, until only
the gods of the earth remained.

"The mortal races of the earth were trapped between the new God
of the heavens and the old gods of earth.  But they were not
unprepared.

"Our ancestors discovered a silver bell that could open anything.
They turned the power of this bell against itself, opening a ring-
shaped hole in the world through which the foreign Thought Entity
could be ejected from the universe.

"The greatest hero of the age wielded this Annulus in battle
with the servants of Ilsensine, on the day of our birth when the
heavens fell to earth.  The Annulus was lost at Ground Zero in 
the defeat at the Battle of Heavenfall and the Night of Falling
Stars.

"It is too late to employ the Annulus against Ilsensine, for all
the base matter of the world now stirs with her thoughts.  The only
hope is to take the Annulus back into the past, to before Ilsensine
overran the heavens, and employ it against her then.  This is the
great mission for which you have spent your whole life training.

"However, the Annulus remains lost at Ground Zero.  All the 
armies of the Resistance have been unable to penetrate deep 
enough into enemy teritory to reach that place, and now there
are no armies left.  We have no choice but to send you, the Last
Hero of this or any age to come, alone in the hopes that you can
succeed where they failed.  Should you do so, you must return to
me so that I can tell you of the final stage of the plan."
%E
%Cp Ana 00025
"We are the final generation, born the day the heavens fell.  No more
will be born after us, unless you can change the course of history."
%E
%Cp Ana 00026
"The night of falling stars ended coordinated resistance on the
surface.  Only a few underground bastions survived the night."
%E
%Cp Ana 00027
"Should you meet a Dread Seraph, I can only suggest you run."
%E
%Cp Ana 00028
"You should make liberal use of magic maps and object detection."
%E
%Cp Ana 00029
"The Black Flowers are dangerous for their song, not their combat
prowess."
%E
%Cp Ana 00030
"Intoners are fast, seductive warriors, who sing many songs and
cast many spells.  I can only advise you to kill them quickly
from a distance."
%E
%Cp Ana 00031
"Beware the Army of Neverweres, or they will steal your
equipment and your blood."
%E
%Cp Ana 00032
"The remaining Troopers of the Last Bastion will hold the
line as long as they are able."
%E
%Cp Ana 00033
"Those Changed by exposure to the Far Realms of Insanity
require isolation suits to exist in our atmosphere.  If
the suit is breached, the Changed inside will eventually
boil away into poison mist."
%E
%Cp Ana 00034
"I hope you found luck in the past, for there is surely
none left in this fading world."
%E
%Cc Ana 00035
You have reached the ruins of a great city, destroyed in
the rain of falling stars that came after the great defeat
at the Battle of Heavenfall.  Beyond the city you see the
ever-expanding Penumbral zone rising into the night sky.

You will have to pass through the city and the nascent 
Penumbra if you are to reach Ground Zero, where the Annulus
was lost on the Eve of Falling Stars, on the day of your
birth.
%E
%Cp Ana 00036
Once again, you arrive at the ruins of the city.
%E
%Cc Ana 00040
An overwhelming feeling of being watched fills your mind.

You have reached Ground Zero, where Heaven fell to earth.
%E
%Cp Ana 00041
You have returned to Ground Zero.
%E
%Cc Ana 00050
UNUSED
%E
%Cc Ana 00051
UNUSED
%E
%Cp Ana 00052
UNUSED
%E
%Cp Ana 00053
UNUSED
%E
%Cp Ana 00060
UNUSED
%E
%Cp Ana 00061
UNUSED
%E
%Cp Ana 00062
UNUSED
%E
%Cp Ana 00063
UNUSED
%E
%Cp Ana 00064
UNUSED
%E
%Cp Ana 00065
UNUSED
%E
%Cp Ana 00066
UNUSED
%E
%Cp Ana 00067
UNUSED
%E
%Cp Ana 00068
UNUSED
%E
%Cp Ana 00069
UNUSED
%E
%Cc Ana 00070
You have recovered the Annulus, lost at the Battle of
Heavenfall on the Eve of Falling Stars.

You must return to Sara, if she yet lives, to learn
the details of the next and final stage of the plan.
%E
%Cp Ana 00080
UNUSED
%E
%Cc Ana 00081
Sara, the Last Oracle, looks wonderingly at the
Annulus.

"Well done, %s.  You have succeed where
all others have failed, and returned hope to
our world.

"You must now travel deep into the earth, and
retrieve the Amulet of Yendor, that was stolen by
Moloch at the beginning of time.

"With the Amulet in your possession, the gods will
allow you to climb up to the Astral Plane.  Once
there, you must use the Annulus to Annul the High
Altar of Ilsensine and eject her from this
universe."
%E
%Cc Ana 00082
"The Annulus is the pinnacle of mortal technology, created
by turning the power of the Bell of Opening upon itself,
creating a door through the universe through which even
the great Grey Thought Entity Ilsensine may be ejected.

"You must not loose it or fail to take it with you to
the Astral Plane, or all our struggles will have been
for naught."
%E
%Cc Ana 00090
"There is nothing more you can do for this version of me,
%s.  Go back to the past, seek the Amulet of Yendor, and
gain entrance to the Astral Plane, where the final confrontation
with the servants of Ilsensine awaits you."
%E
%Cc Ana 00091
"You've done it!  But there is still nothing you can do for us
now.  Go back to the past, and bear the Amulet of Yendor up
to the Astral Plane.  Once there, you must use the Annulus
to Annul the High Altar of Ilsensine and eject her from
this universe before she can consume the heavens and the
earth."
%E
%Cc Ana 00200
%E
%Cc Ana 00201
%E
%Cc Ana 00202
%E
%Cc Ana 00203
%E
%Cc Ana 00204
%E
%Cc Ana 00205
%E
%Cc Ana 00206
%E
%Cc Ana 00207
%E
%Cc Ana 00208
%E
#
#	Android Anachrononaut
#
%Cc And 00001
You have found the Bastions' portal, that leads through time to 
the  warrens surrounding what was the last-surviving Bastion.

Data-sync indicates a hero from the Bastion passed through this 
place on their way to a battle site known as Ground Zero.  
The Annulus, though taken from Ground Zero, has followed the 
unbroken ring of time back to that place.

You should hasten to Ground Zero, for there is nothing for you
in the shattered remains of the Bastion.
%E
%Cp And 00002
Once again, you pass through the portal.
%E
%Cp And 00003
UNUSED
%E
%Cp And 00005
UNUSED
%E
%Cp And 00006
UNUSED
%E
%Cp And 00007
UNUSED
%E
%Cp And 00008
UNUSED
%E
%Cp And 00009
UNUSED
%E
%Cp And 00010
UNUSED
%E
%Cp And 00011
UNUSED
%E
%Cp And 00012
UNUSED
%E
%Cp And 00013
UNUSED
%E
%Cp And 00014
UNUSED
%E
%Cc And 00015
UNUSED
%E
%Cp And 00016
UNUSED
%E
%Cp And 00017
UNUSED
%E
%Cc And 00018
UNUSED
%E
%Cc And 00019
UNUSED
%E
%Cc And 00020
UNUSED
%E
%Cc And 00021
UNUSED
%E
%Cp And 00025
UNUSED
%E
%Cp And 00026
UNUSED
%E
%Cp And 00027
UNUSED
%E
%Cp And 00028
UNUSED
%E
%Cp And 00029
UNUSED
%E
%Cp And 00030
UNUSED
%E
%Cp And 00031
UNUSED
%E
%Cp And 00032
UNUSED
%E
%Cp And 00033
UNUSED
%E
%Cp And 00034
UNUSED
%E
%Cc And 00035
The ruins here are just barely recognizable.  In this 
city, there was a laboratory where research into 
autonomous thaumaturgic war machines was conducted.

You came on-line in that laboratory, and underwent 
preliminary testing in and around this city.  As your
sister wrote, it seems the city has since been destroyed
in a meteor bombardment.  Beyond the city you see a growing
disk of distorted matter rising into the night sky.

The data synced from the Bastion net indicates that you will
need to pass that zone to reach the Ground Zero battle site.

...Perhaps you should search for your sisters while you're
in the city?
%E
%Cp And 00036
Once again, you arrive at the ruins of the city.
%E
%Cc And 00040
An overwhelming feeling of being watched fills your mind.

It seems you have reached Ground Zero.
%E
%Cp And 00041
You have returned to Ground Zero.
%E
%Cc And 00050
UNUSED
%E
%Cc And 00051
UNUSED
%E
%Cp And 00052
UNUSED
%E
%Cp And 00053
UNUSED
%E
%Cp And 00060
UNUSED
%E
%Cp And 00061
UNUSED
%E
%Cp And 00062
UNUSED
%E
%Cp And 00063
UNUSED
%E
%Cp And 00064
UNUSED
%E
%Cp And 00065
UNUSED
%E
%Cp And 00066
UNUSED
%E
%Cp And 00067
UNUSED
%E
%Cp And 00068
UNUSED
%E
%Cp And 00069
UNUSED
%E
%Cc And 00070
You have recovered the Annulus, lost at the Battle of
Heavenfall on the Eve of Falling Stars, retrieved,
and lost again.

You must break the ring of time.
%E
%Cp And 00080
UNUSED
%E
%Cc And 00081
UNUSED
%E
%Cc And 00082
UNUSED
%E
%Cc And 00090
UNUSED
%E
%Cc And 00091
UNUSED
%E
%Cc And 00200
%E
%Cc And 00201
%E
%Cc And 00202
%E
%Cc And 00203
%E
%Cc And 00204
%E
%Cc And 00205
%E
%Cc And 00206
%E
%Cc And 00207
%E
%Cc And 00208
%E
#
#	Barbarian
#
%Cc Bar 00001
Warily you scan your surroundings, all of your senses alert for signs
of possible danger.  Off in the distance, you can %x the familiar shapes
of %H.

But why, you think, should %l be there?

Suddenly, the hairs on your neck stand on end as you detect the aura of
evil magic in the air.

Without thought, you ready your weapon, and mutter under your breath:

    "By %d, there will be blood spilt today."
%E
%Cp Bar 00002
Once again, you near %H.  You know that %l
will be waiting.
%E
%Cp Bar 00003
Again, and you think possibly for the last time, you approach
%H.
%E
%Cp Bar 00005
"The battles here have been good -- our enemies' blood soaks the soil!"
%E
%Cp Bar 00006
"Remember that glory is crushing your enemies beneath your feet!"
%E
%Cp Bar 00007
"There has been little treasure to loot, since the horde arrived."
%E
%Cp Bar 00008
"The horde is mighty in numbers, but they have little courage."
%E
%Cp Bar 00009
"%lC is a strange one, but he has helped defend us."
%E
%Cp Bar 00010
"The battles here have been good -- our enemies' blood soaks the soil!"
%E
%Cp Bar 00011
"Remember that glory is crushing your enemies beneath your feet!"
%E
%Cp Bar 00012
"Times will be good again, now that the horde is vanquished."
%E
%Cp Bar 00013
"You have brought our clan much honor in defeating %n."
%E
%Cp Bar 00014
"You will be a worthy successor to %l."
%E
%Cc Bar 00015
"Ah, %p.  You have returned at last.  The world is in dire
need of your help.  There is a great quest you must undertake.

"But first, I must see if you are ready to take on such a challenge."
%E
%Cp Bar 00016
"%p, you are back.  Are you ready now for the challenge?"
%E
%Cp Bar 00017
"Again, you stand before me, %p.  Surely you have prepared yourself."
%E
%Cc Bar 00018
"Pah!  You have betrayed the gods, %p.  You will never attain
the glory which you aspire to.  Your failure to follow the true path has
closed this future to you.

"I will protect these people as best I can, but soon %n will overcome
me and destroy all who once called you %s.  Now begone!"
%E
%Cc Bar 00019
"%p, I fear that you are as yet too inexperienced to face
%n.  Only %Ra with the help of %d could ever hope to
defeat him."
%E
%Cc Bar 00020
"%pC!  You have wandered from the path of the %a!
If you attempt to overcome %n in this state, he will surely
enslave your soul.  Your only hope, and ours, lies in your purification.
Go forth, and return when you feel ready."
%E
%Cc Bar 00021
"The world is in great need of your assistance, %p.

"About six months ago, I learned that a mysterious sorcerer, known
as %n, had begun to gather a large group of cutthroats and brigands
about him.

"At about the same time, these people you once rode with `liberated' a
potent magical talisman, %o, from a Turanian caravan.

"%nC and his Black Horde swept down upon %i and defeated
the people there, driving them out into the desert.  He has taken
%o, and seeks to bend it to his will.  I detected the
subtle changes in the currents of fate, and joined these people.
Then I sent forth a summons for you.

"If %n can bend %o to his will, he will become
almost indestructible.  He will then be able to enslave the minds of
men across the world.  You are the only hope.  The gods smile upon you,
and with %d behind you, you alone can defeat %n.

"You must go to %i.  From there, you can track down
%n, defeat him, and return %o to us.  Only
then will the world be safe."
%E
%Cp Bar 00025
"%nC is strong in the dark arts, but not immune to cold steel."
%E
%Cp Bar 00026
"Remember that %n is a great sorcerer.  He lived in the time
of Atlantis."
%E
%Cp Bar 00027
"If you fail, %p, I will not be able to protect these people long."
%E
%Cp Bar 00028
"To enter %i, you must be very stealthy.  The horde will be on
guard."
%E
%Cp Bar 00029
"Call upon %d in your time of need."
%E
%Cp Bar 00030
"May %d protect you, and guide your steps."
%E
%Cp Bar 00031
"If you can lay hands upon %o, carry it for good fortune."
%E
%Cp Bar 00032
"I cannot stand against %ns sorcery.  But %d will help you."
%E
%Cp Bar 00033
"Do not fear %n.  I know you can defeat him."
%E
%Cp Bar 00034
"You have a great road to travel, %p, but only after you defeat
%n."
%E
%Cc Bar 00035
The scent of water comes to you in the desert breeze.  You know that
you have located %i.
%E
%Cp Bar 00036
Yet again you have a chance to infiltrate %i.
%E
%Cc Bar 00040
The hairs on the nape of your neck lift as you sense an energy in the
very air around you.  You fight down a primordial panic that seeks to
make you turn and run.  This is surely the lair of %n.
%E
%Cp Bar 00041
Yet again you feel the air around you heavy with malevolent magical energy.
%E
%Cc Bar 00050
"So.  This is what that second rate sorcerer %l sends to do his bidding.
I have slain many before you.  You shall give me little sport.

"Prepare to die, %c."
%E
%Cp Bar 00051
"I have wasted too much time on you already.  Now, you shall die."
%E
%Cp Bar 00052
"You return yet again, %c!  Are you prepared for death now?"
%E
%Cp Bar 00053
"I shall have %o back, you pitiful excuse for %ca.
And your life as well."
%E
%Cp Bar 00060
"My pets will dine on your carcass tonight!"
%E
%Cp Bar 00061
"You are a sorry excuse for %ra."
%E
%Cp Bar 00062
"Run while you can, %c.  My next spell will be your last."
%E
%Cp Bar 00063
"I shall use your very skin to bind my next grimoire."
%E
%Cp Bar 00064
"%d cannot protect you now.  Here, you die."
%E
%Cp Bar 00065
"Your %a nature makes you weak.  You cannot defeat me."
%E
%Cp Bar 00066
"Come, %c.  I shall kill you, then unleash the horde on your tribe."
%E
%Cp Bar 00067
"Once you are dead, my horde shall finish off %l, and your tribe."
%E
%Cp Bar 00068
"Fight, %c, or are you afraid of the mighty %n?"
%E
%Cp Bar 00069
"You have failed, %c.  Now, my victory is complete."
%E
%Cc Bar 00070
As you pick up %o, you feel the power of it
flowing through your hands.  It seems to be in two or more places
at once, even though you are holding it.
%E
%Cc Bar 00080
%nC falls to the ground, and utters a last curse at you.  Then his
body fades slowly, seemingly dispersing into the air around you.  You
slowly become aware that the overpowering aura of magic in the air has
begun to fade.
%E
%Cc Bar 00081
When %l sees %o, he smiles, and says:

    Well done, %p.  You have saved the world from certain doom.
    What, now, should be done with %o?

    These people, brave as they are, cannot hope to guard it from
    other sorcerers who will detect it, as surely as %n did.

    Take %o with you, %p.  It will guard you in
    your adventures, and you can best guard it.  You embark on a
    quest far greater than you realize.

    Remember me, %p, and return when you have triumphed.  I
    will tell you then of what you must do.  You will understand when the
    time comes.
%E
%Cc Bar 00082
%l gazes reverently at %o, then back at you.

"You are its keeper now, and the time has come to resume your search
for the Amulet.  %Z await your return through the
magic portal which brought you here."
%E
%Cp Bar 00090
"Tell us, %p, have you fared well on your great quest?"
%E
%Cc Bar 00091
"This is wondrous, %p.  I feared that you could not possibly
succeed in your quest, but here you are in possession of the Amulet
of Yendor!

"I have studied the texts of the magi constantly since you left.  In
the Book of Skelos, I found this:

    %d will cause a child to be sent into the world.  This child is to
    be made strong by trial of battle and magic, for %d has willed it so.
    It is said that the child of %d will recover the Amulet of Yendor
    that was stolen from the Creator at the beginning of time.

"As you now possess the amulet, %p, I suspect that the Book
speaks of you.

    The child of %d will take the Amulet, and travel to the Astral
    Plane, where the Great Temple of %d is to be found.  The Amulet
    will be sacrificed to %d, there on His altar.  Then the child will
    stand by %d as champion of all %cP for eternity.

"This is all I know, %p.  I hope it will help you."
%E
%Cc Bar 00200
Back in my village.  It seems to be filled with unreast, the former
peaceful agression is no longer there.  I must figure out what is
going on and then continue with my true quest.
%E
%Cc Bar 00201
Greetings Barbarian, I am Conan and if you want to continue with the
path of the barbarian please collect your battle axe and return to me.
%E
%Cc Bar 00202
%E
%Cc Bar 00203
%p, I told you that I want to see you swing your axe.  Don't return
to me without it.
%E
%Cc Bar 00204
%E
%Cc Bar 00205
%E
%Cc Bar 00206
%E
%Cc Bar 00207
%E
%Cc Bar 00208
%E
%Cc Bar 00300
%E
%Cc Bar 00301
%E
%Cc Bar 00302
%E
%Cc Bar 00303
%E
%Cc Bar 00308
%E
%Cc Bar 00309
%E
%Cc Bar 00310
%E
%Cc Bar 00311
%E
%Cc Bar 00356
%E
%Cc Bar 00357
%E
%Cc Bar 00358
%E
%Cc Bar 00359
%E
#
#	Berserker
#
%Cc Bez 00001
Warily you scan your surroundings, all of your senses alert for signs
of possible danger.  Off in the distance, you can %x the familiar shapes
of %H.

But why, you think, should %l be there?

Suddenly, the hairs on your neck stand on end as you detect the aura of
evil magic in the air.

Without thought, you ready your weapon, and mutter under your breath:

    "By %d, there will be blood spilt today."
%E
%Cp Bez 00002
Once again, you near %H.  You know that %l
will be waiting.
%E
%Cp Bez 00003
Again, and you think possibly for the last time, you approach
%H.
%E
%Cp Bez 00005
"The battles here have been good -- our enemies' blood soaks the soil!"
%E
%Cp Bez 00006
"Remember that glory is crushing your enemies beneath your feet!"
%E
%Cp Bez 00007
"There has been little treasure to loot, since the horde arrived."
%E
%Cp Bez 00008
"The horde is mighty in numbers, but they have little courage."
%E
%Cp Bez 00009
"%lC is a strange one, but he has helped defend us."
%E
%Cp Bez 00010
"The battles here have been good -- our enemies' blood soaks the soil!"
%E
%Cp Bez 00011
"Remember that glory is crushing your enemies beneath your feet!"
%E
%Cp Bez 00012
"Times will be good again, now that the horde is vanquished."
%E
%Cp Bez 00013
"You have brought our clan much honor in defeating %n."
%E
%Cp Bez 00014
"You will be a worthy successor to %l."
%E
%Cc Bez 00015
"Ah, %p.  You have returned at last.  The world is in dire
need of your help.  There is a great quest you must undertake.

"But first, I must see if you are ready to take on such a challenge."
%E
%Cp Bez 00016
"%p, you are back.  Are you ready now for the challenge?"
%E
%Cp Bez 00017
"Again, you stand before me, %p.  Surely you have prepared yourself."
%E
%Cc Bez 00018
"Pah!  You have betrayed the gods, %p.  You will never attain
the glory which you aspire to.  Your failure to follow the true path has
closed this future to you.

"I will protect these people as best I can, but soon %n will overcome
me and destroy all who once called you %s.  Now begone!"
%E
%Cc Bez 00019
"%p, I fear that you are as yet too inexperienced to face
%n.  Only %Ra with the help of %d could ever hope to
defeat him."
%E
%Cc Bez 00020
"%pC!  You have wandered from the path of the %a!
If you attempt to overcome %n in this state, he will surely
enslave your soul.  Your only hope, and ours, lies in your purification.
Go forth, and return when you feel ready."
%E
%Cc Bez 00021
"The world is in great need of your assistance, %p.

"About six months ago, I learned that a mysterious sorcerer, known
as %n, had begun to gather a large group of cutthroats and brigands
about him.

"At about the same time, these people you once rode with `liberated' a
potent magical talisman, %o, from a Turanian caravan.

"%nC and his Black Horde swept down upon %i and defeated
the people there, driving them out into the desert.  He has taken
%o, and seeks to bend it to his will.  I detected the
subtle changes in the currents of fate, and joined these people.
Then I sent forth a summons for you.

"If %n can bend %o to his will, he will become
almost indestructible.  He will then be able to enslave the minds of
men across the world.  You are the only hope.  The gods smile upon you,
and with %d behind you, you alone can defeat %n.

"You must go to %i.  From there, you can track down
%n, defeat him, and return %o to us.  Only
then will the world be safe."
%E
%Cp Bez 00025
"%nC is strong in the dark arts, but not immune to cold steel."
%E
%Cp Bez 00026
"Remember that %n is a great sorcerer.  He lived in the time
of Atlantis."
%E
%Cp Bez 00027
"If you fail, %p, I will not be able to protect these people long."
%E
%Cp Bez 00028
"To enter %i, you must be very stealthy.  The horde will be on
guard."
%E
%Cp Bez 00029
"Call upon %d in your time of need."
%E
%Cp Bez 00030
"May %d protect you, and guide your steps."
%E
%Cp Bez 00031
"If you can lay hands upon %o, carry it for good fortune."
%E
%Cp Bez 00032
"I cannot stand against %ns sorcery.  But %d will help you."
%E
%Cp Bez 00033
"Do not fear %n.  I know you can defeat him."
%E
%Cp Bez 00034
"You have a great road to travel, %p, but only after you defeat
%n."
%E
%Cc Bez 00035
The scent of water comes to you in the desert breeze.  You know that
you have located %i.
%E
%Cp Bez 00036
Yet again you have a chance to infiltrate %i.
%E
%Cc Bez 00040
The hairs on the nape of your neck lift as you sense an energy in the
very air around you.  You fight down a primordial panic that seeks to
make you turn and run.  This is surely the lair of %n.
%E
%Cp Bez 00041
Yet again you feel the air around you heavy with malevolent magical energy.
%E
%Cc Bez 00050
"So.  This is what that second rate sorcerer %l sends to do his bidding.
I have slain many before you.  You shall give me little sport.

"Prepare to die, %c."
%E
%Cp Bez 00051
"I have wasted too much time on you already.  Now, you shall die."
%E
%Cp Bez 00052
"You return yet again, %c!  Are you prepared for death now?"
%E
%Cp Bez 00053
"I shall have %o back, you pitiful excuse for %ca.
And your life as well."
%E
%Cp Bez 00060
"My pets will dine on your carcass tonight!"
%E
%Cp Bez 00061
"You are a sorry excuse for %ra."
%E
%Cp Bez 00062
"Run while you can, %c.  My next spell will be your last."
%E
%Cp Bez 00063
"I shall use your very skin to bind my next grimoire."
%E
%Cp Bez 00064
"%d cannot protect you now.  Here, you die."
%E
%Cp Bez 00065
"Your %a nature makes you weak.  You cannot defeat me."
%E
%Cp Bez 00066
"Come, %c.  I shall kill you, then unleash the horde on your tribe."
%E
%Cp Bez 00067
"Once you are dead, my horde shall finish off %l, and your tribe."
%E
%Cp Bez 00068
"Fight, %c, or are you afraid of the mighty %n?"
%E
%Cp Bez 00069
"You have failed, %c.  Now, my victory is complete."
%E
%Cc Bez 00070
As you pick up %o, you feel the power of it
flowing through your hands.  It seems to be in two or more places
at once, even though you are holding it.
%E
%Cc Bez 00080
%nC falls to the ground, and utters a last curse at you.  Then his
body fades slowly, seemingly dispersing into the air around you.  You
slowly become aware that the overpowering aura of magic in the air has
begun to fade.
%E
%Cc Bez 00081
When %l sees %o, he smiles, and says:

    Well done, %p.  You have saved the world from certain doom.
    What, now, should be done with %o?

    These people, brave as they are, cannot hope to guard it from
    other sorcerers who will detect it, as surely as %n did.

    Take %o with you, %p.  It will guard you in
    your adventures, and you can best guard it.  You embark on a
    quest far greater than you realize.

    Remember me, %p, and return when you have triumphed.  I
    will tell you then of what you must do.  You will understand when the
    time comes.
%E
%Cc Bez 00082
%l gazes reverently at %o, then back at you.

"You are its keeper now, and the time has come to resume your search
for the Amulet.  %Z await your return through the
magic portal which brought you here."
%E
%Cp Bez 00090
"Tell us, %p, have you fared well on your great quest?"
%E
%Cc Bez 00091
"This is wondrous, %p.  I feared that you could not possibly
succeed in your quest, but here you are in possession of the Amulet
of Yendor!

"I have studied the texts of the magi constantly since you left.  In
the Book of Skelos, I found this:

    %d will cause a child to be sent into the world.  This child is to
    be made strong by trial of battle and magic, for %d has willed it so.
    It is said that the child of %d will recover the Amulet of Yendor
    that was stolen from the Creator at the beginning of time.

"As you now possess the amulet, %p, I suspect that the Book
speaks of you.

    The child of %d will take the Amulet, and travel to the Astral
    Plane, where the Great Temple of %d is to be found.  The Amulet
    will be sacrificed to %d, there on His altar.  Then the child will
    stand by %d as champion of all %cP for eternity.

"This is all I know, %p.  I hope it will help you."
%E

#
#	Blind Master
#
%Cc Bmt 00001
Warily you scan your surroundings, all of your senses alert for signs
of possible danger.  Off in the distance, you can %x the familiar shapes
of %H.

But why, you think, should %l be there?

Suddenly, the hairs on your neck stand on end as you detect the aura of
evil magic in the air.

Without thought, you ready your weapon, and mutter under your breath:

    "By %d, there will be blood spilt today."
%E
%Cp Bmt 00002
Once again, you near %H.  You know that %l
will be waiting.
%E
%Cp Bmt 00003
Again, and you think possibly for the last time, you approach
%H.
%E
%Cp Bmt 00005
"The battles here have been good -- our enemies' blood soaks the soil!"
%E
%Cp Bmt 00006
"Remember that glory is crushing your enemies beneath your feet!"
%E
%Cp Bmt 00007
"There has been little treasure to loot, since the horde arrived."
%E
%Cp Bmt 00008
"The horde is mighty in numbers, but they have little courage."
%E
%Cp Bmt 00009
"%lC is a strange one, but he has helped defend us."
%E
%Cp Bmt 00010
"The battles here have been good -- our enemies' blood soaks the soil!"
%E
%Cp Bmt 00011
"Remember that glory is crushing your enemies beneath your feet!"
%E
%Cp Bmt 00012
"Times will be good again, now that the horde is vanquished."
%E
%Cp Bmt 00013
"You have brought our clan much honor in defeating %n."
%E
%Cp Bmt 00014
"You will be a worthy successor to %l."
%E
%Cc Bmt 00015
"Ah, %p.  You have returned at last.  The world is in dire
need of your help.  There is a great quest you must undertake.

"But first, I must see if you are ready to take on such a challenge."
%E
%Cp Bmt 00016
"%p, you are back.  Are you ready now for the challenge?"
%E
%Cp Bmt 00017
"Again, you stand before me, %p.  Surely you have prepared yourself."
%E
%Cc Bmt 00018
"Pah!  You have betrayed the gods, %p.  You will never attain
the glory which you aspire to.  Your failure to follow the true path has
closed this future to you.

"I will protect these people as best I can, but soon %n will overcome
me and destroy all who once called you %s.  Now begone!"
%E
%Cc Bmt 00019
"%p, I fear that you are as yet too inexperienced to face
%n.  Only %Ra with the help of %d could ever hope to
defeat him."
%E
%Cc Bmt 00020
"%pC!  You have wandered from the path of the %a!
If you attempt to overcome %n in this state, he will surely
enslave your soul.  Your only hope, and ours, lies in your purification.
Go forth, and return when you feel ready."
%E
%Cc Bmt 00021
"The world is in great need of your assistance, %p.

"About six months ago, I learned that a mysterious sorcerer, known
as %n, had begun to gather a large group of cutthroats and brigands
about him.

"At about the same time, these people you once rode with `liberated' a
potent magical talisman, %o, from a Turanian caravan.

"%nC and his Black Horde swept down upon %i and defeated
the people there, driving them out into the desert.  He has taken
%o, and seeks to bend it to his will.  I detected the
subtle changes in the currents of fate, and joined these people.
Then I sent forth a summons for you.

"If %n can bend %o to his will, he will become
almost indestructible.  He will then be able to enslave the minds of
men across the world.  You are the only hope.  The gods smile upon you,
and with %d behind you, you alone can defeat %n.

"You must go to %i.  From there, you can track down
%n, defeat him, and return %o to us.  Only
then will the world be safe."
%E
%Cp Bmt 00025
"%nC is strong in the dark arts, but not immune to cold steel."
%E
%Cp Bmt 00026
"Remember that %n is a great sorcerer.  He lived in the time
of Atlantis."
%E
%Cp Bmt 00027
"If you fail, %p, I will not be able to protect these people long."
%E
%Cp Bmt 00028
"To enter %i, you must be very stealthy.  The horde will be on
guard."
%E
%Cp Bmt 00029
"Call upon %d in your time of need."
%E
%Cp Bmt 00030
"May %d protect you, and guide your steps."
%E
%Cp Bmt 00031
"If you can lay hands upon %o, carry it for good fortune."
%E
%Cp Bmt 00032
"I cannot stand against %ns sorcery.  But %d will help you."
%E
%Cp Bmt 00033
"Do not fear %n.  I know you can defeat him."
%E
%Cp Bmt 00034
"You have a great road to travel, %p, but only after you defeat
%n."
%E
%Cc Bmt 00035
The scent of water comes to you in the desert breeze.  You know that
you have located %i.
%E
%Cp Bmt 00036
Yet again you have a chance to infiltrate %i.
%E
%Cc Bmt 00040
The hairs on the nape of your neck lift as you sense an energy in the
very air around you.  You fight down a primordial panic that seeks to
make you turn and run.  This is surely the lair of %n.
%E
%Cp Bmt 00041
Yet again you feel the air around you heavy with malevolent magical energy.
%E
%Cc Bmt 00050
"So.  This is what that second rate sorcerer %l sends to do his bidding.
I have slain many before you.  You shall give me little sport.

"Prepare to die, %c."
%E
%Cp Bmt 00051
"I have wasted too much time on you already.  Now, you shall die."
%E
%Cp Bmt 00052
"You return yet again, %c!  Are you prepared for death now?"
%E
%Cp Bmt 00053
"I shall have %o back, you pitiful excuse for %ca.
And your life as well."
%E
%Cp Bmt 00060
"My pets will dine on your carcass tonight!"
%E
%Cp Bmt 00061
"You are a sorry excuse for %ra."
%E
%Cp Bmt 00062
"Run while you can, %c.  My next spell will be your last."
%E
%Cp Bmt 00063
"I shall use your very skin to bind my next grimoire."
%E
%Cp Bmt 00064
"%d cannot protect you now.  Here, you die."
%E
%Cp Bmt 00065
"Your %a nature makes you weak.  You cannot defeat me."
%E
%Cp Bmt 00066
"Come, %c.  I shall kill you, then unleash the horde on your tribe."
%E
%Cp Bmt 00067
"Once you are dead, my horde shall finish off %l, and your tribe."
%E
%Cp Bmt 00068
"Fight, %c, or are you afraid of the mighty %n?"
%E
%Cp Bmt 00069
"You have failed, %c.  Now, my victory is complete."
%E
%Cc Bmt 00070
As you pick up %o, you feel the power of it
flowing through your hands.  It seems to be in two or more places
at once, even though you are holding it.
%E
%Cc Bmt 00080
%nC falls to the ground, and utters a last curse at you.  Then his
body fades slowly, seemingly dispersing into the air around you.  You
slowly become aware that the overpowering aura of magic in the air has
begun to fade.
%E
%Cc Bmt 00081
When %l sees %o, he smiles, and says:

    Well done, %p.  You have saved the world from certain doom.
    What, now, should be done with %o?

    These people, brave as they are, cannot hope to guard it from
    other sorcerers who will detect it, as surely as %n did.

    Take %o with you, %p.  It will guard you in
    your adventures, and you can best guard it.  You embark on a
    quest far greater than you realize.

    Remember me, %p, and return when you have triumphed.  I
    will tell you then of what you must do.  You will understand when the
    time comes.
%E
%Cc Bmt 00082
%l gazes reverently at %o, then back at you.

"You are its keeper now, and the time has come to resume your search
for the Amulet.  %Z await your return through the
magic portal which brought you here."
%E
%Cp Bmt 00090
"Tell us, %p, have you fared well on your great quest?"
%E
%Cc Bmt 00091
"This is wondrous, %p.  I feared that you could not possibly
succeed in your quest, but here you are in possession of the Amulet
of Yendor!

"I have studied the texts of the magi constantly since you left.  In
the Book of Skelos, I found this:

    %d will cause a child to be sent into the world.  This child is to
    be made strong by trial of battle and magic, for %d has willed it so.
    It is said that the child of %d will recover the Amulet of Yendor
    that was stolen from the Creator at the beginning of time.

"As you now possess the amulet, %p, I suspect that the Book
speaks of you.

    The child of %d will take the Amulet, and travel to the Astral
    Plane, where the Great Temple of %d is to be found.  The Amulet
    will be sacrificed to %d, there on His altar.  Then the child will
    stand by %d as champion of all %cP for eternity.

"This is all I know, %p.  I hope it will help you."
%E

#
#	Role Player
#
%Cc Rpl 00001
Warily you scan your surroundings, all of your senses alert for signs
of possible danger.  Off in the distance, you can %x the familiar shapes
of %H.

But why, you think, should %l be there?

Suddenly, the hairs on your neck stand on end as you detect the aura of
evil magic in the air.

Without thought, you ready your weapon, and mutter under your breath:

    "By %d, there will be blood spilt today."
%E
%Cp Rpl 00002
Once again, you near %H.  You know that %l
will be waiting.
%E
%Cp Rpl 00003
Again, and you think possibly for the last time, you approach
%H.
%E
%Cp Rpl 00005
"The battles here have been good -- our enemies' blood soaks the soil!"
%E
%Cp Rpl 00006
"Remember that glory is crushing your enemies beneath your feet!"
%E
%Cp Rpl 00007
"There has been little treasure to loot, since the horde arrived."
%E
%Cp Rpl 00008
"The horde is mighty in numbers, but they have little courage."
%E
%Cp Rpl 00009
"%lC is a strange one, but he has helped defend us."
%E
%Cp Rpl 00010
"The battles here have been good -- our enemies' blood soaks the soil!"
%E
%Cp Rpl 00011
"Remember that glory is crushing your enemies beneath your feet!"
%E
%Cp Rpl 00012
"Times will be good again, now that the horde is vanquished."
%E
%Cp Rpl 00013
"You have brought our clan much honor in defeating %n."
%E
%Cp Rpl 00014
"You will be a worthy successor to %l."
%E
%Cc Rpl 00015
"Ah, %p.  You have returned at last.  The world is in dire
need of your help.  There is a great quest you must undertake.

"But first, I must see if you are ready to take on such a challenge."
%E
%Cp Rpl 00016
"%p, you are back.  Are you ready now for the challenge?"
%E
%Cp Rpl 00017
"Again, you stand before me, %p.  Surely you have prepared yourself."
%E
%Cc Rpl 00018
"Pah!  You have betrayed the gods, %p.  You will never attain
the glory which you aspire to.  Your failure to follow the true path has
closed this future to you.

"I will protect these people as best I can, but soon %n will overcome
me and destroy all who once called you %s.  Now begone!"
%E
%Cc Rpl 00019
"%p, I fear that you are as yet too inexperienced to face
%n.  Only %Ra with the help of %d could ever hope to
defeat him."
%E
%Cc Rpl 00020
"%pC!  You have wandered from the path of the %a!
If you attempt to overcome %n in this state, he will surely
enslave your soul.  Your only hope, and ours, lies in your purification.
Go forth, and return when you feel ready."
%E
%Cc Rpl 00021
"The world is in great need of your assistance, %p.

"About six months ago, I learned that a mysterious sorcerer, known
as %n, had begun to gather a large group of cutthroats and brigands
about him.

"At about the same time, these people you once rode with `liberated' a
potent magical talisman, %o, from a Turanian caravan.

"%nC and his Black Horde swept down upon %i and defeated
the people there, driving them out into the desert.  He has taken
%o, and seeks to bend it to his will.  I detected the
subtle changes in the currents of fate, and joined these people.
Then I sent forth a summons for you.

"If %n can bend %o to his will, he will become
almost indestructible.  He will then be able to enslave the minds of
men across the world.  You are the only hope.  The gods smile upon you,
and with %d behind you, you alone can defeat %n.

"You must go to %i.  From there, you can track down
%n, defeat him, and return %o to us.  Only
then will the world be safe."
%E
%Cp Rpl 00025
"%nC is strong in the dark arts, but not immune to cold steel."
%E
%Cp Rpl 00026
"Remember that %n is a great sorcerer.  He lived in the time
of Atlantis."
%E
%Cp Rpl 00027
"If you fail, %p, I will not be able to protect these people long."
%E
%Cp Rpl 00028
"To enter %i, you must be very stealthy.  The horde will be on
guard."
%E
%Cp Rpl 00029
"Call upon %d in your time of need."
%E
%Cp Rpl 00030
"May %d protect you, and guide your steps."
%E
%Cp Rpl 00031
"If you can lay hands upon %o, carry it for good fortune."
%E
%Cp Rpl 00032
"I cannot stand against %ns sorcery.  But %d will help you."
%E
%Cp Rpl 00033
"Do not fear %n.  I know you can defeat him."
%E
%Cp Rpl 00034
"You have a great road to travel, %p, but only after you defeat
%n."
%E
%Cc Rpl 00035
The scent of water comes to you in the desert breeze.  You know that
you have located %i.
%E
%Cp Rpl 00036
Yet again you have a chance to infiltrate %i.
%E
%Cc Rpl 00040
The hairs on the nape of your neck lift as you sense an energy in the
very air around you.  You fight down a primordial panic that seeks to
make you turn and run.  This is surely the lair of %n.
%E
%Cp Rpl 00041
Yet again you feel the air around you heavy with malevolent magical energy.
%E
%Cc Rpl 00050
"So.  This is what that second rate sorcerer %l sends to do his bidding.
I have slain many before you.  You shall give me little sport.

"Prepare to die, %c."
%E
%Cp Rpl 00051
"I have wasted too much time on you already.  Now, you shall die."
%E
%Cp Rpl 00052
"You return yet again, %c!  Are you prepared for death now?"
%E
%Cp Rpl 00053
"I shall have %o back, you pitiful excuse for %ca.
And your life as well."
%E
%Cp Rpl 00060
"My pets will dine on your carcass tonight!"
%E
%Cp Rpl 00061
"You are a sorry excuse for %ra."
%E
%Cp Rpl 00062
"Run while you can, %c.  My next spell will be your last."
%E
%Cp Rpl 00063
"I shall use your very skin to bind my next grimoire."
%E
%Cp Rpl 00064
"%d cannot protect you now.  Here, you die."
%E
%Cp Rpl 00065
"Your %a nature makes you weak.  You cannot defeat me."
%E
%Cp Rpl 00066
"Come, %c.  I shall kill you, then unleash the horde on your tribe."
%E
%Cp Rpl 00067
"Once you are dead, my horde shall finish off %l, and your tribe."
%E
%Cp Rpl 00068
"Fight, %c, or are you afraid of the mighty %n?"
%E
%Cp Rpl 00069
"You have failed, %c.  Now, my victory is complete."
%E
%Cc Rpl 00070
As you pick up %o, you feel the power of it
flowing through your hands.  It seems to be in two or more places
at once, even though you are holding it.
%E
%Cc Rpl 00080
%nC falls to the ground, and utters a last curse at you.  Then his
body fades slowly, seemingly dispersing into the air around you.  You
slowly become aware that the overpowering aura of magic in the air has
begun to fade.
%E
%Cc Rpl 00081
When %l sees %o, he smiles, and says:

    Well done, %p.  You have saved the world from certain doom.
    What, now, should be done with %o?

    These people, brave as they are, cannot hope to guard it from
    other sorcerers who will detect it, as surely as %n did.

    Take %o with you, %p.  It will guard you in
    your adventures, and you can best guard it.  You embark on a
    quest far greater than you realize.

    Remember me, %p, and return when you have triumphed.  I
    will tell you then of what you must do.  You will understand when the
    time comes.
%E
%Cc Rpl 00082
%l gazes reverently at %o, then back at you.

"You are its keeper now, and the time has come to resume your search
for the Amulet.  %Z await your return through the
magic portal which brought you here."
%E
%Cp Rpl 00090
"Tell us, %p, have you fared well on your great quest?"
%E
%Cc Rpl 00091
"This is wondrous, %p.  I feared that you could not possibly
succeed in your quest, but here you are in possession of the Amulet
of Yendor!

"I have studied the texts of the magi constantly since you left.  In
the Book of Skelos, I found this:

    %d will cause a child to be sent into the world.  This child is to
    be made strong by trial of battle and magic, for %d has willed it so.
    It is said that the child of %d will recover the Amulet of Yendor
    that was stolen from the Creator at the beginning of time.

"As you now possess the amulet, %p, I suspect that the Book
speaks of you.

    The child of %d will take the Amulet, and travel to the Astral
    Plane, where the Great Temple of %d is to be found.  The Amulet
    will be sacrificed to %d, there on His altar.  Then the child will
    stand by %d as champion of all %cP for eternity.

"This is all I know, %p.  I hope it will help you."
%E



#
#	Bard
#
%Cc Brd 00001
Suddenly, you see yourself at the surroundings of %H.
You smile as you recognize the land, remembering of the days you lived here,
learning the power of songs over nature, before you went on your voyages 
around the world.

But, wait... something is wrong.  The land looks desolated; the beautiful
river, which flow produced a soft music, now looks dead; the breeze,
once an inspiration to the music students, makes you shiver. The nymphs are
scattered and it seems all the muses abandoned the place. You feel something 
is wrong with the wild life here, too.  What happened to %H?
%E
%Cp Brd 00002
By %d, you can't bear seeing %H again in this sorry state!  You must hurry.
%E
%Cp Brd 00003
You are back at %H.
You have an odd feeling this may be the last time you ever come here.
%E
%Cp Brd 00005
"%lC managed to play a space-bending music to create the magic portal!"
%E
%Cp Brd 00006
"The muses are gone, and all the beauty of this place was taken... 
We are hopeless..."
%E
%Cp Brd 00007
"Hurry, %p!  %lC are waiting for you!!"
%E
%Cp Brd 00008
"%ns minions attacked us without warning!"
%E
%Cp Brd 00009
"The poor muses... they didn't stand a chance..."
%E
%Cp Brd 00010
"Do you want to buy a second hand harp? Just a couple chords are missing!"
%E
%Cp Brd 00011
"The magic portal now seems like it will remain stable for quite some time."
%E
%Cp Brd 00012
"Have you noticed how much stronger %l is since %o was recovered?"
%E
%Cp Brd 00013
"Thank %d!  We weren't positive you would defeat %n."
%E
%Cp Brd 00014
"I, too, have the desire to venture the world, and to use all the musical
knowledge we learn here to make the world a better place."
%E
%Cc Brd 00015
You see %l smile sadly as you approaches him.

"%pC, it has been a long time since you departed.  I hope you had made
good use of your musical abilities in your voyages, since you were my most
promising student.  But I did not called you to discuss that.

"%HC are in desperate need of your help, and you are to 
go on the most difficult task of your life. But first, let me hear your
voice to determine if you are already prepared for it..."
%E
%Cp Brd 00016
"Well, %p, one more time you returns to %H.
Perhaps you are now ready..."
%E
%Cp Brd 00017
"%pC, we do not have time for purposeless talking. Anyone who studies the
mysteries of music must understand that music is not supposed to
be only an entertainment. You were called for a very dangerous quest,
but you can only take it after you are really prepared!"
%E
%Cc Brd 00018
"You are not honoring your training, %p!

"You are expulsed from %H. Go away! I need to find
another one."
%E
%Cc Brd 00019
"%pC, you have not yet mastered your full potential to harmonize your
music with the world. You are a mere %r yet; the quest I have
for you will demand at least %Ra. Go, now, train yourself in
the arts you learned here, and return when you become more experienced."
%E
%Cc Brd 00020
"What is that, %p? You had deviated from the paths of %d?

"Remember what I taught you: music is a gift from the gods.
If you can not harmonize yourself with %d, you will not be able
to harmonize your music with any living creature.

"Go for now, %p. Learn the %a paths again, and only return when
you have purified yourself."
%E
%Cc Brd 00021
"%p, I see you are ready for this dire task.

"%HC was attacked by dozens of wild animals controlled by the 
mesmerizing voice of %n the siren, 
and %o was taken. 
She always envied the power %o has over nature and all 
living things. 

"%pC, I am too old and weak to go after %o.  You were
always my most promising student; it is over your shoulders the responsibility
of rescuing it.

"Please, take %o back from %n.  We do not know what
she can do with it, and it is supposed to be used to create harmony in this
world, not as an instrument to enslave nature.  You must travel to 
%i, find her lair at the old ruins there, and face
%n herself. %d be with you."
%E
%Cp Brd 00025
"Beware, for %n is immune to most songs."
%E
%Cp Brd 00026
"At %i you may face many beings controlled by %n. Be cunning."
%E
%Cp Brd 00027
"%nC can corrupt %o. Hurry!"
%E
%Cp Brd 00028
"%d will come to your aid when you call."
%E
%Cp Brd 00029
"Use %ns own ways against her; try to break her control over 
%is wild life."
%E
%Cp Brd 00030
"You will find the way to %i near the back of %H."
%E
%Cp Brd 00031
"Go forth with the blessings of %d."
%E
%Cp Brd 00032
"I will have my %gP watch for your return."
%E
%Cp Brd 00033
"Beware, %i can be a very dangerous place."
%E
%Cp Brd 00034
"You will feel when %o is near.  Proceed with care!"
%E
%Cc Brd 00035
You see %i. The entrance to the lair must be inside the old ruins...
%E
%Cp Brd 00036
You believe that you may once again invade %i.
%E
%Cc Brd 00040
You can feel in your soul that %o is very near; its presence
is soothing, even in this dark place.
%E
%Cp Brd 00041
The aura of %o tingles at the edge of your perception.
%E
%Cc Brd 00050
%nC holds %o close to her face, and she seems to be
quietly talking to it. After hearing you enter, she looks at you and her
cold stare makes you paralyzed for a second; then her beautiful, frightening
voice is heard:

"%lC sent one of his pupils instead of coming himself? 

"Mortal hands do not deserve to touch %o, its power is beyond 
your understanding. I can use its melodies to control all beings, maybe even 
nature itself... I know I can. It should always have been mine. I deserve it!"
%E
%Cc Brd 00051
"You again, %p?  You are not able to handle %o... how could 
a worm possibly understand the music of the gods?"
%E
%Cp Brd 00052
"I'm sure that your perseverance shall be the subject of innumerable
ballads, but you shall not be around to hear them, I fear!"
%E
%Cp Brd 00053
"Please. You are a mere %r, what could you possibly do?
You think I can fall for your songs and sleep like a weakling?
You do not deserve %o!"
%E
%Cp Brd 00060
"I am not susceptible to feeble enchanting songs, you fool!"
%E
%Cp Brd 00061
"Stop fighting. Just hear my voice... everything will be alright..."
%E
%Cp Brd 00062
"I shall make %H the palace of my empire over nature!
%oC was always meant for me..."
%E
%Cp Brd 00063
"Are you ready yet to beg for mercy?  I could be lenient..."
%E
%Cp Brd 00064
"You shall join the enslaved multitude I command!"
%E
%Cp Brd 00065
"Your soul belongs to me now, %p! Grovel before your queen!"
%E
%Cp Brd 00066
"Your faith in %d is for naught!  Come, submit to me now!"
%E
%Cp Brd 00067
"Go on, %p... You are just increasing my wrath..."
%E
%Cp Brd 00068
"My loyal servants shall take care of you!"
%E
%Cp Brd 00069
%nC laughs, and the ruins walls shake...
%E
%Cc Brd 00070
As you touch %o, its harmonic power infuses you with joy.
You finally understand what %l always meant when he talked about
harmonizing with the living beings throughout the music.  Although you feel in
your heart it accepting you as its new master, you know you must return it to
its rightful owner, %l.
%E
%Cc Brd 00080
%nC yells while her legs falter and she falls to the floor:

    No!  It can not be.  %oC is mine!  Mine!

%iC seems to shake as %n shrieks, 
and then everything is silence.
%E
%Cc Brd 00081
%lC notices %o in your possession,
smiles at you and says:

    I knew you could defeat %n and retrieve %o.
    You are truly destined to be a great %c.

    I feel %o has already chosen to be used by you.
    Do not be shy, my %S; it is yours know. May %d give you wisdom
    on how to use it.

    Now you are ready for a quest even greater. Go, and retrieve the
    Amulet of Yendor for %d.
%E
%Cc Brd 00082
"You are the keeper of %o now.  Return to %Z,
and continue with your quest."
%E
%Cp Brd 00090
"Come near, my %S, and share your adventures with me.
So, have you succeeded in your quest for the Amulet of Yendor?"
%E
%Cc Brd 00091
"Congratulations, %p.  I always knew that if anyone could succeed
in defeating the Wizard of Yendor and his minions, it would be you.

"Go now, and take the Amulet to the astral plane.  Once there, present
the Amulet on the altar of %d.  Along the way you shall pass through the
four elemental planes.  These planes are like nothing you have ever
experienced before, so be prepared!
"For this you were born, %s!  I am very proud of you."
%E
%Cc Brd 00200
%E
%Cc Brd 00201
%E
%Cc Brd 00202
%E
%Cc Brd 00203
%E
%Cc Brd 00204
%E
%Cc Brd 00205
%E
%Cc Brd 00206
%E
%Cc Brd 00207
%E
%Cc Brd 00208
%E
#
#	Binder
#
%Cc Bin 00001
Suddenly, you stand before the ruins of an ancient building. All 
around you, shadows flit and flicker below an indistinct sky. A
cold breeze blows in aimless breaths, bearing the rumor of distant
whispers.

You know this place well; though you have been here but once before,
and that in a dream. That night, as you stood over the strange, dry
corpse that sprawls alone within the shell of this ruined library,
the wind whispered to you with a thousand tounges, speaking the 
names that still ring in your ears, the names that drove you
into exile.

You do not dream now. The wind is filled with a muted tension, 
as of a scream just below the threshold of hearing, and dark
creatures stalk the wastes around %H.
%E
%Cp Bin 00002
Once again, you stand before %H.  You know that %l
still waits within.
%E
%Cp Bin 00003
Again, and you think possibly for the last time, you stand before
%H.
%E
%Cp Bin 00005
"Why have you returned? The Order of Seropaenes is hunting you!"
%E
%Cp Bin 00006
"Get out!"
%E
%Cp Bin 00007
"Go away! These fanatics never bothered us, before you left!"
%E
%Cp Bin 00008
"The baron is going to kill you, and all that have harbored you!"
%E
%Cp Bin 00009
"The Order of Seropaenes will hunt you down."
%E
%Cp Bin 00010
"Leave, now!"
%E
%Cp Bin 00011
"Go."
%E
%Cp Bin 00012
"This is no longer your home."
%E
%Cp Bin 00013
"Run, or the baron will kill you!"
%E
%Cp Bin 00014
....
%E
%Cc Bin 00015
For the second time in your life, you stand above the strange mumified 
corpse that lies alone in the ruined library.

You feel something reaching out to you, as though across an infinite
distance.
%E
%Cp Bin 00016
You stand again above the mumified corpse, and again you feel something
reach for you within your mind.
%E
%Cp Bin 00017
You stand again above the mumified corpse, and again you feel something
reach for you within your mind.
%E
%Cc Bin 00018
You feel that you have left your path, and will never again stand in
this place.
%E
%Cc Bin 00019
The reacher falls back, in failure. Perhaps %Ra could hear it.
%E
%Cc Bin 00020
You feel that you have left your path, and must return to the %a.
%E
%Cc Bin 00021
You reach out as well, and together you bridge the distance.

A bloody form now hangs before you, a form that may once have been
a man, now savaged by great beasts. So violent was the attack that
the beasts' teeth were torn from their sockets, and lodged in the
man's skin. The shear variety of teeth bears mute witness to the
number of assailants that dogged the man.

The thousand whisperers speak as one: "Dahlver-Nar; Dahlver of the
teeth; the first to listen, the first to speak. Dahlver-Nar, of
the Gates of Teeth, who built the way through which we reach."

The bloody form moans in pain and paws at it's ruined, 
toothless mouth with its ruined, tooth-torn hands.

"Another now seeks to close those Gates. A mortal man, who died
and yet walked on, who moulderd to dust, and yet thought on.
Acererak the Devourer, Acererak the skull; who lives and stands
and thinks now on both sides of the Gates, who has but to bite
down, to cut off the breeze through which we talk, to sever 
the way on which you walk."
%E
%Cp Bin 00025
...
%E
%Cp Bin 00026
...
%E
%Cp Bin 00027
...
%E
%Cp Bin 00028
...
%E
%Cp Bin 00029
...
%E
%Cp Bin 00030
...
%E
%Cp Bin 00031
...
%E
%Cp Bin 00032
...
%E
%Cp Bin 00033
...
%E
%Cp Bin 00034
...
%E
%Cc Bin 00035
This place, too, you know well, for it is the village of your waking
life, the village of your birth.

In your youth, the world was a simple place. You could see your whole
life, mapped out in the lives of your ancestors. You knew the one 
that you would wed, the church where you would marry, the land that 
you would work, and the place that you would lay until the world
was remade.

But all that was swept away in a single night, by the dream that
led to your exile.

Some strange magic is at work, for your village is not located near
the Lost Library. At least, you don't think it is, you never were
a traveler. You resolve to pass quickly through the village. You 
know of a passage to the woods outside town, through the church
catacombs.
%E
%Cp Bin 00036
You stand again in the waking world, in the village of your birth.
%E
%Cc Bin 00040
You have come upon a tower in the woods outside your village. You are
certain that this wasn't here when your exile began. You feel that 
Acererak is within.
%E
%Cp Bin 00041
You stand again before the tower.
%E
%Cc Bin 00050
"So, you are the one who dreamt of the Gate. All your false sinner
spirits will not avail you against me. I shall slay you, then return
beyond the Gate, to close the path your kind have opened into the world."
%E
%Cp Bin 00051
"I have wasted too much time on you already.  Now, you shall die."
%E
%Cp Bin 00052
"Once, I was lost, aimless, but now I serve the one true God!"
%E
%Cp Bin 00053
"Give me %o."
%E
%Cp Bin 00060
"This is your final night!"
%E
%Cp Bin 00061
"Your sinner spirits will not save you from me!"
%E
%Cp Bin 00062
"In God's Name!"
%E
%Cp Bin 00063
"You shall never pass the Gate!"
%E
%Cp Bin 00064
"You have reached the end of your path."
%E
%Cp Bin 00065
"Your %a nature makes you weak.  You cannot defeat me."
%E
%Cp Bin 00066
"Come, %c.  I shall kill you, then live forever."
%E
%Cp Bin 00067
"Once you are dead, there will be none to contest my 
hold over the Teeth."
%E
%Cp Bin 00068
"Fight, %c, or are you afraid of the mighty %n?"
%E
%Cp Bin 00069
"You have failed, %c.  Now, my victory is complete."
%E
%Cc Bin 00070
As you pick up %o, you feel the power of it
flowing through your hands.  It seems to be in two or more worlds
at once, even though you are holding it.
%E
%Cc Bin 00080
%nC falls to the ground, and utters a last curse at you.

    You fool! You have killed me, and all you love.
    There is an Enemy in the Void. She comes from outside
    the world, to drown it all in waves of Chaos!

His golden skull shatters to jewelled fragments when it hits.
The whispers on the wind grow more distinct, and the fragments
are drawn together by the breeze. You can here them clearly now.
It is Acererak's name they repeat.
%E
%Cc Bin 00081
Dahlver-Nar is still dead.
%E
%Cc Bin 00082
You pick %o back up.
%E
%Cp Bin 00090
...
%E
%Cc Bin 00091
...
%E
%Cc Bin 00200
%E
%Cc Bin 00201
%E
%Cc Bin 00202
%E
%Cc Bin 00203
%E
%Cc Bin 00204
%E
%Cc Bin 00205
%E
%Cc Bin 00206
%E
%Cc Bin 00207
%E
%Cc Bin 00208
%E
#
#	Cave(wo)man
#
%Cc Cav 00001
You descend through a barely familiar stairwell that you remember
%l showing you when you embarked upon your vision quest.

You arrive back at %H, but something seems
wrong here.  The usual smoke and glowing light of the fires of the
outer caves are absent, and an uneasy quiet fills the damp air.
%E
%Cp Cav 00002
Once again, you arrive back at %H.
%E
%Cp Cav 00003
For some reason, you think that this may be the last time you will
enter %H.
%E
%Cp Cav 00005
"We have not been able to gather as much food since the Giants sealed
off our access to the outer world."
%E
%Cp Cav 00006
"Since %n sent her minions, we have been constantly fighting."
%E
%Cp Cav 00007
"I have heard your vision quest was successful.  Is this so?"
%E
%Cp Cav 00008
"So, tell me, %p, how have you fared?"
%E
%Cp Cav 00009
"%lC grows old.  We know not who will guide us after he ascends."
%E
%Cp Cav 00010
"The rains have returned and the land grows lush again."
%E
%Cp Cav 00011
"Peace has returned, give thanks to %d!"
%E
%Cp Cav 00012
"Welcome back!  Did you find %o?"
%E
%Cp Cav 00013
"So, %p, tell us the story of your fight with %n."
%E
%Cp Cav 00014
"%lC grows old.  Perhaps you will guide us after he ascends."
%E
%Cc Cav 00015
"You have returned from your vision quest, %p.  Thank %d.

"We are in dire need of your help, my %S.

"But first, I must see if you are yet capable of the quest I would
ask you to undertake."
%E
%Cp Cav 00016
"Again, you return to us, %p.  Let me see if you are ready now."
%E
%Cp Cav 00017
"Ah, %p.  Are you finally ready?"
%E
%Cc Cav 00018
"%pC!  You have sealed our fate.  You seem unable to reform yourself,
so I must select another to take your place.

"Begone from %H!  You have betrayed us by choosing
the path of the %C over the true path of the %L.

"You no longer live in our eyes."
%E
%Cc Cav 00019
"Alas, %p, you are as yet too inexperienced to embark upon such
a difficult quest as that I propose to give you.

"%rA could not possibly survive the rigors demanded to find
%i, never mind to confront %n herself.

"Adventure some more, and you will learn the skills you will require.
%d decrees it."
%E
%Cc Cav 00020
"%pC!  You have deviated from my teachings.  You no longer follow
the path of the %a as you should.  I banish you from these caves, to
go forth and purify yourself.  Then, you might be able to accomplish this
quest."
%E
%Cc Cav 00021
"You are indeed ready now, %p.  I shall tell you a tale of
great suffering among your people:

"Shortly after you left on your vision quest, the caves were invaded by
the creatures sent against us by %n.

"She, herself, could not attack us due to her great size, but her minions
have harassed us ever since.  In the first attacks, many died, and the
minions of %n managed to steal %o.
They took it to %i and there, none of our
%g warriors have been able to go.

"You must find %i, and within it wrest
%o from %n.  She guards it as
jealously as she guards all treasures she attains.  But with it,
we can make our caves safe once more.

"Please, %p, recover %o for us, and return it here."
%E
%Cp Cav 00025
"%nC is immune to her own breath weapons.
You should use magic upon her that she does not use herself."
%E
%Cp Cav 00026
"When you encounter %n, call upon %d for assistance."
%E
%Cp Cav 00027
"There will be nowhere to hide inside %ns inner sanctum."
%E
%Cp Cav 00028
"Your best chance with %n will be to keep moving."
%E
%Cp Cav 00029
"Do not be distracted by the great treasures in %ns lair.
Concentrate on %o."
%E
%Cp Cav 00030
"%oC is the only object that %n truly fears."
%E
%Cp Cav 00031
"Do not be fooled by %ns size.  She is fast, and it is
rumored that she uses magic."
%E
%Cp Cav 00032
"I would send a party of %gP with you, but we will need all
of our strength to defend ourselves."
%E
%Cp Cav 00033
"Remember, be %a at all times.  This is your strength."
%E
%Cp Cav 00034
"If only we had an amulet of reflection, this would not have happened."
%E
%Cc Cav 00035
You %x many large claw marks on the ground.  The tunnels ahead
of you are larger than most of those in any cave complex you have
ever been in before.

Your nose detects the smell of carrion from within, and bones litter
the sides of the tunnels.
%E
%Cp Cav 00036
Once again, you approach %i.
%E
%Cc Cav 00040
You find yourself in a large cavern, with neatly polished walls, that
nevertheless show signs of being scorched by fire.

Bones litter the floor, and there are objects scattered everywhere.
The air is close with the stench of sulphurous fumes.

%nC is clearly visible, but she seems to be asleep.
%E
%Cp Cav 00041
Once again, you find yourself in the lair of %n.
%E
%Cc Cav 00050
"So, follower of %l, you seek to invade the lair of %n.
Only my meals are allowed down here.  Prepare to be eaten!"
%E
%Cp Cav 00051
"So, again you face me, %c.  No one has ever before escaped me.
Now I shall kill you."
%E
%Cp Cav 00052
"You are getting annoying, %c.  Prepare to die."
%E
%Cp Cav 00053
"I'll have %o from you, %c.  You shall die."
%E
%Cp Cav 00060
"You are weak, %c.  No challenge for the Mother of all Dragons."
%E
%Cp Cav 00061
"I grow hungry, %r.  You look like a nice appetizer!"
%E
%Cp Cav 00062
"Join me for lunch?  You're the main course, %c."
%E
%Cp Cav 00063
"With %o, I am invincible!  You cannot succeed."
%E
%Cp Cav 00064
"Your mentor, %l has failed.  You are nothing to fear."
%E
%Cp Cav 00065
"You shall die here, %c.  %rA cannot hope to defeat me."
%E
%Cp Cav 00066
"You, a mere %r challenge the might of %n?  Hah!"
%E
%Cp Cav 00067
"I am the Mother of all Dragons!  You cannot hope to defeat me."
%E
%Cp Cav 00068
"My claws are sharp now.  I shall rip you to shreds!"
%E
%Cp Cav 00069
"%d has deserted you, %c.  This is my domain."
%E
%Cc Cav 00070
As you pick up %o it seems heavy at first, but as you
hold it strength flows into your arms.

You suddenly feel full of power, as if nothing could possibly stand
in your path.
%E
%Cp Cav 00080
%nC sinks to the ground, her heads flailing about.
As she dies, a cloud of noxious fumes billows about her.
%E
%Cc Cav 00081
%lC glimpses %o in your possession.
He smiles and says:

    You have done it!  We are saved.  But I fear that %o
    will always be a target for %C forces who will want it for their
    own.

    To prevent further trouble, I would like you, %p,
    to take %o away with you.  It will help you as you
    quest for the Amulet of Yendor.
%E
%Cc Cav 00082
%l grasps %o proudly for a moment, then looks at you.

"You are its keeper now, and the time has come to resume your search
for the Amulet.  %Z await your return through the
magic portal which brought you here."
%E
%Cp Cav 00090
"%pC!  Welcome back.
How goes your quest to recover the Amulet for %d?"
%E
%Cc Cav 00091
"You have been successful, I see, %p.

"Now that the Amulet of Yendor is yours, here is what you must do:

"Journey upwards to the open air.  The Amulet you carry will then
take you into the Astral Planes, where the Great Temple of %d
casts its influence throughout our world.

"Sacrifice the Amulet on the altar.  Thus shall %d become supreme!"
%E
%Cc Cav 00200
%E
%Cc Cav 00201
%E
%Cc Cav 00202
%E
%Cc Cav 00203
%E
%Cc Cav 00204
%E
%Cc Cav 00205
%E
%Cc Cav 00206
%E
%Cc Cav 00207
%E
%Cc Cav 00208
%E
#
#	Convict
#
%Cc Con 00001
Somehow, you have been captured and teleported back to
%H!  But wait, the portal you went through is still
here.  You had heard your old mentor %l,
the prison chaplain who taught you the ways of
%d, calling for your help.  Also, %H
is not as you had left it.  There seems to be damage
to the walls, and you hear sounds of strife all
around you.
%E
%Cp Con 00002
You have returned to %H.  Somehow, things are even
worse now than when you were on your previous visit.  Has
%l managed to still hold out?
%E
%Cp Con 00003
The situation seems to degrade, and you wonder how long
your fellow %gp can hold out against the corrupt
guards and creatures of the Underdark that pervade the
formerly tranquil %H.
%E
%Cp Con 00005
"How did you manage to escape?"
%E
%Cp Con 00006
"How is life on the outside?"
%E
%Cp Con 00007
"Between the abusive guards, and the nasty vermin, I
don't know how we will hold out."
%E
%Cp Con 00008
"This place used to be so much nicer before %n
became corrupt."
%E
%Cp Con 00009
"You are really back?  I thought you were gone for
good."
%E
%Cp Con 00010
"Thank you for ridding us of %n.  I hope the
new warden will be better."
%E
%Cp Con 00011
"Take me with you!  I will be glad to be rid of this
awful place."
%E
%Cp Con 00012
"Don't forget to come back for us once you have
completed your quest!"
%E
%Cp Con 00013
"Thank you for coming back to help us in our hour
of need!"
%E
%Cp Con 00014
"Leave while you still can!  If you can escape,
maybe there is hope for the rest of us."
%E
%Cc Con 00015
"%p, I am very happy to see that you are
alive and well!  We were all proud of your daring
escape, and hoped that you were doing well.
Things have become much worse in your absence,
however, and we desperately need your help.  Let
me have a look at you, and see if you are ready."
%E
%Cp Con 00016
"I see that you are back, %p.  I hope that
you are now ready to help us?  Let me see if you
are."
%E
%Cp Con 00017
"Once again, you have returned.  Let me see if you
are finally ready to help us."
%E
%Cc Con 00018
"You have betrayed us all, %p!  Begone from
here, and don't come back!  You are not even worthy
to share a cell with the least of us now."
%E
%Cc Con 00019
"%p, I am afraid that a %r will be no
match for %n.  If I sent you now,
she would dispatch you all too easily.

"Continue your other quest, and practice your
skills.  Return to us once you have achieved the rank
of %R."
%E
%Cc Con 00020
"%p, I see that you are not yet a loyal servant of
%d.  Leave this place for now, and only
return when you have cleansed your spirit.  Only then
will you be ready to stand up to %n and
recover %o."
%E
%Cc Con 00021
"Yes, %p, it looks like you are now ready to
help us.  Things have become much worse since you
left.  The dungeons are overrun by vermin, guards
have become brutal and corrupt, and I believe that
%n has had dealings with dark powers.

"I had spent many years enchanting an iron spoon
with powers to help lead an escape from this place,
turning it into %o.
Unfortunately, %n stole it from me,
likely using it for dark, twisted purposes.

"We need your help to go down to the warden's level
to defeat the corrupt %n and recover
%o for us so that
%H will be safe again."
%E
%Cp Con 00025
"The sooner you are able to recover %o,
the better off we will be."
%E
%Cp Con 00026
"I am not sure what has happened, but even without
%o, %n will make a formidable opponent."
%E
%Cp Con 00027
"Stay true to the teachings of %d, and good
fortune will be with you."
%E
%Cp Con 00028
"I am afraid without the power of %o
to protect us, we will soon be overwhelmed."
%E
%Cp Con 00029
"%n used to be a woman of honor before turning
to dark ways.  It is much too late for
redemption, however."
%E
%Cp Con 00030
"%n is arrogant, and will try to diminish
your confidence.  Do not let yourself be
discouraged!"
%E
%Cp Con 00031
"You will have to be very alert, and will need
to use all of your cunning if you hope to
defeat %n."
%E
%Cp Con 00032
"Call upon the power of %d to protect you
when you encounter %n."
%E
%Cp Con 00033
"If you remain true to your faith, you should
be able to sense the power of %o when
you are near."
%E
%Cp Con 00034
"You should be able to defeat %n easily
enough in a fair fight.  Unfortunately, she doesn't
fight fair."
%E
%Cc Con 00035
This must be the level that leads to the warden's
area.  You must be getting closer to
%o now!
%E
%Cp Con 00036
Once again, you find yourself near the entrance to
the warden's area.  Hopefully, you can acquire
%o before it's too late!
%E
%Cc Con 00040
You sense the presence of %o as soon as you
enter this level.  If %o is here, then
%n must not be far away.
%E
%Cp Con 00041
Once again, you find yourself in the abode of
%n, and feel the presence of
%o.
%E
%Cc Con 00050
"So, %p.  You have returned, and are here to get
%o for %l?
What makes you think you can get it if
%l couldn't?  I have many
allies that have made me even stronger."
%E
%Cp Con 00051
"I see that you have returned, %p.  I
suggest you leave and save yourself while you still
have a chance."
%E
%Cp Con 00052
"Back again, %p?  You will certainly die in
your attempt to defeat me."
%E
%Cp Con 00053
"I will get %o from you, just as I did
%l!  You can not defeat me."
%E
%Cp Con 00060
"You should never come back.  You will not escape
here alive again!"
%E
%Cp Con 00061
"Even all of your pathetic lot put together would
not be enough to defeat me."
%E
%Cp Con 00062
"You are no more than lowly prison scum.  You are
unworthy to even challenge me."
%E
%Cp Con 00063
"Even %l could not stand up to me, so
you have no chance at all."
%E
%Cp Con 00064
"Even %o would not be enough to
make you my equal."
%E
%Cp Con 00065
"Your pathetic devotion to %d will not
save you, either."
%E
%Cp Con 00066
"After I kill you, I will go after %l next,
and any that dare to defy me again!"
%E
%Cp Con 00067
"Die with dishonor, lowly %c!"
%E
%Cp Con 00068
"Once a %c, always a %c."
%E
%Cp Con 00069
"How about you find yourself a cosy little cell,
and hope that I forgive your insolence?"
%E
%Cc Con 00070
As you pick up %o, you feel its power
flow through you, protecting you, and making you
more aware of your surroundings.  You know that
you need to get it back to %l as soon
as possible now.
%E
%Cc Con 00080
As %n approaches death, you see sudden
clarity in her eyes.

"What have I done?  Those demons have been clouding my mind.
Please forgive me, %p, although I know that I
probably do not deserve it.  Take 
%o back to %l
with my blessing."

With a final coughing fit, %n spasms, and her
eyes see no more.
%E
%Cc Con 00081
"Congratulations, %p!  You have returned with
your life, and with %o!  I had
planned to use %o to lead an
escape from here, but with %n defeated,
life should go back to normal before long.

"Whether I like it or not, I know my place is here.  I
see that %o has already attuned
itself to you.  I offer it to you in hopes that
it will aid in your quest to recover the Amulet
of Yendor." 
%E
%Cc Con 00082
%l looks upon %o
with fondness.
"You are its keeper now.  Take it with you back to
%Z, through the magic portal
that brought you here."
%E
%Cc Con 00090
"Welcome back, %p.  We have done well in your
absence.  How far have you come with your quest to
regain the Amulet of Yendor for %d?"
%E
%Cc Con 00091
"Congratulations, %p!  You have redeemed yourself
and proven yourself a worthy servant of %d,
and in doing so have made all of us proud.

"One final task remains for you now.  You must take
the Amulet up to the Great Temple of %d, on
the Astral plane.  There you must offer the Amulet
to %d."
%E
%Cc Con 00200
%E
%Cc Con 00201
%E
%Cc Con 00202
%E
%Cc Con 00203
%E
%Cc Con 00204
%E
%Cc Con 00205
%E
%Cc Con 00206
%E
%Cc Con 00207
%E
%Cc Con 00208
%E
#
#	Drow general quest
#
%Cc Dro 00001
You arrive in familiar surroundings.  In the distance, you %x 
%H, a great city of the Drow.

Your house's fortress is close before you. Something is wrong,
though.  The silver star of Lolth, token of the high council of
the matron mothers, is set over the gates.
%E
%Cp Dro 00002
Once again, you stand outside %H.
%E
%Cp Dro 00003
You have the oddest feeling that this may be the last time you
are to vist %H.
%E
%Cp Dro 00005
"You have been granted an audience with %l.  Don't keep her waiting!"
%E
%Cp Dro 00006
"The heretics of Eilistraee are besieging the city!"
%E
%Cp Dro 00007
"%lC will see to those pale-elf loving freaks."
%E
%Cp Dro 00008
"The path to the surface passes through %iC. 
Those failed priestesses have little respect for their betters!"
%E
%Cp Dro 00009
"Hail Lolth!"
%E
%Cp Dro 00010
"You have been granted an audience with %l.  Don't keep her waiting!"
%E
%Cp Dro 00011
"The heretics of Eilistraee have been routed, praise be to Lolth!"
%E
%Cp Dro 00012
"%lC certainly saw to those pale-elf loving freaks."
%E
%Cp Dro 00013
"I hope you taught those acursed driders some respect!"
%E
%Cp Dro 00014
"Hail Lolth!"
%E
%Cc Dro 00015
"%pC!  It is good that you have answered my summons.
%d requires your talents.

"But first, I must evaluate your abilities, to see if you 
have the required abilities to take on this holy mission."
%E
%Cp Dro 00016
"Once again, %p, you stand in our midst.  Are you ready now?"
%E
%Cp Dro 00017
"Ah, you are here again, %p.  I will test your readiness..."
%E
%Cc Dro 00018
"%pC!  You have doomed yourself.  You fairly radiate %L influences,
showing your treachery for all to see.

"You are hereby banished!  I revoke the grace of Lolth from you!"
%E
%Cc Dro 00019
"%p, you are yet too inexperienced to withstand the demands of
Lolth's holy mission.  %RA might just be able to do this thing.

"Return to us when you are worthy of this honor."
%E
%Cc Dro 00020
"You have strayed, %p!  You know that %d requires
that we maintain a pure devotion to things %a!

"Return when you have purified yourself, and not before!"
%E
%Cc Dro 00021
"You are indeed ready, %p.  This is your mission,
your holy quest from %d:

"The heretics of Eilistraee, treacherous daughter of Lolth,
have been sending missionaries into the city, infecting
our citizens with their debased teachings.

"This outrage cannot be alowed to stand. Your mission is
to travel through %i and up to the surface,
locate the grove of Eilistraee, and kill her heretic
priestess.  Bring me %o, her unholy sword,
as proof of your deed!

"Do this, and know the glory of Lolth! Fail, and know
everlasting torment! Go now!"
%E
%Cp Dro 00025
"There are many secret passages in %i."
%E
%Cp Dro 00026
"Why are you still here?  Get on with it, or face the wrath of Lolth!"
%E
%Cp Dro 00027
"Go now!"
%E
%Cp Dro 00028
"Serve Lolth in all things!"
%E
%Cp Dro 00029
"The Eilistraee heretics seek to bring down the clergy of Lolth."
%E
%Cp Dro 00030
"Eilistraee and her followers have always hated us."
%E
%Cp Dro 00031
"The blasphemous missionaries have set off a quake that shall bury
them alive!"
%E
%Cp Dro 00032
"Driders are strong, but they enjoy not the favor of Lolth."
%E
%Cp Dro 00033
"You tempt the wrath of Lolth with your delay."
%E
%Cp Dro 00034
"The heretics have formed a blasphemous alliance with the surface
elves."
%E
%Cc Dro 00035
You descend into the outer regions of %i.  You can hear
scuffling sounds in the corridors, and vague mumblings in the distance.

You know that there were many secret passageways in this complex.
%E
%Cc Dro 00036
Once again, you descend into %i.
%E
%Cc Dro 00040
You have arrived at the Grove of Eilistraee.  The accursed sunlight still
fills your eyes with painful darkness, but in the center of the trees 
you can hear voices raised in song, singing naive, heathen melodies in
honor of the bitch-goddess Eilistraee.
%E
%Cp Dro 00041
Once again, you enter the Grove of Eilistraee.
%E
%Cc Dro 00050
"Wait, %p!?  %p, is it really you?  It's me, %n!

"We were friends as girls, do you not recall?  Has %l sent you to 
kill me?  She is using you, decieving you. She fears to come and 
confront me herself, fears to leave the Underdark and face the sunlight.

"Please, give me a chance!  What we were taught as girls is not the truth.
Lolth is a wicked deity, not worthy of our service.  She has turned 
generations of drow against one another for her own amusement, just as she
has turned us against each other now.  Think, what the drow could do,
if we did not kill nine-tenths of our daughters in futile fratricide and
assassinations!

"We have a chance to break this cycle!  If we can free %H from
the clergy of Lolth, our acts will reverberate from one side of the 
Underdark to the other!"
%E
%Cp Dro 00051
"Please, speak to me!"
%E
%Cp Dro 00052
"Lolth is not worthy of your service!"
%E
%Cp Dro 00053
"That blade was a gift from Eilistraee!"
%E
%Cp Dro 00060
"Lolth has turned us against each other!"
%E
%Cp Dro 00061
"Think of your daughters! Do you want their blood spilt in petty squabbles!?"
%E
%Cp Dro 00062
"Help us end this!"
%E
%Cp Dro 00063
"Please don't make me kill you!"
%E
%Cp Dro 00064
"We have a chance to break this cycle!"
%E
%Cp Dro 00065
"%l is using you!"
%E
%Cp Dro 00066
"Help me free %H!"
%E
%Cp Dro 00067
"What we were taught as girls is not the truth!"
%E
%Cp Dro 00068
"Don't you remember your sister!?  Did you truly feel nothing, when you
drove the blade into her heart!?  Help me put an end to the killing!"
%E
%Cp Dro 00069
"You must not stop me.  I'll kill you, if I must!  But please, trust 
me!  Talk to me instead!"
%E
%Cc Dro 00070
The wind plays a mornful tune as it blows over %o, 
but it stops when you pick it up.  %lC will accept this blade
as proof that you have truly killed %n.
%E
%Cc Dro 00080
%nC falls to her knees, her life's-blood running down her chest and
onto the grass.

    Perhaps- *cough* Perhaps I was a fool to think I could change
    the drow.  Perhaps I was a fool to stand against Lolth.
    
    But please, %p, don't forget me!  Remember what I told you,
    and you may yet escape the knife!

She shivers for a moment longer, then lies still.
%E
%Cc Dro 00081
"%pC!  You have destroyed the foul heretics!  I only wish %n 
had been taken alive, I would have liked to ... instruct her as to 
the error of her ways.

"Your name will be entered in the annals of Lolth, and the tale of how
we bested the hordes of the traitor goddess Eilistraee will be told for
generations to come.

"You must now return to the Dungeons of Doom and your quest for the 
Amulet of Yendor.  With that divine relic, Lolth will finally be able
to put down her rebellious daughter!

"Take %o with you, if you wish.  Otherwise, you can take the 
Wrathful Spider, with which to kill your foes from a distance."
%E
# assumes Silver Starlight
%Cc Dro 00082
"This weapon was made by the surface elves for the high priestess
of Eilistraee, %n.  Befitting their obsession with frivolous music,
it has a flute built into the handle.  It can also be used to create
throwing stars, and imparts a silvery sheen to such weapons.

"Would you like to use this weapon in your quest, or would you 
prefer the ancient droven crossbow, the Wrathful Spider?"
%E
# assumes Wrathful Spider
%Cc Dro 00083
"This crossbow was made in the earliest days of our empire in
the Underdark.  With it, one need never run out of bolts.  
Unlike lesser crossbows, it can also fire multiple bolts in
one volley, though the damage inflicted by each bolt is not
so great."
%E
%Cp Dro 00090
"How have you fared on your holy quest for the Amulet
of Yendor?  Lolth does not tolerate failure!"
%E
%Cc Dro 00091
"You have it!  You have recovered the Amulet of Yendor!

"Whoever brings that to Lolth's high altar in the astral plane will
be exhalted above all others, and shall even be granted the rank of
demigoddess!

"I have been searching for that Amulet for many long years.  To 
think a mere %r would find it first!

"Well, I thank you for bringing it to me.  Your part in this
is done.

"Now DIE!"
%E
%Cc Dro 00101
You have returned to you house's fortress on the outskirts of
%i.  The silver star of Lolth is still set over the gates, token of
%n and the high council of the matron-mothers.

The hour of reckoning is at hand.
%E
%Cp Dro 00102
Once again, you have returned to %i.
%E
%Cp Dro 00103
IF YOU SEE THIS, IT IS A BUG
%E
%Cp Dro 00105
"We are so glad that you were able to shake off the webs of Lolth!"
%E
%Cp Dro 00106
"The followers of Lolth have launched several assaults on this Grove!"
%E
%Cp Dro 00107
"%lC was so relieved that you sided with us."
%E
%Cp Dro 00108
"You will have to go back through the Drider caves to reach
%iC. Though Lolth has betrayed them, the driders 
have little use for the followers of Eilistraee!"
%E
%Cp Dro 00109
"Eilistraee is not like her mother.  She saved us from the dark."
%E
%Cp Dro 00110
"We are so very glad that you were able to shake off the webs of Lolth!"
%E
%Cp Dro 00111
"The followers of Lolth have been thrown into disarray!"
%E
%Cp Dro 00112
"It's been a long time since I've seen %lC so happy."
%E
%Cp Dro 00113
"I hope you didn't have to kill many of those unfortunate driders."
%E
%Cp Dro 00114
"You have saved us and our goddess from the dark."
%E
%Cc Dro 00115
"%pC!  I am so glad that you decided to trust us!

"I think you already know what I must ask you to do:"
%E
%Cp Dro 00116
"%pC!  I am so glad that you decided to trust us!

"I think you already know what I must ask you to do:"
%E
%Cp Dro 00117
"%pC!  I am so glad that you decided to trust us!

"I think you already know what I must ask you to do:"
%E
%Cc Dro 00118
"%pC!  I thought I could trust you!  In your treachery, you have
doomed yourself.  Lolth has revoked her grace from you, and now
you have turned your back on Eilistraee as well.  I banish you
to %Z, and I pray to all the gods you one day find peace!
%E
%Cc Dro 00119
IF YOU SEE THIS, IT IS A BUG
%E
%Cc Dro 00120
IF YOU SEE THIS, IT IS A BUG
%E
%Cc Dro 00121
"We had initially hoped to avoid bloodshed altogether,
sending missionaries into %i to start an underground
religious countermovement.  And, indeed, met with some 
initial success.  However, our efforts enraged Lolth, and
%n, high priestess of Lolth, led a bloody purge of 
our missionaries and converts.

"%nC has since taken the offensive against us,
orchestrating a wide variety of assassination attempts
and outright assaults.  I now see that we must carry the
fight to %n and the matron-mothers if we are to have
any chance of freeing %i from Lolth's webs.

"You must be our sword in this.  You will be able to 
pass through the perimeter of %i unchallenged.
With a little good fortune, no one will know you've 
joined Eilistraee before you confront %n!
%E
%Cp Dro 00125
"There are many secret passages in the drider caves."
%E
%Cp Dro 00126
"Good luck!"
%E
%Cp Dro 00127
"Eilistraee will be with you, I know it."
%E
%Cp Dro 00128
"Lolth and her clergy must fall!"
%E
%Cp Dro 00129
"We must free the drow!"
%E
%Cp Dro 00130
"Go swiftly and silently."
%E
%Cp Dro 00131
"For the sake of all drow, we must not fail!"
%E
%Cp Dro 00132
"Watch out for driders."
%E
%Cp Dro 00133
"Beware the wrath of Lolth.  %nC will not be an easy opponent."
%E
%Cp Dro 00134
"%nC made a critical error, coming to the outskirts of %i."
%E
%Cc Dro 00135
You descend into the outer regions of %i.  You can hear
scuffling sounds in the corridors, and vague mumblings in the distance.

You know that there were many secret passageways in this complex.
%E
%Cc Dro 00136
Once again, you descend into %i.
%E
%Cc Dro 00140
You have returned to the Grove of Eilistraee, home base of the 
rebellion against the clergy of Lolth.
%E
%Cp Dro 00141
Once again, you have returned to the Grove of Eilistraee, 
home base of the rebellion against the clergy of Lolth.
%E
%Cc Dro 00150
"%pC!  Lolth has told us of your treachery!  Prepare to die!
%E
%Cp Dro 00151
"Now you die!"
%E
%Cp Dro 00152
"Accept your fate!  Die now!"
%E
%Cp Dro 00153
"Give that back!"
%E
%Cp Dro 00160
"You dare turn against Lolth!?  Even in death you shall not know peace!"
%E
%Cp Dro 00161
""%l is using you.  You won't survive this fight!"
%E
%Cp Dro 00162
"Even a drider's fate is too good for you!"
%E
%Cp Dro 00163
"I'll flay your soul!"
%E
%Cp Dro 00164
"Even a zombie's fate is too good for you!"
%E
%Cp Dro 00165
"You will never know peace!"
%E
%Cp Dro 00166
"I'll kill you and anyone who ever gave you shelter!"
%E
%Cp Dro 00167
"Your fate will be wispered of for generations to come!"
%E
%Cp Dro 00168
"You, a hero?  Don't make me laugh!  You killed two of your sisters,
stabbed one in the back and shot the other in the head, from ambush 
no less!  It was masterfully done!  What makes you think that 
Eilistraee would accept one such as you!"
%E
%Cp Dro 00169
"Your hands are as bloody as any of us!  Eilistraee or Lolth, you
will burn!"
%E
%Cc Dro 00170
The Rod's tentacles wave languidly at you as you pick it up.  There
is something unwholesome about this weapon.  You almost fear to let
it sense you.
%E
%Cc Dro 00180
%nC falls to her knees, blood running down her forehead and into
her eyes.  She curses you:

    You haven't seen the last of me.  You shall never escape
    the webs of Lolth...  and there are others still who would
    avenge me, who are bound to my aid by pacts sealed in blood!
    Gods of rot and decay and lust.  Enjoy your brief victory,
    I will have my re-

Her eyes go wide, and she vomits black ichor onto the ground.
Tentacles sprout from the stain, and from the corruption spreading
from her shadow.  The tentacles wave languidly for a moment, then
strike with frightening speed, dragging her down into the suddenly
contracting patch of corruption.
%E
%Cc Dro 00181
"%pC!  You did it!  We'll use the opening you have given us to send
the missionaries back in.  With a little help from Eilistraee, 
we'll free this whole city from Lolth's foul webs!

"If you're willing, you should now return to the Dungeons of Doom 
and your quest for the Amulet of Yendor.  With that divine relic, 
Eilistraee will finally be able to battle Lolth on equal footing,
or even from a position of greater power!"

"Take %o with you, if you wish.  Otherwise, Eilistraee will gift
you her greatest instrument, the Crescent Blade, that can cleave
even the necks of goddesses!"
%E
# assumes Tentacle Rod
%Cc Dro 00182
"This rod was gifted to %n while she served Zuggtmoy, demon
lady of rot and corruption, then consort of the Elder Elemental
Eye, the chained god Tharizdun, who seeks to consume all the
worlds and all the gods thereof.

%n and Zuggtmoy both betrayed the Eye, and each other, having 
planned from the beginning to use it for their own ends.  Any 
interaction with the Chained One is perilous, however, and its
service is not easy to foreswear.  It was likely Tharizdun who
sent the black tentacles that claimed %n as she lay dying.

"The Rod itself seems free of the taint of its father, however,
and there is little doubt that it is a powerful tool, 
capable of augmenting spellcasting and multiple debilitating 
attacks in melee.

"Would you like to use this weapon in your quest, or would you
prefer the Crescent Blade of Eilistraee?"
%E
# assumes Crescent Blade
%Cc Dro 00183
"This blade was forged by Eilistraee as a weapon against her
mother, Lolth.  It's pale moon-fires pass through armor, and
it can cleave even the head of a goddess from her shoulders."
%E
%Cp Dro 00190
"Welcome back, %pC.  How have you fared on your quest for the
Amulet of Yendor?"
%E
%Cc Dro 00191
"You have it!  You have recovered the Amulet of Yendor!
Now, I will tell you what must be done:

"The Amulet has within it magic, the capability to transport you to
the Astral Plane, where the high altar of Eilistraee resides.

"To activate this magic, you must travel upwards as far as you can.
When you reach the temple, sacrifice the Amulet to %d.

"Thus will you fulfill your destiny."
%E
%Cc Dro 00200
%E
%Cc Dro 00201
%E
%Cc Dro 00202
%E
%Cc Dro 00203
%E
%Cc Dro 00204
%E
%Cc Dro 00205
%E
%Cc Dro 00206
%E
%Cc Dro 00207
%E
%Cc Dro 00208
%E
#
#	Dwarf Noble A - Erebor
#	Note: Contains many direct or near-direct quotes from 
#		the Hobbit, by J. R. R. Tolkien.
#
%Cc Dna 00001
You arrive in familiar surroundings, standing at the foot
of Erebor, the Lonely Mountain.

Something is wrong, though.  Where once lay the bustling
city of Dale, there is now a burned out ruin, and a new
town of men has been built out on the lake.

What strange work of %d acount for such changes,
in the short time you have been gone?
%E
%Cp Dna 00002
Once again, you stand outside %H.
%E
%Cp Dna 00003
You have the oddest feeling that this may be the last time you
are to visit %H.
%E
%Cp Dna 00005
"Who are you?"
%E
%Cp Dna 00006
"The dwarves of yore made mighty spells,
While hammers fell like rining bells
In places deep, where dark things sleep,
In hollow halls beneath the fells."
%E
%Cp Dna 00007
"We make good armour and keen swords,
but we cannot again make mail or blade
to match those that were made before
the dragon came.  Many of our father's
secrets are lost."
%E
%Cp Dna 00008
"This is a dark buisness."
%E
%Cp Dna 00009
"We are the Dwarves of Erebor."
%E
%Cp Dna 00010
"%pC!  I am glad you returned to us."
%E
%Cp Dna 00011
"Goblets they carved there for themselves
And harps of gold; where no man delves
There lay they long, and many a song
Was sung unheard by men or elves."
%E
%Cp Dna 00012
"That was a dark buisness."
%E
%Cp Dna 00013
"We are the Dwarves of Erebor."
%E
%Cp Dna 00014
"You have found armor from the deepest
vaults of our fathers."
%E
%Cc Dna 00015
"Who are you? A dwarf warrior of Erebor, you say?
That kingdom fell long ago, its folk scattered to
the far corners of the world.

"You may be able to help us on our quest.  But 
first, I must take your measure, I must see if you 
have the required abilities to join us in this venture."
%E
%Cp Dna 00016
"Once again, %p, you have been returned.  Are you ready now?"
%E
%Cp Dna 00017
"Ah, you are here again, %p.  Allow me to determine your readiness..."
%E
%Cc Dna 00018
"%pC!  You seem unable to reform yourself, so I must select another 
to take your place.

"Begone from %H!  You have betrayed Erebor by choosing
the path of the %C over the true path of the %L.
%E
%Cc Dna 00019
"%p, you are yet too inexperienced to withstand the demands of that
which we need you to do.  %RA might just be able to do this thing.
%E
%Cc Dna 00020
"%pC!  You have wandered from the path of the %a!
If you venture into %i in this state, you will surely be
lost in the darkness below the world.  Your only hope, lies in your
purification.  Go forth, and return when you feel ready."
%E
%Cc Dna 00021
"You are indeed ready, %p.  I shall tell you what has transpired,
and why we so desperately need your help:

"There were lots of dragons in the North in the old days, and
gold was probably getting scarce up there, with the dwarves 
flying south or getting killed, and all the general waste and
destruction that dragons make going from bad to worse.  There
was a most specially greedy, strong and wicked worm called Smaug.
One day he flew up into the air and came south.

"Some of the dwarves who happened to be outside - well, from a
good way off we saw the dragon settle on our mountain in a spout
of flame.  The dwarves rushed out of their great gate; but there
was the dragon waiting for them.  None escaped that way.  Then he
crept in through the Front Gate and routed out all the halls, and
lanes, and tunnels, alleys, cellars, mansions and passages. After
that there were no more dwarves left alive inside, and he took 
all their wealth for himself.  Probably has piled it all up in a
great heap far inside, and sleeps on it for a bed.

"The few of us that were well outside sat and wept in hiding, and
cursed Smaug; and there we were unexpectedly joined by my father
and grandfather with singed beards.

"I had often wondered about my father's and my grandfather's
escape, but then I was given a map and a key by Gandalf the Grey,
and now I see that they had a private Side-door which only they 
knew about.  And now we mean to get back our stolen treasure,
and bring our curses home to Smaug - if we can.

"I'm still unclear how you came to be here, but if you will help
us, and avenge your people, you have my blessing.  The key is in
this sack here."
%E
%Cp Dna 00025
"Smaug blocked up the front gate long ago."
%E
%Cp Dna 00026
"The side-door is on the west side of the mountain."
%E
%Cp Dna 00027
"If you can find some of our ancestral armor, it will help you 
survive to return to us."
%E
%Cp Dna 00028
"Remember, trust in %d."
%E
%Cp Dna 00029
"Smaug has not been seen for many years, and now many eyes turn
to the mountain."
%E
%Cp Dna 00030
"My father and grand-father escaped through a secret door on the
Western slopes."
%E
%Cp Dna 00031
"Curse Smaug, and all his kind!"
%E
%Cp Dna 00032
"The dragon surely guards a great treasure-horde."
%E
%Cp Dna 00033
"Never laugh at live dragons."
%E
%Cp Dna 00034
"You may want to put any flamable materials in a sack before
confronting Smaug."
%E
%Cc Dna 00035
You stand before the Front Gate of Erebor, and marvel anew at 
what time has wrought.  All the trees have been burned off the
mountain, and the gate is ruined and collapsed.  You recall
the side entrance mentioned by Thorin, and feel for the key
in your pack.
%E
%Cc Dna 00036
Once again, you stand before the Front Gate.
%E
%Cc Dna 00040
As you exit the mountain, you are shocked to see an army of
orcs marching up the side.  Their banners show that they 
have come from all up and down the Misty Mountains.
%E
%Cp Dna 00041
Once again, you exit high up on the side of the mountain.
%E
%Cc Dna 00050
"Get'em boys!  They invaded our homes and killed the Great
Goblin!"
%E
%Cp Dna 00051
"I'll avenge my father!"
%E
%Cp Dna 00052
"I will wipe out the line of Durin!"
%E
%Cp Dna 00053
"Die!"
%E
%Cp Dna 00060
"Perish!"
%E
%Cp Dna 00061
"Come on, boys!"
%E
%Cp Dna 00062
"First I will kill you, then %l and all your folk!"
%E
%Cp Dna 00063
"I'll make you squeal!"
%E
%Cp Dna 00064
"Bring up the bone-breaker!"
%E
%Cp Dna 00065
"For Azog!"
%E
%Cp Dna 00066
"For the glory of the Great Eye!"
%E
%Cp Dna 00067
"Fall, and be forgotten!"
%E
%Cp Dna 00068
"You shall never again return to Erebor!"
%E
%Cp Dna 00069
"The treasure is MINE!"
%E
%Cc Dna 00070
This armor was made by the most skilled armorers of the old
Kingdom of Erebor, made for the King under the Mountain.
If Thror had managed to reach the armory before the dragon,
things might have been different.
%E
%Cc Dna 00080
The battered and bleeding %n slumps to the ground and gasps
out one last curse:

    You have defeated me, %p, but you shall never
    defeat the orcs.  We multiply like a raging fire, sweeping
    over the weak folk of elves, and men, and dwarves.  You 
    shall never be free of our hate!
%E
%Cc Dna 00081
"At last, Smaug is dead, and the orcs have been driven from
Erebor.  I do not know what strange work of %d brought
you to us, %p, but I am glad that brought you were."
%E
%Cc Dna 00082
"This is armor forged by our fathers in Erebor.  You must
take it with you on your quest for the Amulet, for you
will find no better armor."
%E
%Cp Dna 00090
"Welcome, %p.  How have you fared on your quest 
for the Amulet of Yendor?"
%E
%Cc Dna 00091
"You have it!  You have recovered the Amulet of Yendor!
Now attend to me, %p, and I will tell you what must be done:

"The Amulet has within it magic, the capability to transport you to
the Astral Plane, where the primary circle of %d resides.

"To activate this magic, you must travel upwards as far as you can.
When you reach the temple, sacrifice the Amulet to %d.

"Thus will you fulfill your destiny."
%E
#
#	Dwarf Noble B - Moria
#	Note: Contains many direct or near-direct quotes from the 
#		Lord of the Rings, by J. R. R. Tolkien.
#
%Cc Dnb 00001
You arrive in familiar surroundings.  You stand at the foot
of %H.

Your heart troubles you, though.  You know %d would not 
have guided you here, without great need.
%E
%Cp Dnb 00002
Once again, you stand at the foot of %H.
%E
%Cp Dnb 00003
You have the oddest feeling that this may be the last time you
are to enter %H.
%E
%Cp Dnb 00005
"%pC!  Well met."
%E
%Cp Dnb 00006
"The world was young, the mountains green,
No stain yet on the Moon was seen,
No words were laid on stream or stone
When Durin woke and walked alone."
%E
%Cp Dnb 00007
"The wealth of Moria was not in gold and jewels, but in mithril."
%E
%Cp Dnb 00008
"This is a dark buisness."
%E
%Cp Dnb 00009
"War is gathering."
%E
%Cp Dnb 00010
"%pC!  I have not seen you in many moons.  How do you fare?"
%E
%Cp Dnb 00011
"Balin is dead, then.  I feared it was so."
%E
%Cp Dnb 00012
"That was a dark buisness."
%E
%Cp Dnb 00013
"War is gathering."
%E
%Cp Dnb 00014
"Is that truely %o that I see you carrying?"
%E
%Cc Dnb 00015
"%pC!  Thank %d you have been called back.

"We are troubled.  But first, I must see if you have the
required abilities to redress our great woe."
%E
%Cp Dnb 00016
"Once again, %p, you have been called.  Are you ready now?"
%E
%Cp Dnb 00017
"Ah, you are here again, %p.  Allow me to determine your readiness..."
%E
%Cc Dnb 00018
"%pC!  You seem unable to reform yourself, so I must select another 
to take your place.

"Begone from %H!  You have betrayed us by choosing
the path of the %C over the true path of the %L.
%E
%Cc Dnb 00019
"%p, you are yet too inexperienced to withstand the demands of that
which we need you to do.  %RA might just be able to do this thing.
%E
%Cc Dnb 00020
"%pC!  You have wandered from the path of the %a!
If you venture into %i in this state, you will surely be
lost in the darkness below the world.  Your only hope, lies in your
purification.  Go forth, and return when you feel ready."
%E
%Cc Dnb 00021
"You are indeed ready, %p.  I shall tell you what has transpired,
and why we so desperately need your help:

"It is now many years ago that a shadow of disquiet fell upon
our people. Words began to be whispered in secret: it was
said that we were hemmed in a narrow place, and that greater
wealth and splendour would be found in a wider world. Some
spoke of Moria: the mighty works of our fathers that are called
in our own tongue Khazad-dum; and they declared that now at last
we had the power and numbers to return.

"Moria! Moria! Wonder of the northern world! Too deep we delved
there, and woke the nameless fear. Long have its vast mansions 
lain empty since the children of Durin fled. At last, however,
Balin listened to the whispers, and resolved to go; and though
I did not give leave willingly, he took with him Ori and Oin and
many of our folk, and they went away south.

"For a while we had news and it seemed good: messages reported 
that Moria had been entered and a great work begun there. Then
there was silence, and no word has ever come from Moria since.

"It falls to you to travel south to the gates of Moria, to find
what has become of Balin and our people. The forces of the Enemy
are gathering on our eastern borders, and war grows near. Should
we be attacked unlooked for out of the south, by orcs marching
in force from Moria, it would go ill for us indeed."
%E
%Cp Dnb 00025
"It is rumored that the gate-stream has dried up."
%E
%Cp Dnb 00026
"Beware the nameless terror."
%E
%Cp Dnb 00027
"If you can find %o, it will help you survive to return to us."
%E
%Cp Dnb 00028
"Remember, trust in %d."
%E
%Cp Dnb 00029
"War grows near."
%E
%Cp Dnb 00030
"Balin and his folk entered Moria through the East-gate,
in Dimrill Dale."
%E
%Cp Dnb 00031
"Too deep we delved in Moria, and woke a nameless fear."
%E
%Cp Dnb 00032
"Great treasures of the Dwarf-sires of old may still be
found in Moria."
%E
%Cp Dnb 00033
"There may yet be some small pieces of mithil unmined in
Moria."
%E
%Cp Dnb 00034
"Beware Durin's Bane."
%E
%Cc Dnb 00035
You find that the Gate-stream has been dammed, turning the 
shallow  valley before the Walls of Moria into a dark still 
lake. Neither sky nor sun is reflected on its sullen 
surface.

Once upon a time, the Elven Door stood open in those walls,
and through it flowed trade and traffic between the Elf-
lords of Hollin and the Dwarf Lords of Moria.  But that
Door was shut and lost long ago, and their maker and all
his kin have since vanished from the earth.
%E
%Cc Dnb 00036
Once again, you stand before the Walls of Moria.
%E
%Cc Dnb 00040
You have come to the one of the oldest portions of Moria: the
Second Hall of Old Khazad-dum.  Between the First and Second
Halls there is a great chasm, crossed by a single narrow bridge,
the Bridge of Khazad-dum.

There is a great fire in the depths, and on the bridge stands
a demon of the old world, a Balrog of Morgoth.
%E
%Cp Dnb 00041
Once again, you enter the second hall of Old Moria.
%E
%Cc Dnb 00050
The dark figure streaming with fire moves towards you. The 
shadow about it reaches out like two vast wings, and fire comes
from its nostrils.
%E
%Cp Dnb 00051
"Roar!"
%E
%Cp Dnb 00052
"Roar!"
%E
%Cp Dnb 00053
"Roar!"
%E
%Cp Dnb 00060
"Roar!"
%E
%Cp Dnb 00061
"Roar!"
%E
%Cp Dnb 00062
"Roar!"
%E
%Cp Dnb 00063
"Roar!"
%E
%Cp Dnb 00064
"Roar!"
%E
%Cp Dnb 00065
"Roar!"
%E
%Cp Dnb 00066
"Roar!"
%E
%Cp Dnb 00067
"Roar!"
%E
%Cp Dnb 00068
"Roar!"
%E
%Cp Dnb 00069
"Roar!"
%E
%Cc Dnb 00070
As you pick up the War-mask of Durin, your breath is stolen by awe. 
Long ago, in the First Age of the Sun and the Moon, the ancient 
Dwarf-Fathers wore masks such as this into battle against the 
first dragons, the wingless fire drakes of Morgoth.
%E
%Cc Dnb 00080
With a terrible cry, the Balrog falls forward, and its shadow
pluges down and vanishes.
%E
%Cc Dnb 00081
"So, Balin is dead, then. I feared it was so. Their end was
cruel, I fear. With the Balrog's fire blocking the East-gate
and the Watcher at the West-door, there was no where for them
to go to escape the teeming orcs. Their last stand was valiant,
but futile.

"You have done a great service for our people. Your actions
have greatly weakened the orcs, and though it may be many long
years before we once again attempt to reclaim the halls of 
Durin, you have at least slowed them from attacking Erebor
from the south."
%E
%Cc Dnb 00082
"The War-mask of Durin! This is a find beyond any that we had
hoped for in Moria! You must take this on your quest,
for it will keep you from harm."
%E
%Cp Dnb 00090
"Welcome, %p.  How have you fared on your quest 
for the Amulet of Yendor?"
%E
%Cc Dnb 00091
"You have it!  You have recovered the Amulet of Yendor!
Now attend to me, %p, and I will tell you what must be done:

"The Amulet has within it magic, the capability to transport you to
the Astral Plane, where the high temple of %d is located.

"To activate this magic, you must travel upwards as far as you can.
When you reach the temple, sacrifice the Amulet to %d.

"Thus will you fulfill your destiny."
%E
#
#	Elf
#
%Cc Elf 00001
You arrive in familiar surroundings.  In the distance, you %x 
%H, the place of worship to %d.

Something is wrong, though.  Surrounding the city are orcs!
And they've noticed you!
%E
%Cp Elf 00002
Once again, you stand before %H.
%E
%Cp Elf 00003
You have the oddest feeling that this may be the last time you
are to enter %H.
%E
%Cp Elf 00005
"A Elbereth Gilthoniel,
silivren penna miriel
o menel aglar elenath!"
%E
%Cp Elf 00006
"%nC continues to threaten the city.  But we hold fast."
%E
%Cp Elf 00007
"%lC is growing weak.  The magic required to defend the city drains us."
%E
%Cp Elf 00008
"Remember %i are hard to enter.  Beware the
monstrous spiders that live there."
%E
%Cp Elf 00009
"We must regain %o.  Without it we will be overrun."
%E
%Cp Elf 00010
"%pC!  I have not seen you in many moons.  How do you fare?"
%E
%Cp Elf 00011
"Birdsong has returned to the city, surely this means you have defeated %n."
%E
%Cp Elf 00012
"%lC seems to have regained some of her strength."
%E
%Cp Elf 00013
"So, tell us how you entered %i, in case some new evil arises there."
%E
%Cp Elf 00014
"Is that truely %o that I see you carrying?"
%E
%Cc Elf 00015
"%pC!  You have returned!  Thank %d.

"We have great need of you.  But first, I must see if you have the
required abilities to take on this responsibility."
%E
%Cp Elf 00016
"Once again, %p, you stand in our midst.  Are you ready now?"
%E
%Cp Elf 00017
"Ah, you are here again, %p.  Allow me to determine your readiness..."
%E
%Cc Elf 00018
"%pC!  You have doomed us all.  You fairly radiate %L influences
and weaken the power we have raised in this city as a result!

"Begone!  We renounce your %shood with us!  You are an outcast now!"
%E
%Cc Elf 00019
"%p, you are yet too inexperienced to withstand the demands of that
which we need you to do.  %RA might just be able to do this thing.

"Return to us when you have learned more, my %S."
%E
%Cc Elf 00020
"You have strayed, %p!  You know that %d requires that
we maintain a pure devotion to things %a!

"You must go from us.  Return when you have purified yourself."
%E
%Cc Elf 00021
"You are indeed ready, %p.  I shall tell you what has transpired,
and why we so desperately need your help:

"A short time ago, a great darkness fell over the greenwood,
and yrch tribes and monstrous spiders came out of the east in
droves. Under their leader, %n, they established
a fortress on Amon Lanc in the south of this... mirkwood.

"During the new moon, we were beset by hordes of orcs and goblins,
as you witnessed.  In the first onslaught a group, headed by 
%n himself, managed to breach the city and
steal %o.

"Since then, we have been besieged.  We do not know how much longer
we will be able to maintain our magical barriers.

"If we are to survive, you, %p, must infiltrate
%i.  There, you will find a pathway down, to the
underground castle of %n.  He has always coveted
%o, and will surely keep it on his person.

"Recover %o for us, %p!  Only then will %d be safe."
%E
%Cp Elf 00025
"It is rumored that the Uruk-hai have a pact 
with the Hill Ogres."
%E
%Cp Elf 00026
"%nC is strong, and very smart."
%E
%Cp Elf 00027
"Use %o, when you find it.  It will help you survive
to reach us."
%E
%Cp Elf 00028
"Remember, let %d be your guide."
%E
%Cp Elf 00029
"Call upon %d when you face %n.
The very act of doing so will infuriate him, and give you advantage."
%E
%Cp Elf 00030
"%n and his kind have always hated us."
%E
%Cp Elf 00031
"We cannot hold the grove much longer, %p.  Hurry!"
%E
%Cp Elf 00032
"To infiltrate %i, you must be very stealthy."
%E
%Cp Elf 00033
"Remember that %n is a braggart.  Trust not what he says."
%E
%Cp Elf 00034
"You can triumph, %p, if you trust in %d."
%E
%Cc Elf 00035
You descend into the outer regions of %i.  You can hear
scuffling sounds in the corridors, and vague mumblings in the distance.

You remember that a %g once told you that there were many secret
passageways in this complex.
%E
%Cc Elf 00036
Once again, you descend into %i.
%E
%Cc Elf 00040
You descend into a weird place, in which roughly cut cave-like walls
join with smooth, finished ones, as if someone was in the midst of
finishing off the construction of a subterranean complex.

Off in the distance, you hear the sounds of a large, raucous gathering.
%E
%Cp Elf 00041
Once again, you enter the distorted castle of the %n.
%E
%Cc Elf 00050
"So, %c.  %lC has sent you to recover %o.

"Well, I shall keep that bauble.  It pleases me.  You, %c, shall die."
%E
%Cp Elf 00051
"Back again, eh?  Well, a mere %r is no threat to me!  Die, %c!"
%E
%Cp Elf 00052
"You haven't learned your lesson, %c.  You can't kill me!  You shall die now."
%E
%Cp Elf 00053
"I shall have %o from you, %r.  Then I shall
kill you."
%E
%Cp Elf 00060
"Your %d is nothing, %c.  You are mine now!"
%E
%Cp Elf 00061
"Run away little %c!  You can never hope to defeat %n!"
%E
%Cp Elf 00062
"My orcish servants will rip you to shreds!"
%E
%Cp Elf 00063
"I shall display your head as a trophy.  What do you think about that wall?"
%E
%Cp Elf 00064
"I shall break your %ls city, and destroy all the %gP!"
%E
%Cp Elf 00065
"%d has abandoned you, %c.  You are doomed."
%E
%Cp Elf 00066
"%rA?  %lC sends a mere %r against me?  Hah!"
%E
%Cp Elf 00067
"%lC has failed, %c.  %oC will never leave here."
%E
%Cp Elf 00068
"You really think you can defeat me, eh %c?  You are wrong!"
%E
%Cp Elf 00069
"You weaken, %c.  I shall kill you now."
%E
%Cc Elf 00070
As you pick up %o, it seems to glow, and a warmth
fills you completely.  You realize that its power is what has protected
your %sp against their enemies for so long.

You must now return it to %l without delay -- their lives depend
on your speed.
%E
%Cc Elf 00080
%nC collapses to the ground, cursing you and %l, then says:

    You have defeated me, %r!  But I curse you one final time, with my
    dying breath!  You shall die before you leave my castle!
%E
%Cc Elf 00081
"%pC!  You have succeeded!  I feared it was not possible!

"You have returned with %o!

"I fear, now, that the Enemy will rise again and plot yet another raid.
But this will take some time, and if you can recover the Amulet of 
Yendor for %d before that happens, we will be eternally safe.

"Take %o with you.  It will aid in your quest for
the Amulet."
%E
# assumes crystal
%Cc Elf 00082
"The palantiri came from beyond Westernesse, from Eldamar. 
Feanor himself, maybe, wrought them in days so long ago that 
the time cannot be measured in years.

"This is the last of the seven. You are its keeper now, 
and the time has come for it to aid you in your search for 
the Amulet.  %Z await your return through 
the magic portal that brought you here."
%E
# assumes Longbow
%Cc Elf 00083
%l flexs %o reverently.

"With this wondrous bow, one need never run out of arrows.
You are its keeper now, and the time has come to resume your
search for the Amulet.  %Z await your return
through the magic portal that brought you here."
%E
%Cp Elf 00090
"Welcome, %p.  How have you fared on your quest for the Amulet
of Yendor?"
%E
%Cc Elf 00091
"You have it!  You have recovered the Amulet of Yendor!
Now attend to me, %p, and I will tell you what must be done:

"The Amulet has within it magic, the capability to transport you to
the Astral Plane, where the primary circle of %d resides.

"To activate this magic, you must travel upwards as far as you can.
When you reach the temple, sacrifice the Amulet to %d.

"Thus will you fulfill your destiny."
%E
#
#	Half-Dragon, Female
#
%Cc Hdf 00001
You find yourself in a frozen forest.
%E
%Cp Hdf 00002
Once again, you find yourself in a frozen forest.
%E
%Cp Hdf 00003
UNUSED
%E
%Cp Hdf 00005
"After the High Priestess restored the old cathedral on the plateau
monstrous soldiers have began to appear in the catacombs below!"
%E
%Cp Hdf 00006
"This was a gentle land! Why are the wolves attacking us?"
%E
%Cp Hdf 00007
"Help!"
%E
%Cp Hdf 00008
"Her Ladyship the Mayor disappeared in the catacombs!"
%E
%Cp Hdf 00009
"Oh Goddess of Tears! Help us now!"
%E
%Cp Hdf 00010
"There was a battle on the plateau!"
%E
%Cp Hdf 00011
"This was a gentle land! Why are the wolves attacking us?"
%E
%Cp Hdf 00012
"Help!"
%E
%Cp Hdf 00013
"Did you find Her Ladyship!?"
%E
%Cp Hdf 00014
"Oh Goddess of Tears! Help us now!"
%E
%Cc Hdf 00015
GAME STATE ERROR
%E
%Cp Hdf 00016
GAME STATE ERROR
%E
%Cp Hdf 00017
GAME STATE ERROR
%E
%Cc Hdf 00018
GAME STATE ERROR
%E
%Cc Hdf 00019
GAME STATE ERROR
%E
%Cc Hdf 00020
GAME STATE ERROR
%E
%Cc Hdf 00021
GAME STATE ERROR
%E
%Cp Hdf 00025
GAME STATE ERROR
%E
%Cp Hdf 00026
GAME STATE ERROR
%E
%Cp Hdf 00027
GAME STATE ERROR
%E
%Cp Hdf 00028
GAME STATE ERROR
%E
%Cp Hdf 00029
GAME STATE ERROR
%E
%Cp Hdf 00030
GAME STATE ERROR
%E
%Cp Hdf 00031
GAME STATE ERROR
%E
%Cp Hdf 00032
GAME STATE ERROR
%E
%Cp Hdf 00033
GAME STATE ERROR
%E
%Cp Hdf 00034
GAME STATE ERROR
%E
%Cc Hdf 00035
You have arrived at the foot of a great plateau rising from the frozen forest.

Your memory is telling you that there is an ancient exit from the painting,
somewhere nearby.
%E
%Cp Hdf 00036
You have returned to the foot of the a great plateau.
%E
%Cc Hdf 00040
You have arrived at a ruined, partially restored cathedral complex atop the plateau.
%E
%Cp Hdf 00041
You have returned to the cathedral complex atop the plateau.
%E
%Cc Hdf 00050
"How dare you trespass in my lands! How dare you take the
side of those peasants against my vassals! I am Heir of 
Frost and Embers. The painting is mine by right,
as is the Throne of the Old Gods." 

"Perish and become Hollow! Become a stepping-stone for
my rise, as all things must!"
%E
%Cp Hdf 00051
"Perish, trespasser! You are more tenacious than that
foolish, forlorn former captain, but you will follow
her into hollow oblivion!"
%E
%Cp Hdf 00052
"Stand and fight, or flee forever coward!"
%E
%Cp Hdf 00053
"Give back my scepter, vermine!"
%E
%Cp Hdf 00060
"Perish!"
%E
%Cp Hdf 00061
"Become Hollow!"
%E
%Cp Hdf 00062
"Give up!"
%E
%Cp Hdf 00063
"Go into oblivion!"
%E
%Cp Hdf 00064
"The painting is mine!"
%E
%Cp Hdf 00065
"I am your Goddess! I will rule all!"
%E
%Cp Hdf 00066
"Forget yourself and become empty!"
%E
%Cp Hdf 00067
"I will feed you to the wolves!"
%E
%Cp Hdf 00068
"By my mother's forgotten name, I swear I will not fail!"
%E
%Cp Hdf 00069
"My knights will break you, like they did that foolish crow!"
%E
%Cc Hdf 00070
As you pick up this metalic scepter, a blade of magic ice
springs from the end. The designs on the scepter match the
carvings on the cathedral's ruined stonework, but the truth
of the matter is lost like snow on the wind.
%E
%Cc Hdf 00080
%nC screams and turns to ash and windblown snow.
%E
%Cc Hdf 00081
GAME STATE ERROR
%E
%Cc Hdf 00082
GAME STATE ERROR
%E
%Cp Hdf 00090
GAME STATE ERROR
%E
%Cc Hdf 00091
GAME STATE ERROR
%E
#
#	Healer
#
%Cc Hea 00001
What sorcery has brought you back to %H?  The smell
of fresh funeral pyres tells you that something is amiss with the healing
powers that used to practice here.

No rhizotomists are tending the materia medica gardens, and where are the
common folk who used to come for the cures?

You know that you must quickly make your way to the collegium, and
%ls iatreion, and find out what has happened in your
absence.
%E
%Cp Hea 00002
After your last experience you expected to be here, but you certainly
did not expect to see things so much worse.  This time you must
succeed.
%E
%Cp Hea 00003
Again, you %x %H in the distance.

The smell of death and disease permeates the air.  You do not have
to be %Ra to know that %n is on the verge of victory.
%E
%Cp Hea 00005
"Did you read that new treatise on the therapeutic use of leeches?"
%E
%Cp Hea 00006
"Paint a red caduceus on your shield and monsters won't hit you."
%E
%Cp Hea 00007
"I passed handwriting so they are demoting me a rank."
%E
%Cp Hea 00008
"I've heard that even %l has not been able to cure Chiron."
%E
%Cp Hea 00009
"We think %n has used his alchemists, and %o,
to unleash a new disease we call 'the cold' on Gehennom."
%E
%Cp Hea 00010
"Did you read that new treatise on the therapeutic use of leeches?"
%E
%Cp Hea 00011
"Paint a red caduceus on your shield and monsters won't hit you."
%E
%Cp Hea 00012
"How are you feeling?  Perhaps a good bleeding will improve your spirits."
%E
%Cp Hea 00013
"Have you heard the absurd new theory that diseases are caused by
microscopic organisms, and not ill humors?"
%E
%Cp Hea 00014
"I see that you bring %o, now you can cure this plague!"
%E
%Cc Hea 00015
Feebly, %l raises his head to look at you.

"It is good to see you again, %p.  I see the concern in your
eyes, but do not worry for me.  I am not ready for Hades yet.  We have
exhausted much of our healing powers holding off %n.
I need your fresh strength to carry on our work.

"Come closer and let me lay hands on you, and determine if you have
the skills necessary to accomplish this mission."
%E
%Cp Hea 00016
"Again you return to me, %p.  I sense that each trip back
the pleurisy and maladies of our land begin to infect you.  Let us
hope and pray to %d that you become ready for your task before
you fall victim to the bad humors."
%E
%Cp Hea 00017
"Chiron has fallen, Hermes has fallen, what else must I tell you to
impress upon you the importance of your mission!  I hope that you
have come prepared this time."
%E
%Cc Hea 00018
"You have failed us, %p.  You are a quack!  A charlatan!

"Hades will be happy to hear that you are once again practicing your
arts on the unsuspecting."
%E
%Cc Hea 00019
"Alas, %p, you are yet too inexperienced to deal with the rigors
of such a task.  You must be able to draw on the knowledge of botany,
vetenary, and alchemy before I can send you on this quest with good
conscience.

"Return when you wear %Ra's caduceus."
%E
%Cc Hea 00020
"You have learned much of the remedies that benefit, but you must also
know which physic for which ail.  That is why %ds teachings are a
part of your training.

"Return to us when you have healed thyself."
%E
%Cc Hea 00021
For the first time, you sense a smile on %ls face.

    You have indeed learned as much as we can teach you in preparation
    for this task.  Let me tell you what I know of the symptoms and hope
    that you can provide a cure.

    A short while ago, the dreaded %nt was fooled by the gods
    into thinking that he could use %o to find a
    cure for old age.  Think of it, eternal youth!  But his good
    health is accomplished by drawing the health from those around him.

    He has exhausted his own supply of healthy people and now he seeks to
    extend his influence into our world.  You must recover from him
    %o and break the spell.

    You must travel into the swamps to %i, and from there
    follow the trail to %ns island lair.  Be careful.
%E
%Cp Hea 00025
"Remember, %p, to always wash your hands before operating."
%E
%Cp Hea 00026
"%nC has no real magic of his own.  To this he is vulnerable."
%E
%Cp Hea 00027
"If you have been true to %d, you can draw on the power of
%o."
%E
%Cp Hea 00028
"Bring with you antidotes for poisons."
%E
%Cp Hea 00029
"Remember this, %n can twist the powers of %o
to hurt instead of heal."
%E
%Cp Hea 00030
"I have sent for Chiron, but I am afraid he will come too late."
%E
%Cp Hea 00031
"Maybe when you return the snakes will once again begin to shed."
%E
%Cp Hea 00032
"The plague grows worse as we speak.  Hurry, %p!"
%E
%Cp Hea 00033
"Many times %n has caused trouble in these lands.  It is
time that he was eradicated like the diseases he has caused."
%E
%Cp Hea 00034
"With but one eye, %n should be easy to blind.  Remember this."
%E
%Cc Hea 00035
You stand before the entrance to %i.  Strange
scratching noises come from within the building.

The swampy ground around you seems to stink with disease.
%E
%Cp Hea 00036
Once again you stand at the entrance to %i.
%E
%Cc Hea 00040
You stand within sight of the infamous Isle of %n.  Even
the words of %l had not prepared you for this.

Steeling yourself against the wails of the ill that pierce your ears,
you hurry on your task.  Maybe with %o you can
heal them on your return, but not now.
%E
%Cp Hea 00041
Once again, you %x the Isle of %n in the distance.
%E
%Cc Hea 00050
"They have made a mistake in sending you, %p.

"When I add your youth to mine, it will just make it easier for me
to defeat %l."
%E
%Cp Hea 00051
"Unlike your patients, you seem to keep coming back, %p!"
%E
%Cp Hea 00052
"Which would you like, %p?  Boils, pleurisy, convulsions?"
%E
%Cp Hea 00053
"I'll have %o back from you, %r.  You are
not going to live to escape this place."
%E
%Cp Hea 00060
"They might as well give scalpels to wizards as to let you try to
use %o!"
%E
%Cp Hea 00061
"If I could strike %l, surrounded by his %gP, imagine what I
can do to you here by yourself."
%E
%Cp Hea 00062
"I will put my %Rp to work making a physic out of your ashes."
%E
%Cp Hea 00063
"As we speak, Hades gathers your patients to join you."
%E
%Cp Hea 00064
"After I'm done with you, I'll destroy %l as well."
%E
%Cp Hea 00065
"You will have to kill me if you ever hope to leave this place."
%E
%Cp Hea 00066
"I will impale your head on my caduceus for all to see."
%E
%Cp Hea 00067
"There is no materia medica in your sack which will cure you of me!"
%E
%Cp Hea 00068
"Do not fight too hard, I want your soul strong, not weakened!"
%E
%Cp Hea 00069
"You should have stopped studying at vetenary."
%E
%Cc Hea 00070
As you pick up %o, you feel its healing begin to
warm your soul.  You curse Zeus for taking it from its rightful owner,
but at least you hope that %l can put it to good use once
again.
%E
%Cc Hea 00080
The battered body of %n slumps to the ground and gasps
out one last curse:

    You have defeated me, %p, but I shall have my revenge.
    How, I shall not say, but this curse shall be like a
    cancer on you.

With that %n dies.
%E
%Cc Hea 00081
As soon as %l sees %o he summons his %gP.

Gently, %l reaches out and touches %o.
He instructs each of the assembled to do the same.  When everyone
has finished he speaks to you.

    Now that we have been replenished we can defeat this plague.  You must
    take %o with you and replenish the worlds you have
    been called upon to travel next.  I wish you could ride Chiron to the
    end of your journey, but I need him to help me spread the cure.  Go
    now and continue your journey.
%E
%Cc Hea 00082
%l cautiously handles %o while watching you.

"You are its keeper now, and the time has come to resume your search
for the Amulet.  %Z await your return through the
magic portal which brought you here."
%E
%Cp Hea 00090
"You have again returned to us, %p.  We have done well in your
absence, yes?  How fare you upon your quest for the Amulet?"
%E
%Cc Hea 00091
"Ah, you have recovered the Amulet, %p.  Well done!

"Now, you should know that you must travel through the Elemental Planes
to the Astral, and there return the Amulet to %d.  Go forth and
may our prayers be as a wind upon your back."
%E
%Cc Hea 00200
%E
%Cc Hea 00201
%E
%Cc Hea 00202
%E
%Cc Hea 00203
%E
%Cc Hea 00204
%E
%Cc Hea 00205
%E
%Cc Hea 00206
%E
%Cc Hea 00207
%E
%Cc Hea 00208
%E
#
#	Hedrow general quest
#
%Cc Hdr 00001
You arrive in familiar surroundings.  In the distance, you %x 
%H, a great city of the Drow.

The twin towers of Sorcere and Magthere, the schools of sorcery
and combat, are close before you.  Something is wrong, though.  
The silver star of Lolth, token of the high council of the 
matron mothers, is set over the gates.
%E
%Cp Hdr 00002
Once again, you stand outside %H.
%E
%Cp Hdr 00003
You have the oddest feeling that this may be the last time you
are to vist %H.
%E
%Cp Hdr 00005
"You have been granted an audience with %l.  Don't keep her waiting!"
%E
%Cp Hdr 00006
"There was a disturbance at the ruins of the Vast Gate."
%E
%Cp Hdr 00007
"Tower Xaxox has been sighted near Firestorm Peak."
%E
%Cp Hdr 00008
"The path to the surface passes through %iC. 
The failed priestesses have been attacking any who pass near their domain!"
%E
%Cp Hdr 00009
"We have been attacked by heretic drow, bearing the symbol of a black web."
%E
%Cp Hdr 00010
"You have been granted an audience with %l.  Don't keep her waiting!"
%E
%Cp Hdr 00011
"The Vast Gate has gone quiet again."
%E
%Cp Hdr 00012
"Tower Xaxox was once a school devoted to alienism."
%E
%Cp Hdr 00013
"I hope you taught those acursed driders some respect!"
%E
%Cp Hdr 00014
"%lC certainly saw to those black-web heretics!"
%E
%Cc Hdr 00015
"%rC!  It is good that you have answered my summons.
Lolth requires your talents.

"But first, I must evaluate your abilities, to see if you 
have the required abilities to take on this holy mission."
%E
%Cp Hdr 00016
"Once again, %r, you stand before us.  You had best be ready."
%E
%Cp Hdr 00017
"You are here again, %r.  I will test your readiness..."
%E
%Cc Hdr 00018
"%rC!  You have doomed yourself, showing your treachery for 
all to see.

"You are hereby banished!  I revoke the grace of Lolth from you!"
%E
%Cc Hdr 00019
"%rC, you are yet too inexperienced to withstand the demands of
Lolth's holy mission.  %RA might just be able to do this thing.

"Return to us when you are worthy of this honor."
%E
%Cc Hdr 00020
"You have strayed, %r!

"Return when you have purified yourself, and not before!"
%E
%Cc Hdr 00021
"You are indeed ready, %r.  This is your mission,
your holy quest from Lolth:

"Many hundreds of years ago, there was a tower school 
dedicated to the art of alienism, of the art of calling
and controlling beings alien to the near planes of 
existance, the familliar heavens and hells.

"The last master of that school, Daruth, sought 
knowledge beyond his stature, knowledge concerning an
ancient artifact known as the Vast Gate.  Daruth was
censured by Lolth for his hubris, but he chose to 
continue down the forbidden path.  His obsession 
resulted in the destruction of the tower school 
entrusted to him:  Xaxox was consumed by the very 
creatures it existed to control.

"For centuries, it was believed that the Xaxox school
was no more.  Recently, however, the tower has 
reappeared on the surface of the world, near Firestorm
Peak, the secret site of the ancient Vast Gate.

"Lolth has revealed to us, the sacred council of the
matron-mothers, that Daruth Xaxox has returned with 
his tower, and that he plans to spread his heretical
teachings accross the Underdark.  Already we have been
attacked by his followers, who bear a black-web sigil
as a token of their treachery.

"You have been choosen as Lolth's instrument in this.
Travel to the surface of the world, locate Tower
Xaxox near Firestorm Peak, and bring justice to Daruth
before he can endanger more of your brothers with his
heresy.

"Daruth Xaxox brought with him a cloak of woven 
darkness.  Bring this to me as proof of your deed.
Go now!  Bring honor to your house!  Fail, and know 
torment everlasting!"

"Do this, and know the glory of Lolth!  Fail, and know
everlasting torment! Go now!"
%E
%Cp Hdr 00025
"There are many secret passages in %i."
%E
%Cp Hdr 00026
"Why are you still here?  Get on with it, or face the wrath of Lolth!"
%E
%Cp Hdr 00027
"Go now!"
%E
%Cp Hdr 00028
"Serve Lolth in all things!"
%E
%Cp Hdr 00029
"The Xaxox heretics sought knowledge forbidden by Lolth."
%E
%Cp Hdr 00030
"Daruth Xaxox made a pact with a dark power to gain his freedom."
%E
%Cp Hdr 00031
"Show those heretics the wrath of Lolth!"
%E
%Cp Hdr 00032
"Driders are strong, but they enjoy not the favor of Lolth."
%E
%Cp Hdr 00033
"You tempt the wrath of Lolth with your delay."
%E
%Cp Hdr 00034
"The heretics have formed a blasphemous alliance with creatures from
beyond the Vast Gate."
%E
%Cc Hdr 00035
You descend into the outer regions of %i.  You can hear
scuffling sounds in the corridors, and vague mumblings in the distance.

You know that there were many secret passageways in this complex.
%E
%Cc Hdr 00036
Once again, you descend into %i.
%E
%Cc Hdr 00040
You have arrived at the foothills of Firestorm Peak.  The accursed 
sunlight still fills your eyes with painful darkness, but you can 
neverless sense the overwhelming wrongness of Tower Xaxox in the 
distance.
%E
%Cp Hdr 00041
Once again, you approach Tower Xaxox at the base of Firestorm Peak.
%E
%Cc Hdr 00050
"Who are you?  Another assassin sent by Eclavdra?  I see that she has
learned to stop sending matrons against me.  But, in sending you, 
I wonder, has she made a fatal mistake?

"Tell me, how do you feel about your lot in life?  Are you a happy
little serf of the Spider Queen?  Are you content with the knowledge
that, no matter what you do, no matter what rank you rise to, you 
will always be subservient to the least of the priestesses?

"Or do you yearn for something more, as I once did?  

"Together, we can overthrow the Spider Goddess and free our drow 
brothers from the dominion of the priestesses, establishing a new 
order across the Underdark!"
%E
%Cp Hdr 00051
"Join me!"
%E
%Cp Hdr 00052
"Lolth is not worthy of your service!"
%E
%Cp Hdr 00053
"That cloak is mine!"
%E
%Cp Hdr 00060
"Why serve Lolth!?"
%E
%Cp Hdr 00061
"Are you happy as a slave!?"
%E
%Cp Hdr 00062
"Help me put an end to the dominion of Lolth!"
%E
%Cp Hdr 00063
"I won't kill you if I don't have too."
%E
%Cp Hdr 00064
"We have a chance to overthrow the Spider Queen!"
%E
%Cp Hdr 00065
"%l is just using you."
%E
%Cp Hdr 00066
"Help me free our brothers!"
%E
%Cp Hdr 00067
"Join me, and together we will rule the Drow!"
%E
%Cp Hdr 00068
"My ally can defeat Lolth, with your help."
%E
%Cp Hdr 00069
"You will not stop me.!"
%E
%Cc Hdr 00070
Dark and light are woven together in %o.

What strange power could have crafted such a thing? %lC 
will accept this cloak as proof that you have truly killed 
%n.
%E
%Cc Hdr 00080
%nC sighs and shakes his head at you, spiders fleeing out
of the great rents in his flesh.

    This is not the end for me, but you, I fear, will be
    dead long before I gather the strength for another
    escape from the Far Realm.

He falls to the ground like a puppet with its strings cut;
dead.
%E
%Cc Hdr 00081
"%rC!  You have destroyed the foul heretics!  I only wish %n 
had been taken alive, I would have liked to ... instruct him as to 
the error of his ways.

"The name of your house will be entered in the annals of Lolth, and the 
tale of how we bested the hordes of Tower Xaxox will be told for
generations to come.

"You must now return to the Dungeons of Doom and your quest for the 
Amulet of Yendor.  With that divine relic, Lolth will be able to wipe
out all vestiges of the Xaxox heretics!

"Take %o with you, if you wish.  Otherwise, I will give you Spidersilk,
a mithril coat that once belonged to my favorite consort, the previous
master of Tower Sorcere."
%E
# assumes Darkweaver Cloak
%Cc Hdr 00082
"This cloak was brought by %n from whatever cursed realm he was hiding
in for the centuries of his absense.  Little is known about the creation
of this artifact, though it seems related to the black web symbol used
by his followers.

"Would you like to use this armor in your quest, or would you 
prefer the mithril coat, Spidersilk?"
%E
# assumes Spidersilk
%Cc Hdr 00083
"This mithril coat was once owned by a great wizard of the surface
elves.  He fell in combat with my daughters, and his armor was taken
as a trophy.  Lolth sanctified this armor as a boon to me, and it was
used by a favored consort of mine for many years.  You should feel
honored to wear it."
%E
%Cp Hdr 00090
"How have you fared on your holy quest for the Amulet
of Yendor?  Lolth does not tolerate failure!"
%E
%Cc Hdr 00091
"You have it!  You have recovered the Amulet of Yendor!

"Whoever brings that to Lolth's high altar in the astral plane will
be exhalted above all others, and shall even be granted the rank of
demigoddess!

"I have been searching for that Amulet for many long years.  To 
think a mere %r would find it first!

"Well, I thank you for bringing it to me.  I have one final task
for you:  Die for me!"
%E
%Cc Hdr 00101
You have returned to the twin towers of Sorcere and Magthere on the 
outskirts of %i.  The silver star of Lolth is still set over the 
doors, token of %n and the high council of the matron-
mothers.

The hour of reckoning is at hand.
%E
%Cp Hdr 00102
Once again, you have returned to %i.
%E
%Cp Hdr 00103
IF YOU SEE THIS, IT IS A BUG
%E
%Cp Hdr 00105
"The black web will lead us to freedom."
%E
%Cp Hdr 00106
"The followers of Lolth have launched several assaults on this Tower,
only to fall before the might of %l."
%E
%Cp Hdr 00107
"%lC is powerful, but even he can not yet leave the intrusion zone 
around the Vast Gate."
%E
%Cp Hdr 00108
"You will have to go back through the Drider caves to reach
%iC. Though Lolth has betrayed them, the driders 
still rebel against the black web."
%E
%Cp Hdr 00109
"The shepherds of spiders will reclaim their flock at last."
%E
%Cp Hdr 00110
"The black web will lead us to freedom."
%E
%Cp Hdr 00111
"The followers of Lolth have been thrown into disarray!"
%E
%Cp Hdr 00112
"%lC will soon be able to leave the intrusion zone 
around the Vast Gate."
%E
%Cp Hdr 00113
"Alive or dead, the driders will serve the black web."
%E
%Cp Hdr 00114
"The shepherds of spiders will reclaim their flock at last."
%E
%Cc Hdr 00115
"%p.  Are you ready to take the first step?

"Here is what you must do:"
%E
%Cp Hdr 00116
"%p.  Are you ready to take the first step?

"Here is what you must do:"
%E
%Cp Hdr 00117
"%p.  Are you ready to take the first step?

"Here is what you must do:"
%E
%Cc Hdr 00118
"%pC.  It is unfortunate that you seek to betray me.  In your 
treachery, you have doomed yourself.  To turn on both Lolth and
the Eddergud will be your undoing.  I banish you to 
%Z.  

"May you die in pain."
%E
%Cc Hdr 00119
IF YOU SEE THIS, IT IS A BUG
%E
%Cc Hdr 00120
IF YOU SEE THIS, IT IS A BUG
%E
%Cc Hdr 00121
"I have learned that the foundation of Lolth's 
current power is an ancient pact with a great 
matriarch of spiders; a demon of the old world, 
who's name is forgotten.

"The story of Lolth, then, has two threads: 

"In one, there is a goddess named Araushnee,
a member of the elven pantheon, who tried to
murder and supplant her fellows.  For this,
she was thrown bound and powerless into the 
endless Abyss of the demons, to find 
torment in their clutches.

"In the other thread, there is a Far Realm, 
in which sits a great black web of poison 
strands, of darkness unpierceable, of plots 
indecipherable.  True spiders are the 
servants of this web.  One spider, however, 
stole secrets from the web, and fled with 
her followers across the Realities.

"The threads come together when the fleeing
thief meets the fallen goddess.  The 
goddess took a new name, Lolth; and 
together their followers have spun their
white counterfeit webs for many ages of 
the world.

"But I met the black web, and have told him
the location of his flocks, and he has sent
the shepherds of spiders, the poison-cups 
of the poison-god, to gather them up.

"If we can help them in their task, then
Lolth shall be Araushnee once more, and 
we will be masters of our own fate.

"It falls to you to strike the first blow
in this war, for I am not able to leave
the area surrounding the Vast Gate.  You
must return to %i, and defeat %n, 
greatest priestess of Lolth and one of
the few who might hinder our quest."
%E
%Cp Hdr 00125
"There are many secret passages in the drider caves."
%E
%Cp Hdr 00126
"Strike well."
%E
%Cp Hdr 00127
"Use an altar to make a personal pact with the Eddergud."
%E
%Cp Hdr 00128
"Lolth and her priestesses will be swept away."
%E
%Cp Hdr 00129
"We will free the drow from the Spider Queen."
%E
%Cp Hdr 00130
"Go swiftly and silently."
%E
%Cp Hdr 00131
"For the sake of all our brothers, do not fail."
%E
%Cp Hdr 00132
"Watch out for driders."
%E
%Cp Hdr 00133
"%nC will not be an easy opponent."
%E
%Cp Hdr 00134
"%nC made a critical error, coming to the tower schools."
%E
%Cc Hdr 00135
You descend into the outer regions of %i.  You can hear
scuffling sounds in the corridors, and vague mumblings in the distance.

You know that there were many secret passageways in this complex.
%E
%Cc Hdr 00136
Once again, you descend into %i.
%E
%Cc Hdr 00140
You have returned to Tower Xaxox, which now rises in the shaddow of
Firestorm Peak, in the aura of the Vast Gate.

The forces of the black web entity, the Eddergud, marshal at its 
base.
%E
%Cp Hdr 00141
Once again, you have returned to Tower Xaxox.
%E
%Cc Hdr 00150
"%c!  Lolth has told us of your heresy!  Prepare to die!
%E
%Cp Hdr 00151
"Now you die!"
%E
%Cp Hdr 00152
"Accept your fate!  Die now!"
%E
%Cp Hdr 00153
"Give that back!"
%E
%Cp Hdr 00160
"You dare turn against Lolth!?  Even in death you shall not know peace!"
%E
%Cp Hdr 00161
""%l is using you.  You won't survive this fight!"
%E
%Cp Hdr 00162
"Even a drider's fate is too good for you!"
%E
%Cp Hdr 00163
"I'll flay your soul!"
%E
%Cp Hdr 00164
"Even a zombie's fate is too good for you!"
%E
%Cp Hdr 00165
"You will never know peace!"
%E
%Cp Hdr 00166
"I'll kill you and anyone who ever gave you shelter!"
%E
%Cp Hdr 00167
"Your fate will be wispered of for generations to come!"
%E
%Cp Hdr 00168
"Your actions have disgraced your house!"
%E
%Cp Hdr 00169
"What do you hope to gain?  Your actions have made an enemy of
every loyal drow?"
%E
%Cc Hdr 00170
The Rod's tentacles wave a languid greeting to you as you pick 
it up.
%E
%Cc Hdr 00180
%nC staggers back, shaking her head as if to clear it.  Not a
drop of blood flows from her wounds.  Instead, strands of black
webbing spread out from each injury, forming strange patterns
as they join up, engulfing ever more of her body.  She opens 
her mouth as if to curse you, but gags on the black web as
it spreads over her face.  Now totally engulfed, she is yanked
up and vanishes from the world.
%E
%Cc Hdr 00181
"%p!  You did it!  We were able to use the distraction you 
provided to snare %n in the folds of the black web.  She has been
ensnared too by its darkness and its plots, and under its 
skilled questioning has divulged much she meant to keep secret.

"With her knowledge, we can stage invasions of more drow cities
across the underdark.  For your part, you must now return to the 
Dungeons of Doom and to your quest for the Amulet of Yendor.  
With that divine relic, the Eddergud will be able to fully
engulf the demonweb of Lolth and all the counterfeit webs of
his flock."

"Take %o with you, if you wish.  Otherwise, I will gift
you the Webweaver's Crook, a tool of the Spider Shepherds
crafted from a recovered claw of the primordial spider-demon
herself."
%E
# assumes Tentacle Rod
%Cc Hdr 00182
"This rod was gifted to %n while she served Zuggtmoy, demon
lady of rot and corruption, then consort of the Elder Elemental
Eye, the chained god Tharizdun, who seeks to consume all the
worlds and all the gods thereof.  %n and Zuggtmoy both
betrayed the Eye, and each other, having planned from the 
beginning to use it for their own ends.  Any interaction with
the Chained One is perilous, however, and its service is not 
easy to foreswear.  %n is fortunate to have been captured
by the Eddergud, for her soul is marked by Tharizdun, and
she was being followed by a spawn of Shothragot.

"The Rod itself is free of the taint of its nominal father, 
however, for its parents are in truth Zuggtmoy of the Fungi 
and %n herself.  The rod is a powerful weapon, capable of 
augmenting spellcasting and delivering multiple debilitating 
attacks in melee.

"Would you like to use this weapon in your quest, or would you
prefer the Webweaver's Crook?"
%E
# assumes Webweaver's Crook
%Cc Hdr 00183
"This weapon was recently crafted by the Shepherds of Spiders,
from a covered claw of the primordial demon-spider.  It can be
used both in melee and as a pole weapon, and contains many 
fell poisons."
%E
%Cp Hdr 00190
"How have you fared on your quest for the Amulet of Yendor?  It
is crucial for you to succeed, if we are to fully free the drow."
%E
%Cc Hdr 00191
"You have it!  You have recovered the Amulet of Yendor!
Now, I will tell you what must be done:

"The Amulet has within it magic, the capability to transport you to
the Astral Plane, where a seed of the Eddergud has been prepared for
you:  a high altar dedicated to the black web.

"To activate this magic, you must travel upwards as far as you can.
When you reach the temple, sacrifice the Amulet to the black web.

"Thus will you fulfill your destiny at last."
%E
#
#	Knight
#
%Cc Kni 00001
You materialize in the shadow of %H.  Immediately, you notice
that something is wrong.  The fields around the castle are trampled and
withered, as if some great battle has been recently fought.

You quicken your pace.  Surely Merlin would have not allowed the 
enemies of %l to gain such advantage as to be able to
besiege %H itself?  Something must be very wrong.
%E
%Cp Kni 00002
Once again you stand in the shadow of %H.
%E
%Cp Kni 00003
Again, you stand before %H.  You vaguely sense that this
may be the last time you stand before %l.
%E
%Cp Kni 00005
"Hail, %p!  Verily, thou lookest well."
%E
%Cp Kni 00006
"There is word, %p, that %n hath been sighted in the fens
near %i."
%E
%Cp Kni 00007
"Thou art our only hope now, %p."
%E
%Cp Kni 00008
"Verily, %l could have no better champion, %p."
%E
%Cp Kni 00009
"Many brave %cP died when Ixoth attacked."
%E
%Cp Kni 00010
"Hail, %p!  Verily, thou lookest well."
%E
%Cp Kni 00011
"So, %p, didst thou find %n in the fens
near %i?"
%E
%Cp Kni 00012
"Worthy %p, hast thou proven thy right purpose on the body of %n?"
%E
%Cp Kni 00013
"Verily, %l could have no better champion, %p."
%E
%Cp Kni 00014
"Hast thou indeed recovered %o?"
%E
%Cc Kni 00015
"Ah, %p.  We see thou hast received Our summons.
We are in dire need of thy prowess.  But first, We must needs
decide if thou art ready for this great undertaking."
%E
%Cp Kni 00016
"Welcome again, %p.  We hope thou art ready now."
%E
%Cp Kni 00017
"Once again, thou standest before Us, %p.  Art thou ready now?"
%E
%Cc Kni 00018
"Thou disgracest this noble court with thine impure presence.  We have been
lenient with thee, but no more.  Thy name shall be spoken no more.  We
hereby strip thee of thy title, thy lands, and thy standing as %ca.
Begone from Our sight!"
%E
%Cc Kni 00019
"Verily, %p, thou hast done well.  That thou hast survived thus
far is a credit to thy valor, but thou art yet unprepared for
the demands required as Our Champion.  %rA, no matter how
pure, could never hope to aid the great Merlin.

"Journey forth from this place, and hone thy skills.  Return to
Our presence when thou hast attained the noble title of %R."
%E
%Cc Kni 00020
"Thou dishonourest Us, %p!  Thou hast strayed from the path of
chivalry! Go from Our presence and do penance.  Only when thou art again
pure mayst thou return hence."
%E
%Cc Kni 00021
"Ah, %p.  Thou art truly ready, as no %c before thee hath
been.  Hear now Our words:

"As thou noticed as thou approached %H, a great battle hath
been fought recently in these fields.  Know thou that Merlin himself
came to aid Us here as We battled the foul Ixoth.  In the midst of that
battle, Ixoth struck Merlin a great blow, felling him.  Merlin was 
taken off by his apprentice, %n, but hath not recovered.

"Withiout Merlin's aid, Our forces were pressed back, and We have been
beseiged here in %H.  Thy return hath turned the tide, but many %cP 
were lost in the battle, and Our rule remaineth imperiled as long 
as Merlin is away.

"We hereby charge thee with this most important of duties:

"Go forth from this place, to the fens, and there thou wilt find
%i.  From there, thou must track down %n.  Only from her will
thou learn what is required, that Merlin may regain his health.
%E
%Cp Kni 00025
"Remember, %p, follow always the path of %d."
%E
%Cp Kni 00026
"Ixoth was verily a mighty foe, We gained confidence through thy victory."
%E
%Cp Kni 00027
"Beware, for hordes of foul creatures have pursued Merlin."
%E
%Cp Kni 00028
"Great treasure, 'tis said, is hoarded on %i."
%E
%Cp Kni 00029
"If thou possessest %o, %p, the magic of thine
enemies shall therewith be thwarted."
%E
%Cp Kni 00030
"The gates of %i are guarded by forces unseen, %p.
Go carefully."
%E
%Cp Kni 00031
"Return Merlin to Us quickly, %p."
%E
%Cp Kni 00032
"Find Merlin, %p, else %H shall surely fall."
%E
%Cp Kni 00033
"Call upon %d when thou art in need."
%E
%Cp Kni 00034
"To find Merlin, thou must keep thy heart pure."
%E
%Cc Kni 00035
You stand at the foot of %i.  Ahead, you can %x a shrine.
Strange energies seem to be focused here, and the hair on the back
of your neck stands on end.
%E
%Cp Kni 00036
Again, you stand at the foot of %i.
%E
%Cc Kni 00040
As you exit the swamps, you %x before you a huge, gaping hole in the
side of a hill.  From within, you see light glinting off gems.

The pools on either side of the entrance are fouled with blood, and
pieces of rusted metal and broken weapons show above the surface.
%E
%Cp Kni 00041
Again, you stand at the entrance to the Crystal Cave.
%E
%Cc Kni 00050
"Hah!  Another puny %c comes seeking Merlin, but finds only death.
Merlin is lost to you. He shall sleep forever, ensrined in crystal
beneath this cave!"
%E
%Cp Kni 00051
"Again, you return, %r?  So be it."
%E
%Cp Kni 00052
"Thou art truly foolish, %r.  Merlin shall not return."
%E
%Cp Kni 00053
"So, you dare touch MY property!  I shall have that back,
puny %r.  You will die in agony!"
%E
%Cp Kni 00060
"Merlin taught me all he knew."
%E
%Cp Kni 00061
"Now I am the ruler of your Fate!"
%E
%Cp Kni 00062
"Now %l must bow before ME!"
%E
%Cp Kni 00063
"Your quest has already failed, %r!"
%E
%Cp Kni 00064
"Die, %c!  You are nothing before my magic!"
%E
%Cp Kni 00065
"Who are you to stand before me, the heir to Merlin's power!?"
%E
%Cp Kni 00066
"Call upon your precious %d, %p.  She shall not avail thee."
%E
%Cp Kni 00067
"%H is mine, now."
%E
%Cp Kni 00068
"Merlin shall sleep forever, entombed beneath this hill of crystals!"
%E
%Cp Kni 00069
"I am %n, queen of Avalon!"
%E
%Cc Kni 00070
As you pick up %o, you feel its protective fields
form around your body.  You also feel a faint stirring in your mind,
as if you are in two places at once, and in the second, you are waking
from a long sleep.
%E
%Cc Kni 00080
As %n sinks to the ground, blood gushing from her open mouth, she
defiantly curses you and %l:

    You have not won yet, %r.  By the gods of old, I shall return 
    and dog your steps to the grave!

Flailing madly about, %n tries to crawl towards you, but slumps
to the ground and dies in a pool of her own blood.
%E
%Cc Kni 00081
As you approach %l, he beams at you and says:

    Well done!  Thou art truly the Champion of %H.  
    
    We hath received a vision from Merlin.
    
    He hath instructed Us that thou art now to be the guardian of
    %o, and of %H.  He feeleth that thou 
    mayst have need of the powers of %o in thine 
    adventures.  It is Our wish that thou keepest %o
    with thee as thou searchest for the fabled Amulet of Yendor,
    that thou may ascend to become even greater a guardian of
    %H than Merlin himself.
%E
# assumes Magic Mirror of Merlin (glass object)
%Cc Kni 00082
"Careful, %p!  %oC might break, and that would
be a tragic loss.  Thou art its keeper now, and the time hath come
to resume thy search for the Amulet.  %Z await thy
return through the magic portal that brought thee here."
%E
%Cp Kni 00090
"Well met, %p.  How goeth thy search for the Amulet of Yendor?"
%E
%Cc Kni 00091
"Thou hast succeeded, We see, %p!  Now thou art commanded to take
the Amulet to be sacrificed to %d in the Plane of the Astral.

"Merlin hath counseled Us that thou must travel always upwards through
the Planes of the Elements, to achieve this goal.

"Go with %d, %p."
%E
%Cc Kni 00200
%E
%Cc Kni 00201
%E
%Cc Kni 00202
%E
%Cc Kni 00203
%E
%Cc Kni 00204
%E
%Cc Kni 00205
%E
%Cc Kni 00206
%E
%Cc Kni 00207
%E
%Cc Kni 00208
%E
%Cc Kni 00320
%E
%Cc Kni 00321
%E
%Cc Kni 00322
%E
%Cc Kni 00323
%E
#
#       Monk
#
# The quest artifact is "The Eyes of the Overworld", hence needs
# to be treated as plural by messages which use %o.
#
%Cc Mon 00001
You approach %H on the isolated path you have grown to 
know so well.  As you get closer you notice that the lights are all dim,
even in the library!  The %l would never stand for that in a 
normal situation.  Knowing something is very wrong you stride forward with 
grace and determination.
%E
%Cp Mon 00002
Once again, you stand on the path to %H.
%E
%Cp Mon 00003
Again you are on the path to %H. You know this could be the last time.
%E
%Cp Mon 00005
"Greetings %s.  We are glad to see you whole."
%E
%Cp Mon 00006
"%pC, only you can help. %dC has let it be known."
%E
%Cp Mon 00007
"Welcome back %s. Please see the %l as soon as possible."
%E
%Cp Mon 00008
"Your return is a sign from %d that all is not lost."
%E
%Cp Mon 00009
"May %d be with you, %s."
%E
%Cp Mon 00010
"Greetings, honorable %r.  It is good to see you again."
%E
%Cp Mon 00011
"Ah, %p!  Our deepest gratitude for all of your help."
%E
%Cp Mon 00012
"Greetings, %s.  Perhaps you will take some time to meditate with us?"
%E
%Cp Mon 00013
"With this test behind you, may %d bring you enlightenment."
%E
%Cp Mon 00014
"May %d be with you, %s."
%E
%Cc Mon 00015
"Ah, %p, my %S.  You have returned.  I knew you would come, but
I am happy it is not too late.  The %shood has suffered a great 
dishonor. I will tell you in good time, first we must see if you 
are ready."
%E
%Cp Mon 00016
"Again, my %S, you stand before me.  Have you improved your skills since
our last meeting?"
%E
%Cp Mon 00017
"Once more, %p, you have returned.  Hopefully %d has been 
with you and your skills have improved."
%E
%Cc Mon 00018
"You have become polluted my %S.  How could you, my best student,
deviate from the teachings of %d so? You dishonor the %shood. 

Begone from here and do not return. Even in our hour of need, we would 
rather die than be polluted by one such as yourself."
%E
%Cc Mon 00019
"It is not yet to be, %p.  %dC has let it be known that
only %Ra will have a chance to succeed against %n. 
Return when your skills have improved."
%E
%Cc Mon 00020
"%pC, you have let yourself become polluted.  %dC requires
piety among the %shood of the order and your devotion, my %S.  
You cannot hope to face %n without it. Attone yourself, my %S. 
Return when you once again walk the path that %d has set."
%E
%Cc Mon 00021
"You are ready.  As I said before, a great dishonor has befallen
the order.  Not long ago, a zealous %c such as yourself came to 
learn the way of %d.  He rose quickly in our ranks and
displayed great skill.  Silently we hoped for another such as
yourself to enter our ranks, and we gave thanks to %d."

"I do not know where we have gone wrong.  Perhaps it was a trick from 
the beginning.  Perhaps his faith faltered and he seized an opportunity
to better himself at the cost of others."

"In the darkest hour he crept in and stole %o from its
resting place.  He tried to sneak away, but was caught.  In his desperate 
flight he killed many %gP."

"%dC has not yet enlightened us for the reasons this has come to 
pass, but he has granted the knowledge that %n has fled to 
%i.  Go there my %S. %nC must not be allowed to gain 
strength and cause more harm with %o."

"Do not waste your time trying to save his soul.  It is a sad day 
for the %shood, but we will survive with your help."

"May %d ever guide your steps."
%E
%Cp Mon 00025
"Go with %d as your guide, %p."
%E
%Cp Mon 00026
"Remember that %n has great magic at his command."
%E
%Cp Mon 00027
"Be pure, my %S."
%E
%Cp Mon 00028
"Be careful. The only way to %i is through a long 
canyon. There will be many chances for ambushes!"
%E
%Cp Mon 00029
"Remember your studies, and you will prevail!"
%E
%Cp Mon 00030
"Acquire and wear %o if you can.  They will aid you
against %n."
%E
%Cp Mon 00031
"Call upon %d when your need is greatest.  You will be answered."
%E
%Cp Mon 00032
"You will face many foes. Consider well the strengths of each!"
%E
%Cp Mon 00033
"Do not lose faith, %p.
%E
%Cp Mon 00034
"%nC will be a great foe.  It will take all of your talents to defeat him."
%E
%Cc Mon 00035
You stand at the mouth of a long twisting valley that leads to %i.
You know that %n waits after countless traps and ambushes. 
Scanning the walls of valley you notice none of the usual signs of
clumsy men. No broken twigs, footprints, or hoofprints. These ambushers
are either very good or not human...
%E
%Cp Mon 00036
Again, you stand on the trail to %i.
%E
%Cc Mon 00040
You enter a large cave that houses %i and %n 
at the far end.  Lava pools are all around except for two paths
leading to %i.  The final battle begins...
%E
%Cp Mon 00041
You once again stand at the entrance to the cave.
%E
%Cc Mon 00050
"So you must be %p.  %lC has spoken highly of your skills!
I will enjoy bringing your body back to him when I return!"
%E
%Cp Mon 00051
"Again we meet.  This time you will die!"
%E
%Cp Mon 00052
"This shall be the final encounter. Prepare to meet %d."
%E
%Cp Mon 00053
"I will be all too happy to take %o from your corpse!"
%E
%Cp Mon 00060
"%lC was wise to respect your skills. You are still no match for me though!"
%E
%Cp Mon 00061
"Your puny powers are no match for me."
%E
%Cp Mon 00062
"You death will not be a quick one."
%E
%Cp Mon 00063
"Despair now, %r.  %dC cannot help you."
%E
%Cp Mon 00064
"I can see your fear.  Escape while you can!"
%E
%Cp Mon 00065
"Your skills are a disgrace to your ancestors!"
%E
%Cp Mon 00066
"%dC will no save you now.  Prepare to die!"
%E
%Cp Mon 00067
"I should have killed %l when I had the chance!"
%E
%Cp Mon 00068
"I feel your weariness.  You shall die now."
%E
%Cp Mon 00069
"With %o, nothing can stand in my way."
%E
%Cc Mon 00070
When you touch %o your mind is jolted with awareness and
understanding.  You can now see why %n stole them, and risked
everything to keep them.  Silently you vow not to let them consume
you as they did him.

You sense a message from %d.  Though not verbal, you
get the impression that you must return to %l as soon
as possible.
%E
%Cc Mon 00080
%nC falls over motionless after your stunning blow. 
He whispers:
    "I knew everything and it is gone. I know now how I will
    spend the countless years, and I am afraid. %pC,  do 
    not give yourself to the same fate, it is not nice."

You feel that in a small way %n has redeemed himself to
%d with his last breath.
%E
%Cc Mon 00081
"Ah, you have returned.  We have been waiting for you.  We wanted to
to honor you, but your quest for the Amulet is more pressing.  You have
done the %shood a great service and we will remember you for it."

"I know that %o is a great burden and temptation, but
I can not accept responsibilty for them again.  I have failed in that charge
once already.  You are far more capable that I, so you must keep them.  They
will aid you with the rest of your quest."

"We hope to see you when your great quest is done. We will celebrate them."

"May %d ever guide your way."
%E
%Cc Mon 00082
%lC studies %o for a moment,
then returns his gaze to you.

"%oC must remain with you.  Use them
as you resume your search for the Amulet.
%Z await your return through the magic portal
that brought you here."
%E
%Cp Mon 00090
"Welcome back, %p.  How is your quest for the Amulet going?"
%E
%Cc Mon 00091
"You have succeeded, %p!  As much as we would like to celebrate
your succeess, you must not delay.  Proceed to the surface and through
the elementals to the plane of the gods. Give the Amulet to %d
when you find his temple.  I suspect that I shall never see you again
in this life, but I hope to at %ds feet."
%E
%Cc Mon 00200
%E
%Cc Mon 00201
%E
%Cc Mon 00202
%E
%Cc Mon 00203
%E
%Cc Mon 00204
%E
%Cc Mon 00205
%E
%Cc Mon 00206
%E
%Cc Mon 00207
%E
%Cc Mon 00208
%E
%Cc Mon 00369
%E
%Cc Mon 00370
%E
%Cc Mon 00371
%E
%Cc Mon 00372
%E
#
#	Madman
#
%Cc Mad 00001
For a moment, you feel your grip on reality waver.
Why are you back in the escape tunnel beneath 
%H!? Did you ever truely leave? 
But wait, the portal you went through is still
here.  You had heard your old savior 
Lady Constance, who helped you escape the 
sanitarium, calling for your help.
Also, %H is not as you had left it.
An oppressive yellow haze hovers at the edges
of your thoughts, and you hear mad laughter
in the distance.
%E
%Cp Mad 00002
You have returned to %H.  Somehow, things are even
worse now than on your previous visit.
%E
%Cp Mad 00003
The situation seems to degrade, and you wonder how long
your fellow %gp can hold out against the corrupt
doctors and virulent yellow taint that pervade
the formerly tranquil %H.
%E
%Cp Mad 00005
"How did you manage to escape?"
%E
%Cp Mad 00006
"The world is upside down."
%E
%Cp Mad 00007
"It's in my head.  The yellow."
%E
%Cp Mad 00008
"...there was going to be a play?  One of the
special patients was writing it...."
%E
%Cp Mad 00009
"...I've seen black stars in the sky
below the Asylum."
%E
%Cp Mad 00010
"Take me with you!  I will be glad to be rid of this
awful place."
%E
%Cp Mad 00011
"The world is upside down."
%E
%Cp Mad 00012
"Don't forget to come back for us once you have
completed your quest!"
%E
%Cp Mad 00013
"Who was the playwright? I can't remember...."
%E
%Cp Mad 00014
"...I saw a city on the horizon.  The towers
rose behind the moons...."
%E
%Cc Mad 00015
You have found a strange figure, encased in
iron bindings.  Somehow, you know that this
is the one who can guide you out of the
madness.

"The yellow dream will swallow the weak minded,
and they will die in Carcosa. Let me judge your
strength...."
%E
%Cp Mad 00016
"I dream of you again, %p. Can you stand against
the yellow dream?"
%E
%Cp Mad 00017
"I dream of you again, %p. Can you stand against
the yellow dream?"
%E
%Cc Mad 00018
"The King has swallowed you, and you will die
among the Lost. Begon before you consume your
former compatriots!"
%E
%Cc Mad 00019
"My soul fears that your are not ready to face
the yellow. Only %Ra can withstand the shadow
of Carcosa."
%E
%Cc Mad 00020
"Your soul has strayed from %a.

"Only the pure of heart can face the black
stars and survive."
%E
%Cc Mad 00021
"%p, your soul is ready.

"The world is upside down, and It is here.
%n read the Play and invited It in.

"Our only chance against It is to find
%o, for only the 
Star can repel the yellow madness. 
%E
%Cp Mad 00025
"Along the shore the cloud waves break."
%E
%Cp Mad 00026
"The twin suns sink behind the lake."
%E
%Cp Mad 00027
"The shadows lengthen in Carcosa."
%E
%Cp Mad 00028
"Strange is the night where black stars rise."
%E
%Cp Mad 00029
"Strange moons circle through the skies."
%E
%Cp Mad 00030
"Song of my soul, my voice is dead."
%E
%Cp Mad 00031
"Die thou, unsung, as tears unshed
Shall dry and die in 
    Lost Carcosa."
%E
%Cp Mad 00032
"Songs that the Hyades shall sing,
Where flap the tatters of the King,
Must die unheard in
    Dim Carcosa."
%E
%Cp Mad 00033
"%oC will soothe your mind."
%E
%Cp Mad 00034
"You must remain worthy."
%E
%Cc Mad 00035
Somehow, you've reached ground level by decending
through the Asylum.

There were offices on the second floor, perhaps
you should decend further in the hopes of
finding them?
%E
%Cp Mad 00036
Once again, you've reached ground level.
%E
%Cc Mad 00040
You've reached the attic.  You don't know why
%n would be up here, but you feel him
nearby.
%E
%Cp Mad 00041
Once again, you descend into the attic.
%E
%Cc Mad 00050
"So, %p.  You have returned.
Have you come to pay your tuition?
%E
%Cp Mad 00051
"I see that you have returned, %p.  I
suggest you leave and save yourself while you still
have a chance."
%E
%Cp Mad 00052
"Back again, %p?  You will certainly die in
your attempt to murder me."
%E
%Cp Mad 00053
"I will get %o from you!  
You can not kill me, my allies have seen to that!"
%E
%Cp Mad 00060
"You should never have come back.  You will not 
escape here alive again!"
%E
%Cp Mad 00061
"Even all of your pathetic lot put together would
not be enough to defeat me."
%E
%Cp Mad 00062
"You are no more than lowly mad scum.  Go back
to your cell and await my treatments!"
%E
%Cp Mad 00063
"You have no chance at all. Spare yourself
the pain!"
%E
%Cp Mad 00064
"Even %o would not be enough to
make you my equal."
%E
%Cp Mad 00065
"Your delusional devotion to %d 
will not save you, either."
%E
%Cp Mad 00066
"After I kill you, I will go after 
Lady Constance next, and any that dare
to defy me again!"
%E
%Cp Mad 00067
"You will never escape again!"
%E
%Cp Mad 00068
"Once a lunatic, always a lunatic."
%E
%Cp Mad 00069
"How about you find yourself a cosy little cell,
and hope that I forgive your insolence?"
%E
%Cc Mad 00070
As you pick up %o, you feel its power
flow through you, protecting you.  You know that
you need to get it back to %l as soon
as possible now.
%E
%Cc Mad 00080
You have settled up with your old Doctor,
but strangely the oppressive yellow taint
does not fade away.

If anything, the fulvous presure grows stronger
as the life fades from %n!
%E
%Cc Mad 00081
"You have returned with %o!

"I had feared you would die unsung in your search!

"But, I fear that your struggle is not at an end.
The King seeks %o, all his power is 
bent on it.

"You must take it far from here, to the Dungeons
of Doom. May it aid you in your search for the
amulet of Yendor.

"Travel swiftly, and beware The Stranger!

"I dream now of other things.... We will not meet
again."
%E
%Cc Mad 00082
%l looks upon %o
with fondness.
"You are its keeper now.  Take it with you back to
%Z, through the magic portal
that brought you here.

"I dream now of other things.... We will not meet
again."
%E
%Cc Mad 00090
UNUSED
%E
%Cc Mad 00091
UNUSED
%E
%Cc Mad 00200
%E
%Cc Mad 00201
%E
%Cc Mad 00202
%E
%Cc Mad 00203
%E
%Cc Mad 00204
%E
%Cc Mad 00205
%E
%Cc Mad 00206
%E
%Cc Mad 00207
%E
%Cc Mad 00208
%E
#
#	Drow Noble quest
#
%Cc Ndr 00001
You arrive in familiar surroundings. You're house's fortress is 
close before you.  

The psychic call of your mother rings loud in your mind.
%E
%Cp Ndr 00002
Once again, you stand outside %H.
%E
%Cp Ndr 00003
You have the oddest feeling that this may be the last time you
are to vist %H.
%E
%Cp Ndr 00005
"Oh, %pC!  You're back.  Well, %l wanted to speak with you."
%E
%Cp Ndr 00006
"Oh, its you.  I thought you died in that dungeon."
%E
%Cp Ndr 00007
"The life-cavern colony went silent cycles ago."
%E
%Cp Ndr 00008
"I'd hate to see someone put a dagger in your pretty little back.
Perhaps you should consider an alliance with me."
%E
%Cp Ndr 00009
"%oC represents the favor of Lolth."
%E
%Cp Ndr 00010
"Oh, %pC!  You're back.  %lC was just talking about you. She does
that quite a bit, now."
%E
%Cp Ndr 00011
"You again?  I heard you were on your way to gehennom!"
%E
%Cp Ndr 00012
"So it was the illithids that destroyed the life-cavern colony."
%E
%Cp Ndr 00013
"(...You're %l's favorite now.  You should leave, any ally 
you tried to make would just stick a dagger in your back.)"
%E
%Cp Ndr 00014
"Is that truely %o that I see you carrying?  YOU are the favored
of Lolth?"
%E
%Cc Ndr 00015
"%pC!  I am glad %d returned you to me.

"A great opportunity lies before us.  But first, I must see if 
you have the required abilities to sieze this chance."
%E
%Cp Ndr 00016
"Once again you kneel before me, %p.  Are you ready know?"
%E
%Cp Ndr 00017
"Ah, back again, %p?  I will determine your readiness..."
%E
%Cc Ndr 00018
"%pC!  You have failed me for the last time!

"You are no longer my daughter!  Go now into exile!"
%E
%Cc Ndr 00019
"%p, you are yet too inexperienced to withstand the demands of that
which I need you to do.  %RA might be able to do this thing.

"Return to me when you have learned more, daughter."
%E
%Cc Ndr 00020
"You have strayed, %p!  You know that %d requires that
we maintain a pure devotion to things %a!

"Return when you have purified yourself."
%E
%Cc Ndr 00021
"You are indeed ready, %p.  I shall tell you what has transpired,
and what you must do:

"A short time ago, the life-cavern colony went suddenly silent.
My greatest rival, sensing an opportunity for further glory,
sent her most talented daughter to the colony, the girl recently
taken by Lolth as her Chosen priestess.  Her mission was to 
learn the cause of the silence and to bring justice to those 
responsible.

"The girl failed, for that was the last anyone has heard of her.
I have been grooming you as her rival to the title of Chosen.
It is too late for you to best her in life, but you can still
prove your superiority.

"Go, travel to the life-cavern colony, learn the cause of the 
silence and bring justice to those responsible.  Recover
%o and bring glory to our house, and shame
to my rival's."
%E
%Cp Ndr 00025
"Why are you still here?  Get on with it, or face my wrath!"
%E
%Cp Ndr 00026
"Go now!"
%E
%Cp Ndr 00027
"Others will also be seeking %o."
%E
%Cp Ndr 00028
"Let %d be your guide."
%E
%Cp Ndr 00029
"Do not delay."
%E
%Cp Ndr 00030
"That colony is an important food producer."
%E
%Cp Ndr 00031
"Fungi grow freely in the life caverns."
%E
%Cp Ndr 00032
"To infiltrate %i, you must be very stealthy."
%E
%Cp Ndr 00033
"Go, my daughter."
%E
%Cp Ndr 00034
"You can triumph, %p, if you trust in %d."
%E
%Cc Ndr 00035
You have arrived at the life cavern colony.  The smell of death is
heavy in the air, and you hear the crash of colapsing walls in the
distance.
%E
%Cc Ndr 00036
Once again, you descend into the life-cavern.
%E
%Cc Ndr 00040
You descend into a weird place, in which the rough cave walls take on
the complex, wrinkled appearance of a humanoid brain.

LITTLE DROWLING, YOU ARE LOST.  FOR NONE BUT THE LOST COME TO 
%i, FRAGMENT OF PENUMBRA.  YOUR MIND, YOUR THOUGHTS
AND MEMORIES, BELONG TO US NOW.  YOU ARE LOST.
%E
%Cp Ndr 00041
Once again, you enter the wrinkled caverns of the illithids.
%E
%Cc Ndr 00050
YOU SHOULD KNEEL.  FOR YOU STAND BEFORE THE ELDER BRAIN OF
%i, SEED OF PENUMBRA.
%E
%Cp Ndr 00051
ALL TIME IS ONE BEFORE ME.  THE MOMENT OF YOUR BIRTH AND
DEATH IS ONE TO ME.
%E
%Cp Ndr 00052
SUBMIT.
%E
%Cp Ndr 00053
ABANDON YOUR SELF.
%E
%Cp Ndr 00060
GIVE IN TO ME.
%E
%Cp Ndr 00061
REST.
%E
%Cp Ndr 00062
GIVE UP.
%E
%Cp Ndr 00063
WHY DO YOU STRUGGLE?
%E
%Cp Ndr 00064
DO NOT BE AFRAID.
%E
%Cp Ndr 00065
WE HAVE AND SHALL RULE ALL.  EVEN LOLTH HAS AND SHALL 
SUBMIT TO US.
%E
%Cp Ndr 00066
YOU PROLONG YOUR SUFFERING.
%E
%Cp Ndr 00067
TO WHAT END DO YOU STRIVE?
%E
%Cp Ndr 00068
PENUMBRA HANGS OVER ALL.
%E
%Cp Ndr 00069
WE RULED AND SHALL RULE ALL.
%E
%Cc Ndr 00070
You fill with pride as you pick up %o.

You shall succeed where your rival has failed, and claim the
Amulet of Yendor besides.
%E
%Cc Ndr 00080
I SHALL HAUNT Y O U  T I L L   T  H  E   E  N  D    O   F   
T   I    M     E      .       .        .
%E
%Cc Ndr 00081
"%pC!  You have succeeded!  I feared it was not possible!

"You have returned with %o!

"My daughter, Chosen of Lolth, I know that great things
lie ahead of you.  Go now, return to %Z
and your quest for the Amulet of Yendor."
%E
# assumes crystal
%Cc Ndr 00082
"The silver Web of the Chosen guards Lolth's champion
against lightning and acid, and reflects beams and
lessens the impact of magical spells.

"That you are its bearer brings great honor to our
house.  Go now, return with it to your quest for
the Amulet of Yendor?"
%E
%Cp Ndr 00090
"Welcome, daughter.  How have you fared on your quest for the
Amulet of Yendor?"
%E
%Cc Ndr 00091
"You have it!  You have recovered the Amulet of Yendor!
Now attend to me, daughter, and I will tell you what must be done:

"The Amulet has within it magic, the capability to transport you to
the Astral Plane, where the High Altar of %d resides.

"To activate this magic, you must travel upwards as far as you can.
When you reach the temple, sacrifice the Amulet to %d.

"Thus will you fulfill your destiny."
%E
%Cc Ndr 00200
%E
%Cc Ndr 00201
%E
%Cc Ndr 00202
%E
%Cc Ndr 00203
%E
%Cc Ndr 00204
%E
%Cc Ndr 00205
%E
%Cc Ndr 00206
%E
%Cc Ndr 00207
%E
%Cc Ndr 00208
%E
#
#	Hedrow Noble quest
#
%Cc Nhd 00001
You arrive in familiar surroundings.  You are standing outside
the gates of %H.  In the distance, you %x %i,
a great city of the Drow.

Something is seriously wrong, though.  The walls of %H
have been destroyed, and a deathly silence hangs in the air.
%E
%Cp Nhd 00002
Once again, you stand outside %H.
%E
%Cp Nhd 00003
You have the oddest feeling that this may be the last time you
are to vist %H.
%E
%Cp Nhd 00005
"%n?  I've heard she's taken refuge with the followers of Ver'tas."
%E
%Cp Nhd 00006
"%n?  Never heard of her."
%E
%Cp Nhd 00007
"%n?  She used to hang around the city.  She always looked so grim."
%E
%Cp Nhd 00008
"%n?  I saw her talking to some missionaries of Ver'tas."
%E
%Cp Nhd 00009
"%n?  Why, has something happened?  Haven't seen her."
%E
%Cp Nhd 00010
"Hey, weren't you asking about %n?  I've heard she was killed, in
the a stronghold of Ver'tas."
%E
%Cp Nhd 00011
"I've been hearing a lot about %n lately."
%E
%Cp Nhd 00012
"She killed her mother?  I guess that was why she looked so grim.
Stupid way to go about it, though; the house was wiped out!"
%E
%Cp Nhd 00013
"I think those Ver'tasites put her up to it."
%E
%Cp Nhd 00014
"Did you ask about %n?  I think something happend to her!"
%E
%Cc Nhd 00015
You find a young drow novice hidding in a hidden compartment.
She looks terrified by the sudden intrusion, but sags in 
relief when she sees it's you.

"I know you, you're %p!  You came back!

"We've- we've been attacked.  I think that- that I'm the only
one left.  My oldest sister, she shut me in here when she saw 
the walls had been broken.

"I know who did this, I heard the others... what they said 
at the height of the attack.

"As the last warrior of our house, as the... former consort
of the matron-mother, I know you want to know who it was;
to avenge this, and reclaim our honor.

"Before I tell you, though, I have to see if you are ready
for this task.  We'll only get one chance at this."
%E
%Cp Nhd 00016
"You came back again.  Are you ready now?"
%E
%Cp Nhd 00017
"I'm glad.  That you keep coming back.  Are you ready?"
%E
%Cc Nhd 00018
"This isn't going to work.  I shouldn't have called you back.

"Please, run.  Never come back."
%E
%Cc Nhd 00019
"%rC, you aren't yet strong enough to do what must be done.
As %RA you might have a chance.

"Please, survive and grow stronger.  Don't leave me alone."
%E
%Cc Nhd 00020
"It seems you do not enjoy the favor of %d. Unless you walk
the %a path, you will be easy prey for those whom you 
must fight.

"You must go from here, and regain the favor of %d."
%E
%Cc Nhd 00021
"You are ready, %p.  I can tell you who did this, and what
you must do:

"The house's walls were attacked by the illithids, and their
Umber Hulk slaves.  But they are not your true enemy.  I'm sure
that M- That the matron-mother would have led our forces to 
victory.  But- She was killed.  At the height of the battle,
an assassin came through the walls from the other side, and 
killed her.

"It was %n, %p.  The second daughter of our house.  She 
killed our mother, and many of our sisters as well.  She had 
a wand, whatever she pointed it at, died.

"Her target was %o.  It was a gift, 
you remember, a gift from Eclavdra, High Priestess of Lolth, 
to show the favor in which our house was held.  You wore it 
yourself, I- I've heard.  But when you left, you left it behind.

"If you can reclaim the cloak before Eclavdra and the ruling
council find out what has happend here, we may be able to
salvage something from this.  You'll probably have to kill
%n to get the cloak back, but... In fact I think it 
would be best if you did kill her.

"I don't know where %n is hiding.  She came from %i when
she attacked, someone amoung the houseless there must know
more.

"Good luck, %p!  Go swiftly and stealthily.
Remember what your priorities are, and you'll succeed.

"...I know you will."
%E
%Cp Nhd 00022
"Why?"
%E
%Cp Nhd 00025
"Go swiftly and stealthily."
%E
%Cp Nhd 00026
"Start your search for %n in %i."
%E
%Cp Nhd 00027
"Use %o, when get it back.  It will help you make it back."
%E
%Cp Nhd 00028
"Please, don't leave me alone."
%E
%Cp Nhd 00029
"I don't know where %n is hiding."
%E
%Cp Nhd 00030
"Why did she do it?  She gained nothing from this."
%E
%Cp Nhd 00031
"Eclavdra will not remain in the light forever.
Reclaim the cloak before she learns what happened!"
%E
%Cp Nhd 00032
"Don't hesitate when you face %n."
%E
%Cp Nhd 00033
"I never thought that I would outlive my older
sisters."
%E
%Cp Nhd 00034
"Why did she save me?"
%E
%Cc Nhd 00035
You have reached the outskirts of %i, where the 
houseless drow live.  Someone here may have seen where %n 
went after her attack on your house.

...There is no way the girl could have known this, but this
is where it all began.  You and Cind'r were both born in
these slums.  You hadn't thought it would end here, too.
Not for many years.
%E
%Cc Nhd 00036
Once again, reach the slums outside %i.
%E
%Cc Nhd 00040
You have found the fortress of the Ver'tasites, where %n 
is hiding.  From within, you hear the sounds of a large, 
raucous gathering.
%E
%Cp Nhd 00041
Once again, you near the fortress of Ver'tas.
%E
%Cc Nhd 00050
"You!  F- Fool!  After all this time, NOW is when
you come back?

"Well, you're too late.  It's already over."
%E
%Cp Nhd 00051
"Why do you keep coming back!  Why can't you leave me alone!"
%E
%Cp Nhd 00052
"I'm done with you."
%E
%Cp Nhd 00053
"What does %o matter now!?  Our house has fallen, it's over!"
%E
%Cp Nhd 00060
"Worthless!  Why did you desert us!"
%E
%Cp Nhd 00061
"You think you can come back now!"
%E
%Cp Nhd 00062
"It's too late!"
%E
%Cp Nhd 00063
"What did you hope to achieve!"
%E
%Cp Nhd 00064
"What do you hope to achieve!"
%E
%Cp Nhd 00065
"Do you want to kill me, too!?"
%E
%Cp Nhd 00066
"Why do you care, you left!"
%E
%Cp Nhd 00067
"How dare you come back now!"
%E
%Cp Nhd 00068
"I hate you!  I'll kill you!"
%E
%Cp Nhd 00069
"Just die!"
%E
%Cc Nhd 00070
%oC is heavy with the weight of memories.  It is possible you can
salvage something of you house with this.

You must now return with it without delay.  The girl's life may
depend on your haste.
%E
%Cc Nhd 00080
%nC stumbles, stands, then falls heavily.  She speaks, with tears in
her eyes:

    I'm so, so sorry.  I regretted it as soon as I did it.
    
    I was afraid.  The other houses were plotting against us,
    and Mother refused to produce more daughters.  They were 
    getting stronger, and us weaker.  I thought I could save
    myself, but I fear I am damned.
    
    I wish... I wish I had turned the wand on myself. And 
    that is the Truth.
%E
%Cc Nhd 00081
It is clear that %l has been crying:

"F- Former consort!  You came back!

"But it's too late.  The ruling council has heard everything
that has transpired here, and they are not impressed by our 
efforts.

"They are coming here, they will kill you if you stay.

"Take %o with you, on your quest for
the Amulet.

"Goodbye, F- Farewell"
%E
%Cc Nhd 00082
"You must go, now!

"This cloak was once the sign of the favor
that our house was held in, one of the original
Cloaks of the Consorts.  But that favor is gone
now.  They are coming for you, you must flee
and never come back."
%E
%Cp Nhd 00090

%E
%Cc Nhd 00091
It is clear that %l has been crying:

"F- Former consort!  You came back!

"But it's too late.  The ruling council has heard everything
that has transpired here, and they are not impressed by our 
efforts.

"They are coming here, they will kill you if you stay.

"Take %o with you, on your quest for
the Amulet.

"Thank you, F- Farewell"
%E
#
#       Noble
#
#
%Cc Nob 00001
You find yourself standing in sight of %H.  You relax, anticipating 
the comforts of home. But wait! What are those banners in the distance?
%E
%Cp Nob 00002
Once again, you return to %H.
%E
%Cp Nob 00003
Again you return to %H.  You fear the rebelion may soon overwhelm
the keep.
%E
%Cp Nob 00005
"Greetings, %r.  It is good to see you again."
%E
%Cp Nob 00006
"%r %p!  There has been an uprising amongst the peasantry!"
%E
%Cp Nob 00007
"Greetings, %r.  %lC arrived, claiming she will help us put down the
rebellion. She is waiting in the great hall."
%E
%Cp Nob 00008
"Alas, it seems as if %d has withdrawn from us."
%E
%Cp Nob 00009
"I think the rebellion has outside aid."
%E
%Cp Nob 00010
"Greetings, %r.  It is good to see you again."
%E
%Cp Nob 00011
"The rebellion was easily crushed, once their leader was slain."
%E
%Cp Nob 00012
"Good news, %s!  With the rebellion quelled, your tax collectors have 
been able to resume their work!"
%E
%Cp Nob 00013
"Long live the %r!"
%E
%Cp Nob 00014
"%dC save the %r!"
%E
%Cc Nob 00015
"Ah, %p, my "%r."  You're a little late.  The peasant revolt has
already swept across your lands, leaving only this keep untouched.
The cards say you will need my help to reclaim your place. But
I won't assist just anyone."
%E
%Cp Nob 00016
"Again, you have returned.  Are you now ready to begin?"
%E
%Cp Nob 00017
"Once more, you have returned.  Are at last ready to begin?""
%E
%Cc Nob 00018
"%dC has turned away from you, my "%r." Your faithlessness has
cost you %H and your destiny. Flee into exile
or end your life at the hands of the rebels.
%E
%Cc Nob 00019
"Fool, only as a %R can you hope to put down the rebellion.
You must go out and gather further renown."
%E
%Cc Nob 00020
"Only with the full support of %d can you succeed.
Go away, and don't return without the favor of %d."
%E
%Cc Nob 00021
"Yes, %r.  The cards say you are ready."

With that, she begins drawing cards from her deck. First is
the zero of trumps, followed swiftly by the queen and seven
of swords.

"After you departed from %H, %n 
and her companions broke into the keep and stole
%o, which symbolizes your right to rule
these lands."

The five of wands joins them on the table, followed by the
five of swords.

"With her stolen authority, %n raised
a peasant revolt and routed your army."

%lC gathers up the cards, suffles the deck, and
resumes drawing. Again, the first card is the zero of trumps,
this time followed by the three and seven of wands, the
queen and ten of swords, and finally the ten of trumps.

"You must travel to %i, slay %n,
and recover %o."

She sits back and fixes you with a piercing stare.

"I'd use the secret passage in your throne room to reach
the forest, if I were you."
%E
%Cp Nob 00025
"You must learn to rely on %d."
%E
%Cp Nob 00026
She draws a card from the center of the deck.
It is the queen of swords.

"A powerful warrior with a silver sword."
%E
%Cp Nob 00027
"Why are you still here?"
%E
%Cp Nob 00028
She deals a card from the bottom of the deck. It is the
queen of wands.

"A woman of nature. She fights with arrows of the moon's metal."
%E
%Cp Nob 00029
"Well, what are you waiting for?"
%E
%Cp Nob 00030
"Get on with it!"
%E
%Cp Nob 00031
"Your surviving knights still fight the rebels in the woods."
%E
%Cp Nob 00032
"There are still some loyal peasants in the woods."
%E
%Cp Nob 00033
She turns over the top card. It is the five of trumps.

"A holy man.  He can heal his friends and set the sky on fire"
%E
%Cp Nob 00034
She pulls a card from the deck: The one of trumps.

"A man of magic.  At his word the elements rise up and energy
rains down; but as any true mage knows, sleep will kill you
faster than flames!"
%E
%Cc Nob 00035
You remember the directions to %i, given to you
by the %l.  You are on the right path.
%E
%Cp Nob 00036
Again, you approach %i.
%E
%Cc Nob 00040
You have found %i.

The rebel leaders will be in one of the houses.
%E
%Cp Nob 00041
Again, you have invaded %ns stronghold.
%E
%Cc Nob 00050
"So, at last you have come. Your death shall set this land free!"
%E
%Cp Nob 00051
"So, %r.  You are a fool to return here."
%E
%Cp Nob 00052
"Die, %r!"
%E
%Cp Nob 00053
"You have no right to %o!"
%E
%Cp Nob 00060
"Run away, %c, and keep your life."
%E
%Cp Nob 00061
"You are no match for us, %c."
%E
%Cp Nob 00062
"Turn to dust!"
%E
%Cp Nob 00063
"%d won't help you."
%E
%Cp Nob 00064
"You shall oppress us no more!"
%E
%Cp Nob 00065
"You will die here, %r %c."
%E
%Cp Nob 00066
"You cannot defeat me, for I have justice on my side."
%E
%Cp Nob 00067
"Monster!"
%E
%Cp Nob 00068
"I powers have failed you, %r."
%E
%Cp Nob 00069
"Without %o, you have no claim over us!"
%E
%Cc Nob 00070
As you pick up %o, you feel connected to your land and your people
for the first time since returning to %H.

You feel you should hury back to the keep and take up your throne
once again, if just for a short time.
%E
%Cc Nob 00080
%nC sinks to her knees, coughing blood. She gasps:

    "Bastard. You may kill me, but you can't kill justice!
    The rebellion is greater than any one person. These people shall
    be free of your tyranny yet!"

%nC is silent after that, but you remain prudently out of arm's reach
until you are certain she has bled out.
%E
%Cc Nob 00081
"You have returned, %r.  And regained %o, no less."

She flicks a card from her deck, and when it lands at your feet you
see that it is fifteenth trump.

"Isn't your own quest yet unfinished?"
%E
%Cc Nob 00082
%lC studies %o for a moment,
then turns to glare at to you.

"How cruel you are to taunt an old woman. My curse, the curse of
all my kin, prevents me from ever finding a home of my own."
%E
%Cp Nob 00090
"Why are you back!?  There is nothing left to be done here!"
%E
%Cc Nob 00091
%lC holds up the last two cards in her deck: the two and twenty-one
of trumps.

"You have one task remaining. It begins where you entered."
%E
%Cc Nob 00200
%E
%Cc Nob 00201
%E
%Cc Nob 00202
%E
%Cc Nob 00203
%E
%Cc Nob 00204
%E
%Cc Nob 00205
%E
%Cc Nob 00206
%E
%Cc Nob 00207
%E
%Cc Nob 00208
%E
#
#	Pirate
#
%Cc Pir 00001
Ye breathe deeply of the sweet bouquet that is %H. 

...It'll linger.

Rather than the chaotic din ye recall, a eerie silence greets yer 
lugs. In the distance, ye hear soldiers on patrol. Seems yer pirate
brethren be in need of yer assistance!
%E
%Cp Pir 00002
Once again, you breathe the bouquet that is %H.
%E
%Cp Pir 00003
Ye are back on %H.
Ye fear that soon the brethren of the coast will have to abandon 
%H.
%E
%Cp Pir 00005
"The soldiers o' Yendor attacked %H and destroyed %l's home!"
%E
%Cp Pir 00006
"These Yendorans 'ave disturbed the dead that lay in Davy Jones's
Locker!"
%E
%Cp Pir 00007
"Ol' %l once sailed with the Dread Pirate Roberts, or so they say."
%E
%Cp Pir 00008
"%nC has risen and scattered the soldiers sent to %i.
Now the dead attack %H as well!"
%E
%Cp Pir 00009
"Captain Ketch led the attack and sank many o' our ships. Now Ketch be
trapped on %i."
%E
%Cp Pir 00010
"Have ye found much booty in the Dungeons o' Doom?"
%E
%Cp Pir 00011
"Did ye send Ketch to feed the fishes?"
%E
%Cp Pir 00012
"Arrrr!"
%E
%Cp Pir 00013
"Ol' %l once sailed with the Dread Pirate Roberts, or so they say."
%E
%Cp Pir 00014
"Be there comely lasses in the Dungeons o' Doom?"
%E
%Cc Pir 00015
"So, %p. Ye have returned to yer brethren. We 'ave need of a canny 
%S of the coast to show these Yendorans to the plank.

"Let me be see'n if you BE that %S."
%E
%Cp Pir 00016
"Ye try me patience, %p.
I hope that this time ye be ready."
%E
%Cp Pir 00017
"I hope for yer sake ye are prepared at last."
%E
%Cc Pir 00018
"Me mercy is at an end, %p. Leave %H and never return."
%E
%Cc Pir 00019
"Ye be still too weak.  Return a proven %R. Perhaps then
ye will be ready.

"Go now, and follow %d to glory and riches."
%E
%Cc Pir 00020
"Ye must follow %d through %a waters to reach %i.

"As ye be now ye would never make it. Do not return to %H 
until ye be wise in the ways o' %d."
%E
%Cc Pir 00021
"I always knew ye had greatness in ye, %S. As a %g, perhaps ye may
succeed where I once failed.

"In my youth, I sailed with the immortal Dread Pirate, Roberts. In our
adventures, we came to oppose Blackbeard, then mightiest of the servants 
of the Devil, in his quest for %o.

"Our final duel took place at the center of %i. Roberts, 
himself a mighty follower of %d, bested Blackbeard 
at swordplay, sending him tumbling into the caldera. But Blackbeard 
was able to place a mighty curse on %o, and I was 
unable to stop it plunging into the caldera to join him.

"Now these Yendorans have come to claim what I lost, and in my age
I be unable to stop them. So it falls to ye, my %S. Drive these
soldiers from %H, then sail to %i, destroy %n 
once and fer all, and claim %o, in yer own name!"
%E
%Cp Pir 00025
"Do not be shaken by the fearsome form of %n."
%E
%Cp Pir 00026
"To enter %i you must find a hidden fissure in the rocks."
%E
%Cp Pir 00027
"Oh, an' Captain Ketch owes me for a new house!"
%E
%Cp Pir 00028
"Captain Ketch sailed to %i, but the ship was lost on the
rocks an' Ketch doesn't know the way into the caves."
%E
%Cp Pir 00029
"If ye do not destroy %n, he will follow you back here!"
%E
%Cp Pir 00030
"Sharks swim in the waters around %i."
%E
%Cp Pir 00031
"It be pitch black in %i!"
%E
%Cp Pir 00032
"There be much treasure lost in the waves around %i."
%E
%Cp Pir 00033
"Only the %a can reach %i."
%E
%Cp Pir 00034
"Trust %d in yer hour of need."
%E
%Cc Pir 00035
Ye have reached the treacherous waters around %i at last
The ghostly minions of %n are everywhere around you.
%E
%Cp Pir 00036
Ye know that this time you must find and destroy %n.
%E
%Cc Pir 00040
Ye sense the presence of %o at the heart of %i.
%E
%Cp Pir 00041
Ye know that soon ye shall claim %o for yer own.
%E
%Cc Pir 00050
"So, %p, %l thinks that ye can claim %o,
when even he could not?!

"He must be senile to send %ra to destroy me, when even in his prime
he failed at the same task! No, it is your soul that shall go to %d."
%E
%Cp Pir 00051
"I have been toying with ye, %p. This time I will kill ye."
%E
%Cc Pir 00052
"Flee now, %p. A %c cannot destroy %n.

"If ye do not flee, I will inflict so much suffering on ye that
%l will feel guilty for ever having sent his %S to me!"
%E
%Cc Pir 00053
"Return %o to me, or I shall visit torments on ye even
Judas knows naught of.
%E
%Cp Pir 00060
"I defeated death, even %l couldn't destroy me at his best.
What hope have ye, %p."
%E
%Cp Pir 00061
"I am the mightiest follower of the Devil the world 
has ever known! Your weak devotion to %d
will not save ye."
%E
%Cp Pir 00062
"Beg for mercy now, and I will only kill ye."
%E
%Cp Pir 00063
"Abandon your %a ways! Slink off and never face me again!"
%E
%Cp Pir 00064
"Vengeance will be mine, %p. I will make %l pay,
for what he did to me!"
%E
%Cp Pir 00065
"The Brethren of the Coast are finished. Now I rule the seas!"
%E
%Cp Pir 00066
"With %o I control all the treasures of the sea!"
%E
%Cp Pir 00067
"I will never die!"
%E
%Cp Pir 00068
"Are ye truly the greatest pirate %H has left?
It will share your fate!"
%E
%Cp Pir 00069
"Die in vain, %p! I will send %l to join ye!"
%E
%Cc Pir 00070
As ye pick up %o, ye feel a great
weight has been lifted from your shoulders.  Your only thoughts are
to quickly return to %H and find %l.
%E
%Cc Pir 00080
A great crack opens below %n, and a huge, flaming hand 
reaches out to seize his wispy form. He curses ye:
    NO! I won't die here, %p! It is ye who's soul will feed 
    the Devil! I am king of all the oceans, I cannot be killed!
    I will haunt ye until %d betrays ye!
%E
%Cc Pir 00081
As %l senses %o, the lines on his face harden
into what may be his version of a smile.
    Ye have claimed %o.  Ye hold in
    yer hands all the treasures of the sea.  Ye may well be
    the next Dread Pirate, greater even than Roberts. My 
    %S, ye should seek a treasure greater than any pirate
    has ever sought before: the Amulet of Yendor.
    
    The great Wizard, who lives in Yendor, knows that ye 
    can claim this prize. It was he who sent the soldiers here.
    Return to %Z, and claim yer destiny!
%E
%Cc Pir 00082
"%oC is yers.  Yer destiny awaits through the portal that 
brought ye here."
%E
%Cp Pir 00090
"Tell me of yer adventures in yer quest for the Amulet of Yendor."
%E
%Cc Pir 00091
"Ye have claimed the Amulet of Yendor! Truly ye were destined to be
the greatest %S of the Breathren of the Coast!

"Now ye must travel to the astral sea, and offer the Amulet on the
High Altar of %d!"
%E
%Cc Pir 00200
%E
%Cc Pir 00201
%E
%Cc Pir 00202
%E
%Cc Pir 00203
%E
%Cc Pir 00204
%E
%Cc Pir 00205
%E
%Cc Pir 00206
%E
%Cc Pir 00207
%E
%Cc Pir 00208
%E
%Cc Pir 00332
%E
%Cc Pir 00333
%E
%Cc Pir 00334
%E
%Cc Pir 00335
%E
#
#	Priest
#
%Cc Pri 00001
You find yourself standing in sight of %H.  Something
is obviously wrong here.  The doors to %H, which usually
stand open, are closed.  Strange human shapes shamble around
outside.

You realize that %l needs your assistance!
%E
%Cp Pri 00002
Once again, you stand before %H.
%E
%Cp Pri 00003
Again you face %H.  Your intuition hints that this may be
the final time you come here.
%E
%Cp Pri 00005
"Greetings, honored %r.  It is good to see you."
%E
%Cp Pri 00006
"Ah, %p!  Surely you can help us in our hour of need."
%E
%Cp Pri 00007
"Greetings, %s.  %lC has great need of your help."
%E
%Cp Pri 00008
"Alas, it seems as if even %d has deserted us."
%E
%Cp Pri 00009
"May %d be with you, %s."
%E
%Cp Pri 00010
"Greetings, %r.  It is good to see you again."
%E
%Cp Pri 00011
"Ah, %p!  Our deepest gratitude for all of your help."
%E
%Cp Pri 00012
"Welcome back, %s!  With %o, no undead can stand against us."
%E
%Cp Pri 00013
"Praise be to %d, for delivering us from %n."
%E
%Cp Pri 00014
"May %d be with you, %s."
%E
%Cc Pri 00015
"Ah, %p, my %S.  You have returned to us at last.
A great blow has befallen our order; perhaps you can help us.
First, however, I must determine if you are prepared for this
great challenge."
%E
%Cp Pri 00016
"Again, my %S, you stand before me.  Are you ready now to help us?"
%E
%Cp Pri 00017
"Once more, %p, you stand within the sanctum.  Are you ready now?"
%E
%Cc Pri 00018
"You are a heretic, %p!  How can you, %ra, deviate so from the
teachings of %d?  Begone from this temple.  You are no longer
%sa to this order.  We will pray to %d for other assistance,
as you have failed us utterly."
%E
%Cc Pri 00019
"Alas, %p, it is not yet to be.  A mere %r could never
withstand the might of %n.  Go forth, again into the world, and return
when you have attained the post of %R."
%E
%Cc Pri 00020
"This is terrible, %p.  You have deviated from the true path!
You know that %d requires the most strident devotion of this
order.  The %shood must stand for utmost piety.

"Go from here, atone for your sins against %d.  Return only when
you have purified yourself."
%E
%Cc Pri 00021
"Yes, %p.  You are truly ready now.  Attend to me and I shall
tell you of what has transpired:

"At one of the Great Festivals a short time ago, a Legion
of undead invaded %H.  Many %gP were killed, including
the one carrying %o.

"As a final act of vengefulness, %n desecrated the altar here.
Without it, we could not mount a counter-attack.  Now, there are
barely enough %gP left to keep the undead at bay.

"We need you to find %i, then, from there, travel
to %ns lair deep below the lowest crypts.  
If you can manage to defeat %n and return
%o here, we can then drive off the legions of
undead that befoul the land.

"Go with %d as your guide, %p."
%E
%Cp Pri 00025
"You can prevail, if you rely on %d."
%E
%Cp Pri 00026
"Remember that %n has great magic at his command."
%E
%Cp Pri 00027
"Be pure, my %S."
%E
%Cp Pri 00028
"Beware, %i is surrounded by a great graveyard."
%E
%Cp Pri 00029
"You may be able to affect %n with magical cold."
%E
%Cp Pri 00030
"Acquire and wear %o if you can.  It will aid you
against %n."
%E
%Cp Pri 00031
"Call upon %d when your need is greatest.  You will be answered."
%E
%Cp Pri 00032
"The undead legions are weakest during the daylight hours."
%E
%Cp Pri 00033
"Do not lose faith, %p.  If you do so, %n will grow stronger."
%E
%Cp Pri 00034
"Wear %o.  It will assist you against the undead."
%E
%Cc Pri 00035
You stand facing a large graveyard.  The sky above is filled with clouds
that seem to get thicker closer to the center.  You sense the presence of
undead in larger numbers than you have ever encountered before.

You remember the descriptions of %i, given to you by
%lC.  It is ahead that you will find %ns trail.
%E
%Cp Pri 00036
Again, you stand before %i.
%E
%Cc Pri 00040
The stench of brimstone is all about you, and the shrieks and moans
of tortured souls assault your psyche.

Ahead, there is a small clearing amidst the bubbling pits of lava...
%E
%Cp Pri 00041
Again, you have invaded %ns domain.
%E
%Cc Pri 00050
"ah, so %l has sent another %g to retrieve
%o.

"no, We see you are no %g.  perhaps We shall have some fun today
after all.  prepare to die, %r!  you shall never regain
%o."
%E
%Cp Pri 00051
"so, %r.  again you challenge Us."
%E
%Cp Pri 00052
"die now, %r.  %d has no power here to aid you."
%E
%Cp Pri 00053
"you shall die, %r, and we will have %o back."
%E
%Cp Pri 00060
"submit to Our will, %c, and We shall spare you."
%E
%Cp Pri 00061
"your puny powers are no match for Us."
%E
%Cp Pri 00062
"We shall have you turned into a zombie for Our pleasure!"
%E
%Cp Pri 00063
"despair now, %r.  %d cannot help you."
%E
%Cp Pri 00064
"We shall feast upon your soul for many days, %c."
%E
%Cp Pri 00065
"your death will be slow and painful.  That We promise!"
%E
%Cp Pri 00066
"you cannot defeat %n, you fool.  We shall kill you now."
%E
%Cp Pri 00067
"your precious %lt will be Our next victim."
%E
%Cp Pri 00068
"We feel your powers failing you, %r.  you shall die now."
%E
%Cp Pri 00069
"with %o, nothing can stand in Our way."
%E
%Cc Pri 00070
As you pick up %o, you feel the essence of
%d fill your soul.  You know now why %n stole it from
%H, for with it, %ca of %d could
easily defeat their plans.

You sense a message from %d.  Though not verbal, you
get the impression that you must return to %lC as soon
as possible.
%E
%Cc Pri 00080
You feel a wrenching shift in the ether as %n dissolves
into a cloud of noxious gas.

Suddenly, a voice booms out:

    Thou hast defeated the least of my minions, %r.
    Know now that Moloch is aware of thy presence.
    As for 'Thee', o Legion of the damned, 
    I shall deal with thy failure at my leisure.

You then hear the voices of %n, screaming in terror...
%E
%Cc Pri 00081
"You have returned, %p.  And with %o, I see.
Congratulations.

"I have been in meditation, and have received direction from
a minion of %d.  %d commands that you retain
%o.  With it, you must recover the Amulet
of Yendor.

"Go forth, and let %d guide your steps."
%E
%Cc Pri 00082
%l reiterates that %o is yours now.

"The time has come to resume your search for the Amulet.
%Z await your return through the magic portal
that brought you here."
%E
%Cp Pri 00090
"Welcome back, %p.  How is your quest for the Amulet going?"
%E
%Cc Pri 00091
"You have prevailed, %p!  %d is surely with you.  Now,
you must take the amulet, and sacrifice it on %ds altar on
the Astral Plane.  I suspect that I shall never see you again in this
life, but I hope to at %ds feet."
%E
%Cc Pri 00200
High Priest:  "My son, you have mastered the skills needed to advance into
the priesthood, but you have failed again and again at those acts of virtue
that would show the wisdom required before I may call you forth into the 
fullness of our mandate.

There is but one chance left I can offer you.   Go hence to the abode of
the wise old sage Perrin the Pendantic.   Learn from him what you can, and
then perhaps you may demonstrate the wisdom needed that you be called forth
into the fulness of the priesthood."
%E
%Cc Pri 00201
"Leave me.   Do not return unless you can prove yourself."
%E
%Cc Pri 00202
"I see, my child, that you have learnt through experience that wisdom you
could not learn through education.   Thank the gods.   Have you brought the
sacred herb to prove yourself?"

Present the bronze vessel to the High Priest?
%E
%Cc Pri 00203
High Priest:  "You have done well, my child.   The spirits have spoken to
me.   You have been called into the priesthood.  Join us."  

You begin to prepare for the ritual.
%E
%Cc Pri 00204
High Priest:  "I should have sent someone wiser than you.   You are a bad
person, and a worse priest.   I deject you from our community!   Go forth
and pray we never meet again."

You leave the Abbey and enter into the profession of Traitor.
%E
%Cc Pri 00205
%E
%Cc Pri 00206
%E
%Cc Pri 00207
%E
%Cc Pri 00208
%E
%Cc Pri 00324
Paladin:   "I can see, Sir, that you have some natural talent in the arts
of war.   Will you let me take you on and train you more fully in the
studies of the paladin?"
%E
%Cc Pri 00325
You accept his offer to learn the life of a paladin.   You begin to prepare
for the ritual.
%E
%Cc Pri 00326
Paladin:  "Very well.   Return to me if you change your mind."
%E
%Cc Pri 00327
%E
%Cc Pri 00328
Undertaker:   "Only the seriousest of students of the Art ever approaches
this difficult work.   Please, allow me to guide you into the art of the
Undertaker."

Will you join him?
%E
%Cc Pri 00329
You accept his offer to learn the art of the undertaker.   You begin to
prepare yourself for the journey. 
%E
%Cc Pri 00330
Undertaker:  "Very well.   Return to me if you change your mind."
%E
%Cc Pri 00331
%E
#	First talk to Perrin
%Cp Pri 00500
Perrin:  "Young man!  Young man!  

"I see you are a Brother.    Thank the gods.   Aid me!  

"I was struck down with a darkness when I cleared away the evil from nearby
farmlands.   I can not rise!   

"I can only be cured through use of the sacred moly.   There is in my
pantry a bronze vessel.   Please bring it back to me, that a healing may be
done.

"There are dangers..."
%E
#	Talk to Perrin Again Without Retrieving the Vessel
%Cp Pri 00501
"Bring me--!" cries the hermit before slumping over again unconscious.
%E
#	Talk to Perrin After Retrieving the Vessel
%Cp Pri 00502
Perrin roughly instructs you in the compounding of the necessary medicine.
You understand based on your studies of the healing arts from your time in
the abbey.

You compound the drug and treat him successfully.

Perrin recovers with shocking speed and thanks you vehemently.

Perrin:  "Dear Acolyte, you have saved my life!  You have shown that you
have the force of mind and strength of moral character that is needed in
what makes a priest.   If the high priest has any doubts, bring back to him
this vessel containing the remains of the rare herb you have used to heal
me, and tell him the miracle you have wrought!"
%E
#	Location "Menagerie"
%Cp Pri 00503
You see a Sand Person imprisonned in this cell.

"Help!   Help!   Release me!"   he says.

[If the Sand Person is released, he will take a weapon from somewhere in
the room and attack.]
%E
#	Location "Workshop"
%Cp Pri 00504
The partially dismembered corpses of two Sand People are seen here.   

There is a book open on a work surface of some kind.
%E
#	Location "Manual of Dissection in the Workshop"
%Cp Pri 00505
It appears to be the renowned Manual of Puissant Dissection.   You examine
the text and find your information in this fascinating subject grossly
expanded.
%E
#	Location "The Prize in Perrin's Pantry"
%Cp Pri 00506
You see an ornate bronze vessel, stinking heavily of moly.   You recognise
the foul smell from the studies in herbalism required in your training at
the abbey.
%E
#	Workshop
%Cp Pri 00507
The partially dismembered corpses of two Sand People rest on a table here.
There is a book open on a little stand.
%E
#	Perrin's Room
%Cp Pri 00508
Amidst a jumble of arcana and ancient texts that are impossible to read, you see the Hermit, Perrin the Pendantic, lying weak and frail on a raised pallet.
%E
#	The Menagerie
%Cp Pri 00509
This room is lined with cells or cages.   Most contain peculiar, dangerous animals.   These are sealed with impossible locks.   In the open between the cells is a pile of several rusty edged weapons.   You see a Sand Person imprisoned in one of the cells.
%E
#	Description
%Cp Pri 00510
Walls of this room are lined with little shelves containing a variety of special things.   The greater part of it seem to be dedicated to holding different kinds of marmelade.   Toward the back is a single lone shelf containing but a single ornate bronze vessel.
%E
#
#	Ranger
#
%Cc Ran 00001
You arrive in familiar surroundings.  In the distance, you %x the
ancient forest grove, the place of worship to %d.

Something is wrong, though.  Surrounding the grove are centaurs!
And they've noticed you!
%E
%Cp Ran 00002
Once again, you stand before %H.
%E
%Cp Ran 00003
You have the oddest feeling that this may be the last time you
are to enter %H.
%E
%Cp Ran 00005
"%pC!  I have not seen you in many moons.  How do you fare?"
%E
%Cp Ran 00006
"%nC continues to threaten the grove.  But we hold fast."
%E
%Cp Ran 00007
"%lC is growing weak, and the defense of the grove has claimed many of our
best."
%E
%Cp Ran 00008
"Remember %i is hard to enter.  Beware the
distraction of leatherwings."
%E
%Cp Ran 00009
"We must regain %o.  Without it we will be overrun."
%E
%Cp Ran 00010
"%pC!  I have not seen you in many moons.  How do you fare?"
%E
%Cp Ran 00011
"Birdsong has returned to the grove, surely this means you have defeated
%n."
%E
%Cp Ran 00012
"%lC seemed happier."
%E
%Cp Ran 00013
"So, tell us how you entered %i, in case some new evil arises there."
%E
%Cp Ran 00014
"Is that truly %o that I see you carrying?"
%E
%Cc Ran 00015
"%pC!  You have returned!  Thank %d.

"We have great need of you.  But first, I must see if you have the
required abilities to take on this responsibility."
%E
%Cp Ran 00016
"Once again, %p, you stand in our midst.  Are you ready now?"
%E
%Cp Ran 00017
"Ah, you are here again, %p.  Allow me to determine your readiness..."
%E
%Cc Ran 00018
"%pC!  You have doomed us all.  You fairly radiate %L influences
and weaken the power we have raised in this grove as a result!

"Begone!  We renounce your %shood with us!  You are an outcast now!"
%E
%Cc Ran 00019
"%p, you are yet too inexperienced to withstand the demands of that
which we need you to do.  %RA might just be able to do this thing.

"Return to us when you have learned more, my %S."
%E
%Cc Ran 00020
"You have strayed, %p!  You know that %d requires that
we maintain a pure devotion to things %a!

"You must go from us.  Return when you have purified yourself."
%E
%Cc Ran 00021
"You are indeed ready, %p.  I shall tell you what has transpired,
and why we so desperately need your help:

"A short time ago, the mountain centaurs to the east invaded
and enslaved the plains centaurs in this area.  The local
leader is now only a figurehead, and serves %n.

"During our last gathering of worship here, we were beset by hordes of
hostile centaurs, as you witnessed.  In the first onslaught a group,
headed by %n himself, managed to breach the grove and
steal %o.

"Since then, we have been besieged.  We do not know how much longer
we will be able to maintain our magical barriers.

"If we are to survive, you, %p, must infiltrate
%i.  There, you will find a pathway down, to the
underground cavern of %n.  He has always coveted
%o, and will surely keep it.

"Recover %o for us, %p!  Only then will %d be safe."
%E
%Cp Ran 00025
"It is rumored that the Forest and Mountain Centaurs have resolved
their ancient feud and now band together against us."
%E
%Cp Ran 00026
"%nC is strong, and very smart."
%E
%Cp Ran 00027
"Use %o, when you find it.  It will help you survive
to reach us."
%E
%Cp Ran 00028
"Remember, let %d be your guide."
%E
%Cp Ran 00029
"Call upon %d when you face %n.
The very act of doing so will infuriate him, and give you advantage."
%E
%Cp Ran 00030
"%n and his kind have always hated us."
%E
%Cp Ran 00031
"We cannot hold the grove much longer, %p.  Hurry!"
%E
%Cp Ran 00032
"To infiltrate %i, you must be very stealthy."
%E
%Cp Ran 00033
"Remember that %n is a braggart.  Trust not what he says."
%E
%Cp Ran 00034
"You can triumph, %p, if you trust in %d."
%E
%Cc Ran 00035
This must be %i.

You are in a cave built of many different rooms, all interconnected
by tunnels.  Your quest is to find and shoot the evil wumpus that
resides elsewhere in the cave without running into any bottomless
pits or using up your limited supply of arrows.  Good luck.

You are in room 9 of the cave.  There are tunnels to rooms
5, 8, and 10.
*rustle* *rustle* (must be bats nearby)
*sniff* (I can smell the evil wumpus nearby!)
%E
%Cc Ran 00036
Once again, you descend into %i.

*whoosh* (I feel a draft from some pits).
*rustle* *rustle* (must be bats nearby)
%E
%Cc Ran 00040
You descend into a weird place, in which roughly cut cave-like walls
join with smooth, finished ones, as if someone was in the midst of
finishing off the construction of a subterranean complex.

Off in the distance, you hear a sound like the clattering of many
hooves on rock.
%E
%Cp Ran 00041
Once again, you enter the ruined temple of %n.
%E
%Cc Ran 00050
"So, %c.  %lC has sent you to recover %o.

"Well, I shall keep that bauble.  It pleases me.  You, %c, shall die."
%E
%Cp Ran 00051
"Back again, eh?  Well, a mere %r is no threat to me!  Die, %c!"
%E
%Cp Ran 00052
"You haven't learned your lesson, %c.  You can't kill me!  You shall die now."
%E
%Cp Ran 00053
"I shall have %o from you, %r.  Then I shall
kill you."
%E
%Cp Ran 00060
"Your %d is nothing, %c.  You are mine now!"
%E
%Cp Ran 00061
"Run away little %c!  You can never hope to defeat %n!"
%E
%Cp Ran 00062
"My servants will rip you to shreds!"
%E
%Cp Ran 00063
"I shall display your head as a trophy.  What do you think about that wall?"
%E
%Cp Ran 00064
"I shall break your %ls grove, and destroy all the %gP!"
%E
%Cp Ran 00065
"%d has abandoned you, %c.  You are doomed."
%E
%Cp Ran 00066
"%rA?  %lC sends a mere %r against me?  Hah!"
%E
%Cp Ran 00067
"%lC has failed, %c.  %oC will never leave here."
%E
%Cp Ran 00068
"You really think you can defeat me, eh %c?  You are wrong!"
%E
%Cp Ran 00069
"You weaken, %c.  I shall kill you now."
%E
%Cc Ran 00070
As you pick up %o, it seems to glow, and a warmth
fills you completely.  You realize that its power is what has protected
your %sp against their enemies for so long.

You must now return it to %l without delay -- their lives depend
on your speed.
%E
%Cc Ran 00080
%nC collapses to the ground, cursing you and %l, then says:

    You have defeated me, %r!  But I curse you one final time, with my
    dying breath!  You shall die before you leave my temple!
%E
%Cc Ran 00081
"%pC!  You have succeeded!  I feared it was not possible!

"You have returned with %o!

"I fear, now, that the Centaurs will regroup and plot yet another raid.
This will take some time, but if you can recover the Amulet of Yendor
for %d before that happens, we will be eternally safe.

"Take %o with you.  It will aid in your quest for
the Amulet."
%E
# assumes The Longbow of Diana
%Cc Ran 00082
%l flexs %o reverently.

"With this wondrous bow, one need never run out of arrows.
You are its keeper now, and the time has come to resume your
search for the Amulet.  %Z await your return
through the magic portal that brought you here."
%E
%Cp Ran 00090
"Welcome, %p.  How have you fared on your quest for the Amulet
of Yendor?"
%E
%Cc Ran 00091
"You have it!  You have recovered the Amulet of Yendor!
Now attend to me, %p, and I will tell you what must be done:

"The Amulet has within it magic, the capability to transport you to
the Astral Plane, where the primary circle of %d resides.

"To activate this magic, you must travel upwards as far as you can.
When you reach the temple, sacrifice the Amulet to %d.

"Thus will you fulfill your destiny."
%E
%Cc Ran 00200
%E
%Cc Ran 00201
%E
%Cc Ran 00202
%E
%Cc Ran 00203
%E
%Cc Ran 00204
%E
%Cc Ran 00205
%E
%Cc Ran 00206
%E
%Cc Ran 00207
%E
%Cc Ran 00208
%E
#
#	Gnome Ranger
#
%Cc Gnr 00001
You arrive back at %H, but something seems
wrong here.  The happy songs of your gnome kin are absent,
and you hear angry words in a strange, unknown language.
%E
%Cp Gnr 00002
Once again, you arrive back at %H.
%E
%Cp Gnr 00003
For some reason, you think that this may be the last time you will
enter %H.
%E
%Cp Gnr 00005
"We have not been able to get food since the cave-ins!"
%E
%Cp Gnr 00006
"Since %n sent his minions, we have been constantly fighting."
%E
%Cp Gnr 00007
"I have heard your quest has been successful so far.  Is this so?"
%E
%Cp Gnr 00008
"So, tell me, %p, how have you fared?"
%E
%Cp Gnr 00009
"Ruggo grows old.  We know not who will guide us after he ascends."
%E
%Cp Gnr 00010
"We have finally been able make some progress clearing the cave-ins!"
%E
%Cp Gnr 00011
"Since %n sent his minions, we have been constantly fighting."
%E
%Cp Gnr 00012
"I have heard your quest has been very successful so far!"
%E
%Cp Gnr 00013
"So, tell me, %p, how have you fared?"
%E
%Cp Gnr 00014
"Have you truly rescued %o!?"
%E
%Cc Gnr 00015
"You hAve returned from your Vision QuesT.
bY %d's wiLl this is sO.

"We are in Dire Need of your hElp, younG Gnome.

"But first, i mUst see if you are yet caPabbble of the quest I would
ask you to undertAke."
%E
%Cp Gnr 00016
"Again, you retUrn to us, %p.  Let mE see if you are reaDy."
%E
%Cp Gnr 00017
"Ah, %p.  Are yoU finally reAdy?"
%E
%Cc Gnr 00018
"%p!  YOU seem unabLe to rEform YOUrself,
I mUst select anOther to tAke your plAce.

"Begone froM %H!"
%E
%Cc Gnr 00019
"Alas, %p, you Are As yet too ineXperienced to Embark upOn such
a difficult queEst as that I propose to you.  yOu must become
mOre pOwerful than Even Ruggo."
%E
%Cc Gnr 00020
"%p!  You have dEviated from thE teachings of %d.  Go fOrth,
and purify yourself."
%E
%Cc Gnr 00021
"You are inDeed reaDy now, %p.  I Shall Tell you the Tale of
ouR wOe:

"I am An AnGel of thE PeaceAble kiNgdoms of ArCaDia.  My aPointed
Task was to Guard and Guide a Pair of Gear-Spirits riSen aBove
the ClockwoRk PerfecTion.  But I faLtered in My task and my Wards
were stOlen AwAy by deVils in the serVice of KurtulmaK, God of
the KoBolds.

"My CharGes were Gifted to thE %n,
and shortly aFter you leFt on your Quest, the cAves of your Home 
were invadeD by the kobolDs.  The %n 
usEd %o to coLapse many of your peoPle's Mines.

"The %n sitS, hAughty and arRogant, in the verY bowEls 
of the Earth. He sends leGions of his KoBold Kin aGainst your
comRades, and theiR blades and the faMine have claimed Many.

"You mUst find %i, and withIn it wrest
%o from %n.  
He guaRds thEm jeaLousLy.  But with Them, yoU can make youR 
caveS Safe onCe more.
%E
%Cp Gnr 00025
"%n is a greAt and eVil suMonEr."
%E
%Cp Gnr 00026
"When you enCounter %n, Call uPon %d for assisTance."
%E
%Cp Gnr 00027
"There will be nowhere to hide inside %n's inner sanctum."
%E
%Cp Gnr 00028
"yOur best chance with %n wIll be to Kill hIm swifTly."
%E
%Cp Gnr 00029
"Do Not be distraCteD by the grEat treAsures in %n's lair.
ConCentraTe on %o."
%E
%Cp Gnr 00030
"%nC will sUmMon devils to fIght for hIm."
%E
%Cp Gnr 00031
"%n is slOw, and will die QuickLy if You can Hit Him."
%E
%Cp Gnr 00032
"I Would send a parTy of %gP with yoU,
but tHey must deFend their Homes."
%E
%Cp Gnr 00033
"RememBer, be %a At All Times.this is your strength."
%E
%Cp Gnr 00034
"If only I had bEen more vigiLant, this would Not have happeneD."
%E
%Cc Gnr 00035
You %x the footprints of many kobolds.  The tunnels ahead
of you are larger than most of those in any cave complex you have
ever been in before.

Your nose detects the smell of carrion from within, and bones litter
the sides of the tunnels.
%E
%Cc Gnr 00036
Once again, you approach %i.
%E
%Cc Gnr 00040
You find yourself in a dark room with neatly polished walls.

Bones litter the floor, and there are objects scattered everywhere.
The air is close with the fumes of evil magic.
%E
%Cp Gnr 00041
Once again, you find yourself in the lair of %n.
%E
%Cc Gnr 00050
"Gnome, you come my home!? You flayed!"
%E
%Cp Gnr 00051
"You come again, %c!? Killed, you!!"
%E
%Cp Gnr 00052
"You annoying.  Die."
%E
%Cp Gnr 00053
"Give back, you!?  Give back, die!"
%E
%Cp Gnr 00060
"Weak, you.  No challenge, you!"
%E
%Cp Gnr 00061
"I hungry!  Gnome fingers, dinner!!"
%E
%Cp Gnr 00062
"Die, gnome!"
%E
%Cp Gnr 00063
"Invincible, I!  Fail, you!"
%E
%Cp Gnr 00064
"Failed, angel.  Fail, you!"
%E
%Cp Gnr 00065
"You die here!"
%E
%Cp Gnr 00066
"Hah! Hah! Laugh, I!"
%E
%Cp Gnr 00067
"No hope, you."
%E
%Cp Gnr 00068
"Bite! Rip! Tear! You shreds!"
%E
%Cp Gnr 00069
"No god, you. This MY god home!"
%E
%Cc Gnr 00070
The twin crossbow makes small clicking and rattling noises.
They seem to be talking to each other, and their conversation,
though indecipherable, sounds distinctly relieved.
%E
%Cc Gnr 00080
%nC collapses to the ground, 
cursing you and %o incoherently,
and dies in a pool of blood.
%E
%Cc Gnr 00081
%l senses %o in your possession.

    You have Done it.  We are savEd.  But I fEar that
    %o will alWays be a TarGet for %C.

    To preVent further trouBle, I would lIke you, %p,
    To Take %o aWay with You.  TheY will help You
    as you Quest for the AmuLet of Yendor.
%E
# assumes The Twin Gear-spirits
%Cc Gnr 00082
%l clicks and rattles to %o lovingly.

"The Gear-spirIts can make Endless supplies of simPle bolTs,
so there is neVer aNy need for you to rEload, unlesS you
wish to fiRe special bolts.  In addiTion, the spirits
can disAssemble manY tYpes of trap if asked."

"You are their menTor now, and the Time has come to reSume
your search for the AmuLet.  %Z awAit your
reTurn."
%E
%Cp Gnr 00090
"WelCome back.
How goEs your Quest to Recover the Amulet for %d?"
%E
%Cc Gnr 00091
"You have been sucCessful, I sEe, %p.

"Now that the Amulet of YenDor is yours, here is wHat you must do:

"Journey UpWards to the open air.  The Amulet you carRy will then
take you into the AsTral Planes, where the Great Temple of 
%d casts itS influence throughOut your world.

"SacriFice the AmuLet on the alTar.  Thus shall %d become supReme!"
%E
%Cc Gnr 00200
%E
%Cc Gnr 00201
%E
%Cc Gnr 00202
%E
%Cc Gnr 00203
%E
%Cc Gnr 00204
%E
%Cc Gnr 00205
%E
%Cc Gnr 00206
%E
%Cc Gnr 00207
%E
%Cc Gnr 00208
%E
#
#	Rogue (with apologies to all Norsk speakers -dean)
#
%Cc Rog 00001
Unexpectedly, you find yourself back in Ransmannsby, where you trained to
be a thief.  Quickly you make the guild sign, hoping that you AND word
of your arrival reach %ls den.
%E
%Cp Rog 00002
Once again, you find yourself back in Ransmannsby.  Fond memories are
replaced by fear, knowing that %l is waiting for you.
%E
%Cp Rog 00003
You rub your hands through your hair, hoping that the little ones on
the back of your neck stay down, and prepare yourself for your meeting
with %l.
%E
%Cp Rog 00005
"I hear that Lady Tyvefelle's household is lightly guarded."
%E
%Cp Rog 00006
"You're back?  Even the Twain don't come back anymore."
%E
%Cp Rog 00007
"Can you spare an old cutpurse a zorkmid for some grog?"
%E
%Cp Rog 00008
"Fritz tried to join the other side, and now he's hell-hound chow."
%E
%Cp Rog 00009
"Be careful what you steal, I hear the boss has perfected turning
rocks into worthless pieces of glass."
%E
%Cp Rog 00010
"I was sure wrong about Lady Tyvefelle's house; I barely got away with my
life and lost my lock pick in the process."
%E
%Cp Rog 00011
"You're back?  Even the Twain don't come back anymore."
%E
%Cp Rog 00012
"Can you spare an old cutpurse a zorkmid for some grog?"
%E
%Cp Rog 00013
"Fritz tried to join the other side, and now he's hell-hound chow."
%E
%Cp Rog 00014
"Be careful what you steal, I hear the boss has perfected turning
rocks into worthless pieces of glass."
%E
%Cc Rog 00015
"Well, look who it is boys -- %p has come home.  You seem to have
fallen behind in your dues.  I should kill you as an example to these
other worthless cutpurses, but I have a better plan.  If you are ready
maybe you could work off your back dues by performing a little job for
me.  Let us just see if you are ready..."
%E
%Cp Rog 00016
"Well, I didn't expect to see you back.  It shows that you are either stupid,
or you are finally ready to accept my offer.  Let us hope for your sake it
isn't stupidity that brings you back."
%E
%Cp Rog 00017
"Did you perhaps mistake me for some other %lt?  You must
think me as stupid as your behavior.  I warn you not to try my patience."
%E
%Cc Rog 00018
"Well %gp, it looks like our friend has forgotten who is the boss
around here.  Our friend seems to think that %rp have been put in
charge.  Wrong.  DEAD WRONG!"

Your sudden shift in surroundings prevents you from hearing the end
of %ls curse.
%E
%Cc Rog 00019
"In the time that you've been gone you've only been able to master the
arts of %ra?  I've trained ten times again as many %Rp
in that time.  Maybe I should send one of them, no?  Where would that
leave you, %p?  Oh yeah, I remember, I was going to kill you!"
%E
%Cc Rog 00020
"Maybe I should chain you to my perch here for a while.  Perhaps watching
real %a men at work will bring some sense back to you.  I don't
think I could stand the sight of you for that long though.  Come back
when you can be trusted to act properly."
%E
%Cc Rog 00021
"Will everyone not going to retrieve %o from that
jerk, %n, take one step backwards.  Good choice,
%p, because I was going to send you anyway.  My other %gp
are too valuable to me.

"Here's the deal.  I want %o, %n
has %o.  You are going to get %o
and bring it back to me.  So simple an assignment even you can understand
it."
%E
%Cp Rog 00025
"You don't seem to understand,
%o isn't here so neither should you be!"
%E
%Cp Rog 00026
"May %d curse you with lead fingers.  Get going!"
%E
%Cp Rog 00027
"We don't have all year.  GET GOING!"
%E
%Cp Rog 00028
"How would you like a scar necklace?  I'm just the jeweler to do it!"
%E
%Cp Rog 00029
"Lazy S.O.B.  Maybe I should call up someone else..."
%E
%Cp Rog 00030
"Maybe I should open your skull and see if my instructions are inside?"
%E
%Cp Rog 00031
"This is not a task you can complete in the afterlife, you know."
%E
%Cp Rog 00032
"Inside every living person is a dead person trying to get out,
and I have your key!"
%E
%Cp Rog 00033
"We're almost out of hell-hound chow, so why don't you just get moving!"
%E
%Cp Rog 00034
"You know, %o isn't going to come when you
whistle.  You must get it yourself."
%E
%Cc Rog 00035
Those damn little hairs tell you that you are nearer to
%o.
%E
%Cp Rog 00036
Not wanting to face %l without having stolen
%o, you continue.
%E
%Cc Rog 00040
You feel a great swelling up of courage, sensing the presence of
%o.  Or is it fear?
%E
%Cp Rog 00041
The hairs on the back of your neck whisper -- it's fear.
%E
%Cc Rog 00050
"Ah!  You must be %ls ... er, `hero'.  A pleasure
to meet you."
%E
%Cp Rog 00051
"We meet again.  Please reconsider your actions."
%E
%Cp Rog 00052
"Surely, %p, you have learned that you cannot trust any bargains
that %l has made.  I can show you how to continue on
your quest without having to run into him again."
%E
%Cp Rog 00053
"Please, think for a moment about what you are doing.  Do you truly
believe that %d would want %l to have
%o?"
%E
%Cp Rog 00060
"May I suggest a compromise.  Are you interested in gold or gems?"
%E
%Cp Rog 00061
"Please don't force me to kill you."
%E
%Cp Rog 00062
"Grim times are upon us all.  Will you not see reason?"
%E
%Cp Rog 00063
"I knew %l, and you're no %lt, thankfully."
%E
%Cp Rog 00064
"It is a shame that we are not meeting under more pleasant circumstances."
%E
%Cp Rog 00065
"I was once like you are now, %p.  Believe in me -- our way
is better."
%E
%Cp Rog 00066
"Stay with me, and I will make you %os guardian."
%E
%Cp Rog 00067
"When you return, with or without %o,
%l will have you killed."
%E
%Cp Rog 00068
"Do not be fooled; I am prepared to kill to defend %o."
%E
%Cp Rog 00069
"I can reunite you with the Twain.  Oh, the stories you can swap."
%E
%Cc Rog 00070
As you pick up %o, the hairs on the back of your
neck fall out.  At once you realize why %n was
willing to die to keep it out of %ls hands.  Somehow
you know that you must do likewise.
%E
%Cc Rog 00080
"I know what you are thinking, %p.  It is not too late for you
to use %o wisely.  For the sake of your guild
%sp, do what is right."

You sit and wait for death to come for %n, and then you
brace yourself for your next meeting with %l!
%E
%Cc Rog 00081
"Well, I'll be damned.  You got it.  I am proud of you, a fine %r
you've turned out to be.

"While you were gone I got to thinking, you and %o
together could bring me more treasure than either of you apart, so why don't
you take it with you.  All I ask is a cut of whatever loot you come by.
That is a better deal than I offered %n.

"But, you see what happened to %n when he refused.
Don't make me find another to send after you this time."
%E
# assumes Master Key of Thievery (small object)
%Cc Rog 00082
%l seems tempted to swap %o for
the mundane one you detect in his pocket, but noticing your alertness,
evidently chickens out.

"Go filch the Amulet before someone else beats you to it.
%Z are back the way you came, through the magic portal."
%E
%Cc Rog 00090
"Quite the little thief, aren't we, %p.  Can I interest you in a
swap for %o.  Look around, anything in the keep
is yours for the asking."
%E
%Cc Rog 00091
"I see that with your abilities, and my brains, we could rule this world.

"All that we would need to be all-powerful is for you to take that little
trinket you've got there up to the Astral Plane.  From there, %d will
show you what to do with it.  Once that's done, we will be invincible!"
%E
%Cc Rog 00200
%E
%Cc Rog 00201
%E
%Cc Rog 00202
%E
%Cc Rog 00203
%E
%Cc Rog 00204
%E
%Cc Rog 00205
%E
%Cc Rog 00206
%E
%Cc Rog 00207
%E
%Cc Rog 00208
%E
#
#	Salamander Rogue/Convict
#
%Cc Sal 00001
You find yourself in the slave camp you escaped from, %H. 
Cruel memories spin around your head. You must find %l.
%E
%Cp Sal 00002
Once again, you find yourself in the slave camp you escaped from, %H. 
Cruel memories spin around your head. You must find %l.
%E
%Cp Sal 00003
You are back at %H. Perhaps for the last time.
%E
%Cp Sal 00005
"Curse the wretched efreeti!"
%E
%Cp Sal 00006
"The City of Brass will fall!"
%E
%Cp Sal 00007
"We toil all day and keep nothing for ourselves."
%E
%Cp Sal 00008
"%o is our only hope."
%E
%Cp Sal 00009
"%lC has learned magic from watching the efreeti. 
I wonder if we could do the same?"
%E
%Cp Sal 00010
"You did it?"
%E
%Cp Sal 00011
"May %d bless us all."
%E
%Cp Sal 00012
"%o will guide us to our freedom!"
%E
%Cp Sal 00013
"%nC is dead?"
%E
%Cp Sal 00014
"What will we do without our efreeti rulers?"
%E
%Cc Sal 00015
%lC stares at you blankly for a moment and then recognizes you.
"%pC, you have returned? We have been waiting patiently and are ready to 
strike when you are. Let me make sure you are ready..."
%E
%Cp Sal 00016
%l stares at you blankly for a moment and then recognizes you.
"%pC, you have returned? We have been waiting patiently and are ready to 
strike when you are. Let me make sure you are ready..."
%E
%Cp Sal 00017
%l stares at you blankly for a moment and then recognizes you.
"%pC, you have returned? We have been waiting patiently and are ready to 
strike when you are. Let me make sure you are ready..."
%E
%Cc Sal 00018
"No %p. You are one of them. You would surely turn us in.
Begone."
%E
%Cc Sal 00019
"You are not yet ready. Prepare yourself better. %l is a serious adversary. 
One does not simply walk into %i."
%E
%Cc Sal 00020
"You are not ready. Follow the path of %d more closely."
%E
%Cc Sal 00021
"It is time for the rebellion, %p. You must head through %H to 
%i and locate the Charcoal Palace. There resides %n who has stolen 
%o, an artifact of our ancestors that kept them free from efreeti enslavement."

"Salamander brethern, now is the time to overthrow our cruel rulers!"
%E
%Cp Sal 00025
"%iC is the oldest city in all creation."
%E
%Cp Sal 00026
"Efreeti fear no fire but are weak to much else."
%E
%Cp Sal 00027
"Beware the magical spells of our efreeti overlords."
%E
%Cp Sal 00028
"If you can, free any salamander prisoners you see along the way."
%E
%Cp Sal 00029
"Glory will be returned to our primordial race!"
%E
%Cp Sal 00030
"Like a phoenix, we will rise from our fiery lives of death."
%E
%Cp Sal 00031
"Obsidian, as much as it represents our chains, is a good and sharp material."
%E
%Cp Sal 00032
"Lava is a good place for us heat loving salamanders to be."
%E
%Cp Sal 00033
"It is said the nine lords of hell trade with %i."
%E
%Cp Sal 00034
"Efreeti grant wishes for no one but themselves."
%E
%Cc Sal 00035
%iC, a place you had only ever heard stories of before stands before you. 
You must infiltrate the city and recover %o. 
You hear the bustling sounds of foreign merchants.
%E
%Cp Sal 00036
You hear the bustling sounds of foreign merchants.
%E
%Cc Sal 00040
The Charcoal Palace, %nC's abide. 
You feel fear of the likes you haven't felt since you were a 
young fire snake.
%E
%Cp Sal 00041
You return to the Charcoal Palace.
%E
%Cc Sal 00050
"Get back to %H you good for nothing slave!
%dC has no love for you!"
%E
%Cp Sal 00051
"Begone slave!"
%E
%Cp Sal 00052
"%lC's little rebellion ends now!"
%E
%Cp Sal 00053
"%oC cannot save you!"
%E
%Cp Sal 00060
"Salamanders have been the slaves of the efreeti since the dawn of time!"
%E
%Cp Sal 00061
"An empire that has slain Kostchtchie can slay a measly %r."
%E
%Cp Sal 00062
"Your kind is cut from a worse cloth than mine."
%E
%Cp Sal 00063
"Go back to %H and pick some qamah."
%E
%Cp Sal 00064
"Gods never die."
%E
%Cp Sal 00065
"Salamanders are the pond scum of lava pools."
%E
%Cp Sal 00066
"%lC and all his rebels will be put to death."
%E
%Cp Sal 00067
"The Lords of the Nine support us.
You really think you can overthrow that?"
%E
%Cp Sal 00068
"This rebellion means nothing."
%E
%Cp Sal 00069
"Killing me will not end the efreeti rule!"
%E
%Cc Sal 00070
%oC fills you with a burning feeling of primordial power.
You know that with it an end can be put to the salamander enslavement.
%E
%Cc Sal 00080
%nC bellows
"No! Death is impossible!"
As %n blows away into the dust, you realize it is time
to return to %l with %o.

%E
%Cc Sal 00081
"You've done it! This is the biggest step in the rebellion yet!"
%lC takes %o and with it ends the efreeti overseer invasion.
"You should hold onto %o, %p. You can do much more for the 
rebellion with it."
%E
%Cc Sal 00082
"You've done it! This is the biggest step in the rebellion yet!"
%lC takes %o and with it ends the efreeti overseer invasion.
"You should hold onto %o, %p. You can do much more for the 
rebellion with it."
%E
%Cc Sal 00090
"Return to %Z and seek out the Amulet of Yendor so that %d 
can set us all truly free!"
%E
%Cc Sal 00091
"Head to the Astral Plane with the amulet and offer it to 
%d so we can be truly free."
%E
%Cc Sal 00200
%E
%Cc Sal 00201
%E
%Cc Sal 00202
%E
%Cc Sal 00203
%E
%Cc Sal 00204
%E
%Cc Sal 00205
%E
%Cc Sal 00206
%E
%Cc Sal 00207
%E
%Cc Sal 00208
%E
#
#	Samurai
#
%Cc Sam 00001
Even before your senses adjust, you recognize the kami of
%H.

You %x the standard of your teki, %n, flying above
the town.  How could such a thing have happened?  Why are ninja
wandering freely; where are the samurai of your daimyo, %l?

You quickly say a prayer to Izanagi and Izanami and walk towards
town.
%E
%Cp Sam 00002
Once again, you are back at %H.
%E
%Cp Sam 00003
You are back at %H.

Instantly you sense a subtle change in your karma.  You seem to know that
if you do not succeed in your quest, %n will have destroyed
the kami of %H before you return again.
%E
%Cp Sam 00005
"To succeed, you must walk like a butterfly on the wind."
%E
%Cp Sam 00006
"Ikaga desu ka?"
%E
%Cp Sam 00007
"I fear for The Land of The Gods."
%E
%Cp Sam 00008
"%nC has hired the Ninja -- be careful."
%E
%Cp Sam 00009
"If %o is not returned, we will all be ronin."
%E
%Cp Sam 00010
"Come, join us in celebrating with some sake."
%E
%Cp Sam 00011
"Ikaga desu ka?"
%E
%Cp Sam 00012
"You have brought our clan and %l much honor."
%E
%Cp Sam 00013
"Please %r, sit for a while and tell us how you overcame the Ninja."
%E
%Cp Sam 00014
"%lC still lives!  You have saved us from becoming ronin."
%E
%Cc Sam 00015
"Ah, %p-san, it is good to see you again.  I need someone who can
lead my samurai against %n.  If you are ready, you will be
that person."
%E
%Cp Sam 00016
"Once again, %p-san, you kneel before me.  Are you yet capable of
being my vassal?"
%E
%Cp Sam 00017
"You begin to test my matsu, %p-san.
If you cannot determine what I want in a samurai, how can I rely on you
to figure out what I need from a samurai?"
%E
%Cc Sam 00018
"You are no longer my samurai, %p.

"Hara-kiri is denied.  You are ordered to shave your head and then to
become a monk.  Your fief and family are forfeit.  Wakarimasu ka?"
%E
%Cc Sam 00019
"%p-san, you have learned well and honored your family.
I require the skills of %Ra in order to defeat %n.
Go and seek out teachers.  Learn what they have learned.  When you
are ready, return to me."
%E
%Cc Sam 00020
"%p-san, you would do better to join the kyokaku.

"You have skills, but until you can call upon the bushido to know when and
how to use them you are not samurai.  When you can think %a and
act %a then return."
%E
%Cc Sam 00021
"Domo %p-san, indeed you are ready.  I can now tell you what
it is that I require of you.

"The daimyo, %n, has betrayed us.  He has stolen from us
%o and taken it to his donjon deep within
%i.

"If I cannot show the emperor %o when he comes
for the festival he will know that I have failed in my duty, and
request that I commit seppuku.

"You must gain entrance to %i and retrieve the
emperor's property.  Be quick!  The emperor will be here for the
cha-no-you in 5 sticks.

"Wakarimasu ka?"
%E
%Cp Sam 00025
"To defeat %n you must overcome the seven emotions:
hate, adoration, joy, anxiety, anger, grief, and fear."
%E
%Cp Sam 00026
"Remember your honor is my honor, you perform in my name."
%E
%Cp Sam 00027
"I will go to the temple and burn incense for your safe return."
%E
%Cp Sam 00028
"Sayonara."
%E
%Cp Sam 00029
"There can be honor in defeat, but no gain."
%E
%Cp Sam 00030
"Your kami must be strong in order to succeed."
%E
%Cp Sam 00031
"You are indeed a worthy %R, but now you must be a worthy samurai."
%E
%Cp Sam 00032
"If you fail, %n will be like a tai-fun on the land."
%E
%Cp Sam 00033
"If you are truly %a, %d will listen."
%E
%Cp Sam 00034
"Sharpen your swords and your wits for the task before you."
%E
%Cc Sam 00035
You instinctively reach for your swords.  You do not recognize the
lay of this land, but you know that your teki are everywhere.
%E
%Cp Sam 00036
Thankful that your %sp at %H cannot see
your fear, you prepare again to advance.
%E
%Cc Sam 00040
In your mind, you hear the taunts of %n.

You become like the rice plant and bend to the ground, offering a
prayer to %d.  But when the wind has passed, you stand
proudly again.  Putting your kami in the hands of fate, you advance.
%E
%Cp Sam 00041
As you arrive once again at the home of %n, your thoughts
turn only to %o.
%E
%Cc Sam 00050
"Ah, so it is to be you, %p-san.  I offer you seppuku.
I will be your second if you wish."
%E
%Cp Sam 00051
"I have offered you the honorable exit.  Now I will have your
head to send unwashed to %l."
%E
%Cp Sam 00052
"After I have dispatched you, I will curse your kami."
%E
%Cp Sam 00053
"You have fought my samurai; surely you must know that you
will not be able to take %o back to
%H."
%E
%Cp Sam 00060
"Ahh, I finally meet the daimyo of the kyokaku!"
%E
%Cp Sam 00061
"There is no honor for me in your death."
%E
%Cp Sam 00062
"You know that I cannot resash my swords until they have killed."
%E
%Cp Sam 00063
"Your presence only compounds the dishonor of %l in not coming himself."
%E
%Cp Sam 00064
"I will make tea with your hair and serve it to %l."
%E
%Cp Sam 00065
"Your fear shows in your eyes, coward!"
%E
%Cp Sam 00066
"I have not heard of you, %p-san; has your life been that unworthy?"
%E
%Cp Sam 00067
"If you will not obey me, you will die."
%E
%Cp Sam 00068
"Kneel now and make the two cuts of honor.  I will tell your %sp
of your honorable death."
%E
%Cp Sam 00069
"Your master was a poor teacher.  You will pay for his mistakes in
your teaching."
%E
%Cc Sam 00070
As you pick up %o, you feel the strength of its karma.
You realize at once why so many good samurai had to die to defend it.
You are humbled knowing that you hold one of the artifacts of the
sun goddess.
%E
%Cc Sam 00080
Your healing skills tell you that %ns wounds are mortal.

You know that the bushido tells you to finish him and let his kami
die with honor, but the thought of so many samurai dead due to this
man's dishonor prevents you from giving the final blow.

You order that his unwashed head be given to the crows and his body
thrown into the sea.
%E
%Cc Sam 00081
As you bow before %l, he welcomes you:

    You have brought your family great honor, %p-sama.

    While you have been gone the emperor's advisors have discovered in
    the ancient texts that the karma of the samurai who seeks to recover
    the amulet and the karma of %o are joined
    as the seasons join to make a year.

    Because you have shown such fidelity, the emperor requests
    that you take leave of other obligations and continue on the
    road that fate has set your feet upon.  I would consider it
    an honor if you would allow me to watch your household until
    you return with the amulet.

With that, %l bows, and places his sword atop
%o.
%E
%Cc Sam 00082
%l holds %o tightly for a moment, then returns
his gaze to you.

"The time is ripe to recover the Amulet.  Return to %Z
through the magic portal that transported you here so that you may
achieve the destiny which awaits you."
%E
%Cp Sam 00090
%lC bows.  "%p-sama, tell us of your search for the Amulet."
%E
%Cc Sam 00091
"Ah, %p-sama.  You have wasted your efforts returning home.
Now that you are in possession of the Amulet, you are honor-bound to
finish the quest you have undertaken.  There will be plenty of time
for saki and stories when you have finished.

"Go now, and may our prayers be a wind at your back."
%E
%Cc Sam 00200
%E
%Cc Sam 00201
%E
%Cc Sam 00202
%E
%Cc Sam 00203
%E
%Cc Sam 00204
%E
%Cc Sam 00205
%E
%Cc Sam 00206
%E
%Cc Sam 00207
%E
%Cc Sam 00208
%E
%Cc Sam 00336
%E
%Cc Sam 00337
%E
%Cc Sam 00338
%E
%Cc Sam 00339
%E
#
#	Tourist
#
%Cc Tou 00001
You breathe a sigh of relief as you find yourself back in the familiar
surroundings of %H.

You quickly notice that things do not appear the way they did when you
left.  The town is dark and quiet.  There are no sounds coming from
behind the town walls, and no campfires burning in the fields.  As a
matter of fact, you do not %x any movement in the fields at all, and
the crops seem as though they have been untended for many weeks.
%E
%Cp Tou 00002
Once again, you are back at %H.
%E
%Cp Tou 00003
You are back at %H.
Things appear to have become so bad that you fear that soon
%H will not be here to return to.
%E
%Cp Tou 00005
"Gehennom on 5 zorkmids a day -- more like 500 a day if you ask me."
%E
%Cp Tou 00006
"Do you know where I could find some nice postcards of The Gnomish Mines?"
%E
%Cp Tou 00007
"Have you tried the weird toilets?"
%E
%Cp Tou 00008
"Don't stay at the Inn, I hear the food is terrible and it has rats."
%E
%Cp Tou 00009
"They told me that this was the off season!"
%E
%Cp Tou 00010
"Gehennom on 5 zorkmids a day -- more like 500 a day if you ask me."
%E
%Cp Tou 00011
"Do you know where I could find some nice postcards of The Gnomish Mines?"
%E
%Cp Tou 00012
"Have you tried the weird toilets?"
%E
%Cp Tou 00013
"If you stick around, I'll show you the pictures from my latest trip."
%E
%Cp Tou 00014
"Did you bring me back any souvenirs?"
%E
%Cc Tou 00015
"Is it really you, %p!  I had given up hope for your return.
As you can %x, we are desperately in need of your talents.  Someone must
defeat %n if our town is to become what it once was.

"Let me see if you are ready to be that someone."
%E
%Cp Tou 00016
"Things are getting worse, %p.
I hope that this time you are ready."
%E
%Cp Tou 00017
"I hope that for the sake of %H you have prepared
yourself this time."
%E
%Cc Tou 00018
"It is too late, %p.  You are not even worthy to die amongst us.
Leave %H and never return."
%E
%Cc Tou 00019
"There is still too much that you have to learn before you can undertake
the next step.  Return to us as a proven %R, and perhaps then
you will be ready.

"Go back now, and may the teachings of %d serve you well."
%E
%Cc Tou 00020
"It would be an affront to %d to have one not true to the
%a path undertake her bidding.

"You must not return to us until you have purified yourself of these
bad influences on your actions.  Remember, only by following the %a
path can you hope to overcome the obstacles you will face."
%E
%Cc Tou 00021
"You have indeed proven yourself a worthy %c, %p.

"But now your kinfolk and I must ask you to put aside your travels and
help us in our time of need.  After you left us we elected a new mayor,
%n.  He proved to be a most heinous and vile creature.

"Soon after taking office he absconded with %o
and fled town, leaving behind his henchmen to rule over us.  In order
for us to regain control of our town, you must enter %i
and recover %o.

"Do not be distracted on your quest.  If you do not return quickly I fear
that all will be lost.  Let us both pray now that %d will guide you
and keep you safe."
%E
%Cp Tou 00025
"Do not be fooled by the false promises of %n."
%E
%Cp Tou 00026
"To enter %i you must pass many traps."
%E
%Cp Tou 00027
"If you do not return with %o, your quest
will be in vain."
%E
%Cp Tou 00028
"Do not be afraid to call upon %d if you truly need help."
%E
%Cp Tou 00029
"If you do not destroy %n, he will follow you back here!"
%E
%Cp Tou 00030
"Take %o from %n
and you may be able to defeat him."
%E
%Cp Tou 00031
"You must hurry, %p!"
%E
%Cp Tou 00032
"You are like %Sa to me, %p.  Do not let me down."
%E
%Cp Tou 00033
"If you are %a at all times you may succeed, %p."
%E
%Cp Tou 00034
"Let all who meet you on your journey know that you are on an quest for
%l and grant safe passage."
%E
%Cc Tou 00035
Only your faith in %d keeps you from trembling.  You %x
the handiwork of %ns henchlings everywhere.
%E
%Cp Tou 00036
You know that this time you must find and destroy %n.
%E
%Cc Tou 00040
You sense the presence of %o.
%E
%Cp Tou 00041
You gain confidence, knowing that you may soon be united with
%o.
%E
%Cc Tou 00050
"So, %p, %l thinks that you can wrest
%o from me!

"It only proves how desperate he has become that he sends %ra to
try and defeat me.  When this day is over, I will have you enslaved
in the mines where you will rue the day that you ever entered
%i."
%E
%Cp Tou 00051
"I let you live the last time because it gave me pleasure.
This time I will destroy you, %p."
%E
%Cc Tou 00052
"These meetings come to bore me.  You disturb my workings with
%o.

"If you do not run away now, I will inflict so much suffering on you that
%l will feel guilty for ever having sent his %S to me!"
%E
%Cc Tou 00053
"You fool.  You do not know how to call upon the powers of
%o.

"Return it to me and I will teach you how to use it, and together we
will rule %H.  But do so now, as my patience
grows thin."
%E
%Cp Tou 00060
"I defeated %l and I will defeat you, %p."
%E
%Cp Tou 00061
"Where is %d now!  You must realize no one can help you here."
%E
%Cp Tou 00062
"Beg for mercy now and I may be lenient on you."
%E
%Cp Tou 00063
"If you were not so %a, you might have stood a chance."
%E
%Cp Tou 00064
"Vengeance is mine at last, %p."
%E
%Cp Tou 00065
"I only wish that %l had a more worthy %r to send against me."
%E
%Cp Tou 00066
"With %o in my possession you cannot
hope to defeat me."
%E
%Cp Tou 00067
"%nC has never been defeated, NEVER!"
%E
%Cp Tou 00068
"Are you truly the best %H has to send against me?
I pity %l."
%E
%Cp Tou 00069
"How do you spell %p?  I want to ensure the marker on your grave is
correct as a warning to your %sp."
%E
%Cc Tou 00070
As you pick up %o, you feel a great
weight has been lifted from your shoulders.  Your only thoughts are
to quickly return to %H and find %l.
%E
%Cc Tou 00080
You turn in the direction of %n.  As his earthly body begins
to vanish before your eyes, you hear him curse:

    You shall never be rid of me, %p!
    I will find you where ever you go and regain what is rightly mine.
%E
%Cc Tou 00081
As %l detects the presence of %o,
he almost smiles for the first time in many a full moon.

As he looks up from %o he says:

    You have recovered %o.  You are its
    owner now, but not its master.  Let it work with you as you continue
    your journey.  With its help, and %d to guide you on the
    %a path, you may yet recover the Amulet of Yendor.
%E
%Cc Tou 00082
"%oC is yours now.  %Z await your
return through the magic portal that brought you here."
%E
%Cp Tou 00090
"I could not be more proud than if you were my own %S, %p!
Tell me of your adventures in quest of the Amulet of Yendor."
%E
%Cc Tou 00091
"Stand back and let me look at you, %p.
Now that you have recovered the Amulet of Yendor, I'm afraid living
out your days in %H would seem pretty tame.

"You have come too far to stop now, for there are still more tasks that
our oral history foretells for you.  Forever more, though, your name shall
be spoken by the %gP with awe.  You are truly an inspiration to your
%sp!"
%E
%Cc Tou 00200
%E
%Cc Tou 00201
%E
%Cc Tou 00202
%E
%Cc Tou 00203
%E
%Cc Tou 00204
%E
%Cc Tou 00205
%E
%Cc Tou 00206
%E
%Cc Tou 00207
%E
%Cc Tou 00208
%E
%Cc Tou 00340
%E
%Cc Tou 00341
%E
%Cc Tou 00342
%E
%Cc Tou 00343
%E
%Cc Tou 00344
%E
%Cc Tou 00345
%E
%Cc Tou 00346
%E
%Cc Tou 00347
%E
%Cc Tou 00348
%E
%Cc Tou 00349
%E
%Cc Tou 00350
%E
%Cc Tou 00351
%E
%Cc Tou 00352
%E
%Cc Tou 00353
%E
%Cc Tou 00354
%E
%Cc Tou 00355
%E
#
#	Valkyrie
#
%Cc Val 00001
You materialize at the base of a snowy hill.  Atop the hill sits
a place you know well, %H.  You immediately realize
that something here is very wrong!

In places, the snow and ice have been melted into steaming pools of
water.  Fumaroles and pools of bubbling lava surround the hill.
The stench of sulphur is carried through the air, and you %x creatures
that should not be able to live in this environment moving towards you.
%E
%Cp Val 00002
Once again, you are near the abode of %l.
%E
%Cp Val 00003
Again you materialize near %ls abode.  You have a nagging feeling
that this may be the last time you come here.
%E
%Cp Val 00005
"Hail, and well met, brave %c."
%E
%Cp Val 00006
"May %d guide your steps, %p."
%E
%Cp Val 00007
"%lC weakens.  Without %o, her foresight is dim."
%E
%Cp Val 00008
"You must hurry, %p, else Ragnarok may well come."
%E
%Cp Val 00009
"I would deal with this foul %n myself, but %d forbids it."
%E
%Cp Val 00010
"Hail, and well met, brave %c."
%E
%Cp Val 00011
"May %d guide your steps, %p."
%E
%Cp Val 00012
"%lC told us you had succeeded!"
%E
%Cp Val 00013
"You recovered %o just in time, %p."
%E
%Cp Val 00014
"Hail %d, for delivering %o back to us."
%E
%Cc Val 00015
"Ah, %p, my %S.  You have returned to %H
at last.  We are in dire need of your aid, but I must determine if you
are yet ready for such an undertaking.

"Let me read your fate..."
%E
%Cp Val 00016
"Let me read the future for you now, %p, perhaps you have managed to
change it enough..."
%E
%Cp Val 00017
"Again, I shall read your fate, my %S.  Let us both hope that you have
made changes to become ready for this task..."
%E
%Cc Val 00018
"No, %p.  Your fate is sealed.  I must cast about for another
champion.  Begone from my presence, and never return.  Know this, that
you shall never succeed in this life, and Valhalla is denied to you."
%E
%Cc Val 00019
"I see you and %n fighting, %p.  But you are not prepared and
shall die at %ns hand if you proceed.  No.  This will not do.
Go back out into the world, and grow more experienced at the ways of
war.  Only when you have returned %Ra will you be able to defeat
%n."
%E
%Cc Val 00020
"NO!  This is terrible.  I see you becoming an ally of %n, and
leading his armies in the final great battles.  This must not come to
pass!  You have strayed from the %a path.  You must purge yourself,
and return here only when you have regained a state of purity."
%E
%Cc Val 00021
"It is not clear, %p, for my sight is limited without
%o.  But it is now likely that you can defeat %n,
and recover %o.

"A short time ago, %n and his minions attacked this place.  They
opened the huge volcanic vents you %x about the hill, and attacked.
I knew that this was to come to pass, and had asked %d for a group
of %gP to help defend this place.  The few you %x here are the
mightiest of Valhalla's own, and are all that are left of one hundred
%d sent.

"Despite the great and glorious battle we fought, %n managed at last
to steal %o.  This has upset the balance of the universe, and
unless %o is returned into my care, %n may start Ragnarok.

"You must find the entrance to %i.  Travel downward
from there and you will find %ns lair.  Defeat him and
return %o to me."
%E
%Cp Val 00025
"Go with the blessings of %d."
%E
%Cp Val 00026
"Call upon %d when you are in need."
%E
%Cp Val 00027
"Use %o if you can.  It will protect you."
%E
%Cp Val 00028
"Magical cold is very effective against %n."
%E
%Cp Val 00029
"To face %n, you will need to be immune to fire."
%E
%Cp Val 00030
"May %d strengthen your sword-arm."
%E
%Cp Val 00031
"Trust in %d.  He will not desert you."
%E
%Cp Val 00032
"It becomes more likely that Ragnarok will come with every passing moment.
You must hurry, %p."
%E
%Cp Val 00033
"If %n can master %o, he will be powerful enough to
face %d far earlier than is fated.  This must not be!"
%E
%Cp Val 00034
"Remember your training, %p.  You can succeed."
%E
%Cc Val 00035
The ice and snow gives way to a valley floor.  You %x ahead of you
a huge round hill surrounded by pools of lava.  This then is the entrance
to %i.  It looks like you're not going to get in without
a fight though.
%E
%Cp Val 00036
Once again, you stand before the entrance to %i.
%E
%Cc Val 00040
Through clouds of sulphurous gasses, you %x a rock palisade
surrounded with a moat of bubbling lava.  You remember the description
from something that %l said.  This is the lair of %n.
%E
%Cp Val 00041
Once again, you stand in sight of %ns lair.
%E
%Cc Val 00050
"So!  %lC has finally sent %ca to challenge me!

"I thought that mastering %o would enable me to challenge %d,
but it has shown me that first I must kill you!
So come, little %s.  Once I defeat you, I can at last begin
the final battle with %d."
%E
%Cp Val 00051
"Again you challenge me, %r.  Good.  I will kill you now."
%E
%Cp Val 00052
"Have you not learned yet?  You cannot defeat %n!"
%E
%Cp Val 00053
"I will kill you, %c, and wrest %o from your mangled hands."
%E
%Cp Val 00060
"I am your death, %c."
%E
%Cp Val 00061
"You cannot prevail, %r.  I have foreseen your every move."
%E
%Cp Val 00062
"With you out of the way, Valhalla will be mine for the taking."
%E
%Cp Val 00063
"I killed scores of %ds best when I took %o.
Do you really think that one %c can stand against me?"
%E
%Cp Val 00064
"Who bears the souls of %cP to Valhalla, %r?"
%E
%Cp Val 00065
"No, %d cannot help you here."
%E
%Cp Val 00066
"Some instrument of %d you are, %p.  You are a weakling!"
%E
%Cp Val 00067
"Never have I seen %ca so clumsy in battle."
%E
%Cp Val 00068
"You die now, little %s."
%E
%Cp Val 00069
"Your body I destroy now, your soul when my hordes overrun Valhalla!"
%E
%Cc Val 00070
As you pick up %o, your mind is suddenly filled with images,
and you perceive all of the possibilities of each potential choice you
could make.  As you begin to control and channel your thoughts, you
realize that you must return %o to %lC immediately.
%E
%Cc Val 00080
A look of surprise and horror appears on %ns face.

    No!!!  %o has lied to me!  I have been misled!

Suddenly, %n grasps his head and screams in agony, then dies.
%E
%Cc Val 00081
As you approach, %lC rises and touches %o.

"You may take %o with you, %p.  I have removed from
it the power to foretell the future, for that power no mortal should
have.  Its other abilities, however, you have at your disposal.

"You must now begin in %ds name to search for the Amulet of Yendor.
May your steps be guided by %d, my %S."
%E
# assumes Orb of Fate (glass object)
%Cc Val 00082
"Careful, %p!  %oC might break, and that would be
a tragic loss.  You are its keeper now, and the time has come to
resume your search for the Amulet.  %Z await your
return through the magic portal that brought you here."
%E
%Cp Val 00090
"Greetings, %p.  I have not been able to pay as much attention to
your search for the Amulet as I have wished.  How do you fare?"
%E
%Cc Val 00091
"Excellent, %p.  I see you have recovered the Amulet!

"You must take the Amulet to the Great Temple of %d, on the Astral
Plane.  There you must offer the Amulet to %d.

"Go now, my %S.  I cannot tell you your fate, as the power of the
Amulet interferes with mine.  I hope for your success."
%E
%Cc Val 00200
%E
%Cc Val 00201
%E
%Cc Val 00202
%E
%Cc Val 00203
%E
%Cc Val 00204
%E
%Cc Val 00205
%E
%Cc Val 00206
%E
%Cc Val 00207
%E
%Cc Val 00208
%E
#
#	Wizard
#
%Cc Wiz 00001
You are suddenly in familiar surroundings.  You notice what appears to
be a large, squat stone structure nearby.  Wait!  That looks like the
tower of your former teacher, %l.

However, things are not the same as when you were last here.  Mists and
areas of unexplained darkness surround the tower.  There is movement in
the shadows.

Your teacher would never allow such unaesthetic forms to surround the
tower...  unless something were dreadfully wrong!
%E
%Cp Wiz 00002
Once again, you are back at %H.
%E
%Cp Wiz 00003
You are back at %H.
You have an odd feeling this may be the last time you ever come here.
%E
%Cp Wiz 00005
"Would you happen to have some eye of newt in that overstuffed pack, %s?"
%E
%Cp Wiz 00006
"Ah, the spell to create the magic portal worked.  Outstanding!"
%E
%Cp Wiz 00007
"Hurry!  %lC may not survive that casting of the
portal spell!!"
%E
%Cp Wiz 00008
"The spells of %n were just too powerful for us to withstand."
%E
%Cp Wiz 00009
"I, too, will venture into the world, because %n is but one of
many evils to be vanquished."
%E
%Cp Wiz 00010
"I have some eye of newt to trade, do you have a spare blind-worm's sting?"
%E
%Cp Wiz 00011
"The magic portal now seems like it will remain stable for quite some time."
%E
%Cp Wiz 00012
"Have you noticed how much stronger %l is since %o was recovered?"
%E
%Cp Wiz 00013
"Thank %d!  We weren't positive you would defeat %n."
%E
%Cp Wiz 00014
"I, too, will venture into the world, because %n was but one of
many evils to be vanquished."
%E
%Cc Wiz 00015
"Come closer, %p, for my voice falters in my old age.
Yes, I see that you have come a long way since you went out into the
world, leaving the safe confines of this tower.  However, I must first
determine if you have all of the skills required to take on the task
I require of you."
%E
%Cp Wiz 00016
"Well, %p, you have returned.  Perhaps you are now ready..."
%E
%Cp Wiz 00017
"This is getting tedious, %p, but perseverance is a sign of a true mage.
I certainly hope that you are truly ready this time!"
%E
%Cc Wiz 00018
"You fool, %p!  Why did I waste all of those years teaching you
the esoteric arts?  Get out of here!  I shall find another."
%E
%Cc Wiz 00019
"Alas, %p, you have not yet shown your proficiency as a worthy
spellcaster.  As %ra, you would surely be overcome in the challenge
ahead.  Go, now, expand your horizons, and return when you have attained
renown as %Ra."
%E
%Cc Wiz 00020
"You amaze me, %p!  How many times did I tell you that the way of a mage
is an exacting one.  One must use the world with care, lest one leave it
in ruins and simplify the task of %n.

"You must go back and show your worthiness.  Do not return until you are
truly ready for this quest.  May %d guide you in this task."
%E
%Cc Wiz 00021
"Yes, %p, you truly are ready for this dire task.  Listen,
carefully, for what I tell you now will be of vital importance.

"Since you left us to hone your skills in the world, we unexpectedly came
under attack by the forces of %n.  As you know, we thought
%n had perished at the end of the last age, but, alas, this was
not the case.

"%nC sent an army of abominations against us.  Among them was a
minion, mindless and ensorcelled, and thus, in the confusion, it was able
to penetrate our defenses.  Alas, this creature has stolen
%o and I fear it has delivered %o
to %n.

"Over the years, I had woven most of my power into this amulet, and thus,
without it, I have but a shadow of my former power, and I fear that I
shall soon perish.

"You must travel to %i, and within its dungeons,
find and overcome %n, and return %o to me.

"Go now, with %d, and complete this quest before it is too late."
%E
%Cp Wiz 00025
"Beware, for %n is immune to most magical attacks."
%E
%Cp Wiz 00026
"To enter %i you must pass many traps."
%E
%Cp Wiz 00027
"%nC may be vulnerable to physical attacks."
%E
%Cp Wiz 00028
"%d will come to your aid when you call."
%E
%Cp Wiz 00029
"You must utterly destroy %n.  He will pursue you otherwise."
%E
%Cp Wiz 00030
"%oC is a mighty artifact.  With it you can
destroy %n."
%E
%Cp Wiz 00031
"Go forth with the blessings of %d."
%E
%Cp Wiz 00032
"I will have my %gP watch for your return."
%E
%Cp Wiz 00033
"Feel free to take any items in that chest that might aid you."
%E
%Cp Wiz 00034
"You will know when %o is near.  Proceed with care!"
%E
%Cc Wiz 00035
Wisps of fog swirl nearby.  You feel that %ns lair is close.
%E
%Cp Wiz 00036
You believe that you may once again invade %i.
%E
%Cc Wiz 00040
You feel your mentor's presence; perhaps %o is nearby.
%E
%Cp Wiz 00041
The aura of %o tingles at the edge of your perception.
%E
%Cc Wiz 00050
"Ah, I recognize you, %p.  So, %l has sent you to steal
%o from me, hmmm?  Well, %l is a
fool to send such a mental weakling against me.

"Your destruction, however, should make for good sport.  In the end, you
shall beg me to kill you!"
%E
%Cc Wiz 00051
"How nice of you to return, %p!  I enjoyed our last meeting.  Are you
still hungry for more pain?

"Come!  Your soul, like %o, shall soon be mine to
command."
%E
%Cp Wiz 00052
"I'm sure that your perseverance shall be the subject of innumerable
ballads, but you shall not be around to hear them, I fear!"
%E
%Cp Wiz 00053
"Thief!  %o belongs to me, now.  I shall feed
your living flesh to my minions."
%E
%Cp Wiz 00060
"Your puny powers are no match for me, fool!"
%E
%Cp Wiz 00061
"When you are defeated, your torment will last for a thousand years."
%E
%Cp Wiz 00062
"After your downfall, %p, I shall devour %l
for dessert!"
%E
%Cp Wiz 00063
"Are you ready yet to beg for mercy?  I could be lenient..."
%E
%Cp Wiz 00064
"Your soul shall join the enslaved multitude I command!"
%E
%Cp Wiz 00065
"Your lack of will is evident, and you shall die as a result."
%E
%Cp Wiz 00066
"Your faith in %d is for naught!  Come, submit to me now!"
%E
%Cp Wiz 00067
"A mere %r is nothing compared to my skill!"
%E
%Cp Wiz 00068
"So, you are the best hope of %l?  How droll."
%E
%Cp Wiz 00069
"Feel my power, %c!  My victory is imminent!"
%E
%Cc Wiz 00070
As you touch %o, its comforting power infuses you
with new energy.  You feel as if you can detect others' thoughts flowing
through it.  Although you yearn to wear %o
and attack the Wizard of Yendor, you know you must return it to its
rightful owner, %l.
%E
%Cc Wiz 00080
%nC, whose body begins to shrivel up, croaks out:

    I shall haunt your progress until the end of time.  A thousand
    curses on you and %l.

Then, the body bursts into a cloud of choking dust, and blows away.
%E
%Cc Wiz 00081
%lC notices %o in your possession,
beams at you and says:

    I knew you could defeat %n and retrieve
    %o.  We shall never forget this
    brave service.

    Take %o with you in your quest for
    the Amulet of Yendor.  I can sense that it has attuned
    itself to you already.

    May %d guide you in your quest, and keep you from harm.
%E
%Cc Wiz 00082
"You are the keeper of %o now.  It is time to
recover the /other/ Amulet.  %Z await your return through
the magic portal which brought you here."
%E
%Cp Wiz 00090
"Come near, my %S, and share your adventures with me.
So, have you succeeded in your quest for the Amulet of Yendor?"
%E
%Cc Wiz 00091
"Congratulations, %p.  I always knew that if anyone could succeed
in defeating the Wizard of Yendor and his minions, it would be you.

"Go now, and take the Amulet to the Astral Plane.  Once there, present
the Amulet on the altar of %d.  Along the way you shall pass through the
four Elemental Planes.  These planes are like nothing you have ever
experienced before, so be prepared!

"For this you were born, %s!  I am very proud of you."
%E
%Cc Wiz 00200
%E
%Cc Wiz 00201
%E
%Cc Wiz 00202
%E
%Cc Wiz 00203
%E
%Cc Wiz 00204
%E
%Cc Wiz 00205
%E
%Cc Wiz 00206
%E
%Cc Wiz 00207
%E
%Cc Wiz 00208
%E
#
#       Gladiator
#
%Cc Gla 00001
You scan your surroundings, your life has always been about assessing
the possibity of danger.  Off in the distance, you can %x the familiar shapes
of %H.

But why, you think, should %l be there?

Suddenly, the hairs on your neck stand on end as you detect the aura of
evil magic in the air.

Without thought, you ready your weapon, and mutter under your breath:

    "By %d, there will be blood spilt today."
%E
%Cp Gla 00002
Once again, you near %H.  You know that %l
will be waiting.
%E
%Cp Gla 00003
Again, and you think possibly for the last time, you approach
%H.
%E
%Cp Gla 00005
"The battles here have been good -- our enemies' blood soaks the soil!"
%E
%Cp Gla 00006
"Remember that glory is crushing your enemies beneath your feet!"
%E
%Cp Gla 00007
"There has been little treasure to loot, since the horde arrived."
%E
%Cp Gla 00008
"The horde is mighty in numbers, but they have little courage."
%E
%Cp Gla 00009
"%lC is a strange one, but he has helped defend us."
%E
%Cp Gla 00010
"The battles here have been good -- our enemies' blood soaks the soil!"
%E
%Cp Gla 00011
"Remember that glory is crushing your enemies beneath your feet!"
%E
%Cp Gla 00012
"Times will be good again, now that the horde is vanquished."
%E
%Cp Gla 00013
"You have brought our clan much honor in defeating %n."
%E
%Cp Gla 00014
"You will be a worthy successor to %l."
%E
%Cc Gla 00015
"Ah, %p.  You have returned at last.  The world is in dire
need of your help.  There is a great quest you must undertake.

"But first, I must see if you are ready to take on such a challenge."
%E
%Cp Gla 00016
"%p, you are back.  Are you ready now for the challenge?"
%E
%Cp Gla 00017
"Again, you stand before me, %p.  Surely you have prepared yourself."
%E
%Cc Gla 00018
"Pah!  You have betrayed the gods, %p.  You will never attain
the glory which you aspire to.  Your failure to follow the true path has
closed this future to you.

"I will protect these people as best I can, but soon %n will overcome
me and destroy all who once called you %s.  Now begone!"
%E
%Cc Gla 00019
"%p, I fear that you are as yet too inexperienced to face
%n.  Only %Ra with the help of %d could ever hope to
defeat him."
%E
%Cc Gla 00020
"%pC!  You have wandered from the path of the %a!
If you attempt to overcome %n in this state, he will surely
enslave your soul.  Your only hope, and ours, lies in your purification.
Go forth, and return when you feel ready."
%E
%Cc Gla 00021
"The world is in great need of your assistance, %p.

"About six months ago, I learned that a mysterious sorcerer, known
as %n, had begun to gather a large group of cutthroats and brigands
about him.

"At about the same time, these people you once rode with `liberated' a
potent magical talisman, %o, from a Turanian caravan.

"%nC and his Black Horde swept down upon %i and defeated
the people there, driving them out into the desert.  He has taken
%o, and seeks to bend it to his will.  I detected the
subtle changes in the currents of fate, and joined these people.
Then I sent forth a summons for you.

"If %n can bend %o to his will, he will become
almost indestructible.  He will then be able to enslave the minds of
men across the world.  You are the only hope.  The gods smile upon you,
and with %d behind you, you alone can defeat %n.

"You must go to %i.  From there, you can track down
%n, defeat him, and return %o to us.  Only
then will the world be safe."
%E
%Cp Gla 00025
"%nC is strong in the dark arts, but not immune to cold steel."
%E
%Cp Gla 00026
"Remember that %n is a great sorcerer.  He lived in the time
of Atlantis."
%E
%Cp Gla 00027
"If you fail, %p, I will not be able to protect these people long."
%E
%Cp Gla 00028
"To enter %i, you must be very stealthy.  The horde will be on
guard."
%E
%Cp Gla 00029
"Call upon %d in your time of need."
%E
%Cp Gla 00030
"May %d protect you, and guide your steps."
%E
%Cp Gla 00031
"If you can lay hands upon %o, carry it for good fortune."
%E
%Cp Gla 00032
"I cannot stand against %ns sorcery.  But %d will help you."
%E
%Cp Gla 00033
"Do not fear %n.  I know you can defeat him."
%E
%Cp Gla 00034
"You have a great road to travel, %p, but only after you defeat
%n."
%E
%Cc Gla 00035
The scent of water comes to you in the desert breeze.  You know that
you have located %i.
%E
%Cp Gla 00036
Yet again you have a chance to infiltrate %i.
%E
%Cc Gla 00040
The hairs on the nape of your neck lift as you sense an energy in the
very air around you.  You fight down a primordial panic that seeks to
make you turn and run.  This is surely the lair of %n.
%E
%Cp Gla 00041
Yet again you feel the air around you heavy with malevolent magical energy.
%E
%Cc Gla 00050
"So.  This is what that second rate sorcerer %l sends to do his bidding.
I have slain many before you.  You shall give me little sport.

"Prepare to die, %c."
%E
%Cp Gla 00051
"I have wasted too much time on you already.  Now, you shall die."
%E
%Cp Gla 00052
"You return yet again, %c!  Are you prepared for death now?"
%E
%Cp Gla 00053
"I shall have %o back, you pitiful excuse for %ca.
And your life as well."
%E
%Cp Gla 00060
"My pets will dine on your carcass tonight!"
%E
%Cp Gla 00061
"You are a sorry excuse for %ra."
%E
%Cp Gla 00062
"Run while you can, %c.  My next spell will be your last."
%E
%Cp Gla 00063
"I shall use your very skin to bind my next grimoire."
%E
%Cp Gla 00064
"%d cannot protect you now.  Here, you die."
%E
%Cp Gla 00065
"Your %a nature makes you weak.  You cannot defeat me."
%E
%Cp Gla 00066
"Come, %c.  I shall kill you, then unleash the horde on your tribe."
%E
%Cp Gla 00067
"Once you are dead, my horde shall finish off %l, and your tribe."
%E
%Cp Gla 00068
"Fight, %c, or are you afraid of the mighty %n?"
%E
%Cp Gla 00069
"You have failed, %c.  Now, my victory is complete."
%E
%Cc Gla 00070
As you pick up %o, you feel the power of it
flowing through your hands.  It seems to be in two or more places
at once, even though you are holding it.
%E
%Cc Gla 00080
%nC falls to the ground, and utters a last curse at you.  Then his
body fades slowly, seemingly dispersing into the air around you.  You
slowly become aware that the overpowering aura of magic in the air has
begun to fade.
%E
%Cc Gla 00081
When %l sees %o, he smiles, and says:

    Well done, %p.  You have saved the world from certain doom.
    What, now, should be done with %o?

    These people, brave as they are, cannot hope to guard it from
    other sorcerers who will detect it, as surely as %n did.

    Take %o with you, %p.  It will guard you in
    your adventures, and you can best guard it.  You embark on a
    quest far greater than you realize.

    Remember me, %p, and return when you have triumphed.  I
    will tell you then of what you must do.  You will understand when the
    time comes.
%E
%Cc Gla 00082
%l gazes reverently at %o, then back at you.

"You are its keeper now, and the time has come to resume your search
for the Amulet.  %Z await your return through the
magic portal which brought you here."
%E
%Cp Gla 00090
"Tell us, %p, have you fared well on your great quest?"
%E
%Cc Gla 00091
"This is wondrous, %p.  I feared that you could not possibly
succeed in your quest, but here you are in possession of the Amulet
of Yendor!

"I have studied the texts of the magi constantly since you left.  In
the Book of Skelos, I found this:

    %d will cause a child to be sent into the world.  This child is to
    be made strong by trial of battle and magic, for %d has willed it so.
    It is said that the child of %d will recover the Amulet of Yendor
    that was stolen from the Creator at the beginning of time.

"As you now possess the amulet, %p, I suspect that the Book
speaks of you.

    The child of %d will take the Amulet, and travel to the Astral
    Plane, where the Great Temple of %d is to be found.  The Amulet
    will be sacrificed to %d, there on His altar.  Then the child will
    stand by %d as champion of all %cP for eternity.

"This is all I know, %p.  I hope it will help you."
%E
%Cc Gla 00095
"You have betrayed all those who hold allegiance to %d, as you once did.
My allegiance to %d holds fast and I cannot condone or accept what you 
have done.

Leave this place.  You shall never set foot at %H again.
That which you seek is now lost forever, for without the Bell of Opening, 
you will never be able to enter the place where he who has the Amulet 
resides.

Go now!  You are banished from this place.
%E


%Cp Gla 00100
You receive a faint telepathic message from %l:
Your help is urgently needed at %H!
Look for a ...ic transporter.
You couldn't quite make out that last message.
%E
%Cp Gla 00101
You again sense %l pleading for help.
%E
%Cp Gla 00102
"The silver bell which was hoarded by %n will be
essential in locating the Amulet of Yendor."
%E

#
#	Chef
#
%Cc Chf 00001
You arrive in familiar surroundings.  In the distance, you %x the
great stone Circle, the place of worship to %d.

Something is wrong, though.  Surrounding the circle are orcs!
And they've noticed you!
%E
%Cp Chf 00002
Once again, you stand before %H.
%E
%Cp Chf 00003
You have the oddest feeling that this may be the last time you
are to enter %H.
%E
%Cp Chf 00005
"%p!  I have not seen you in many cycles.  How do you fare?"
%E
%Cp Chf 00006
"%nC continues to threaten the circle.  But we hold fast."
%E
%Cp Chf 00007
"%lC is growing weak.  The magic required to defend the circle drains us."
%E
%Cp Chf 00008
"Remember %i is hard to enter.  Seek the secret
passageways."
%E
%Cp Chf 00009
"We must regain %o.  Without it we will be overrun."
%E

%Cp Chf 00010
"%pC!  I have not seen you in many moons.  How do you fare?"
%E
%Cp Chf 00011
"Birdsong has returned to the grove, surely this means you have defeated %n."
%E
%Cp Chf 00012
"%lC seems to have regained some of his strength."
%E
%Cp Chf 00013
"So, tell us how you entered %i, in case some new evil arises there."
%E
%Cp Chf 00014
"Is that truely %o that I see you carrying?"
%E

%Cc Chf 00015
"%p!  You have returned!  Thank %d.

"We have great need of you.  But first, I must see if you have the
required abilities to take on this responsibility."
%E
%Cp Chf 00016
"Once again, %p, you stand in our midst.  Are you ready now?"
%E
%Cp Chf 00017
"Ah, you are here again, %p.  Allow me to determine your readiness..."
%E
%Cc Chf 00018
"%p!  You have doomed us all.  You fairly radiate %L influences
and weaken the power we have raised in this circle as a result!

"Begone!  We renounce your %shood with us!  You are an outcast now!"
%E
%Cc Chf 00019
"%p, you are yet too inexperienced to withstand the demands of that
which we need you to do.  %RA might just be able to do this thing.

"Return to us when you have learned more, my %S."
%E
%Cc Chf 00020
"You have strayed, %p!  You know that %d requires that
we maintain a pure devotion to things %a!

"You must go from us.  Return when you have purified yourself."
%E
%Cc Chf 00021
"You are indeed ready, %p.  I shall tell you what has transpired,
and why we so desperately need your help:

"A short time ago, the Uruk-hai tribes of the mountains to the east
invaded and enslaved the goblin tribes in this area.  The local
%nt is now only a figurehead, and serves the Uruk-hai Overlord.

"During our last gathering of worship here, we were beset by hordes of
orcs and goblins, as you witnessed.  In the first onslaught a group,
headed by %n himself, managed to breach the circle and
steal %o.

"Since then, we have been besieged.  We do not know how much longer
we will be able to maintain our magical barriers.

"If we are to survive, you, %p, must infiltrate
%i.  There, you will find a pathway down, to the
underground castle of %n.  He has always coveted
%o, and will surely keep it on his person,
until he delivers it to the Uruk-hai Overlord.

"Recover %o for us, %p!  Only then will
the circle of %d be safe."
%E
%Cp Chf 00025
"It is rumored that the Uruk-hai have a pact with the Hill Ogres."
%E
%Cp Chf 00026
"%nC is strong, but not very smart."
%E
%Cp Chf 00027
"Use %o, when you find it.  It will help you survive
to reach us."
%E
%Cp Chf 00028
"Remember, let %d be your guide."
%E
%Cp Chf 00029
"Call upon %d when you face %n.
The very act of doing so will infuriate him, and give you advantage."
%E
%Cp Chf 00030
"Though %n is as %C as we, he and his kind have always
hated us."
%E
%Cp Chf 00031
"We cannot hold the circle much longer, %p.  Hurry!"
%E
%Cp Chf 00032
"To infiltrate %i, you must be very stealthy."
%E
%Cp Chf 00033
"Remember that %n is a braggart.  Trust not what he says."
%E
%Cp Chf 00034
"You can triumph, %p, if you trust in %d."
%E
%Cc Chf 00035
You descend into the outer regions of %i.  You can hear
scuffling sounds in the corridors, and vague mumblings in the distance.

You remember that %ga once told you that there were many secret
passageways in this complex.
%E
%Cp Chf 00036
Once again, you descend into %i.
%E
%Cc Chf 00040
You descend into a weird place, in which roughly cut cave-like walls
join with smooth, finished ones, as if someone was in the midst of
finishing off the construction of a subterranean complex.

Off in the distance, you hear the sounds of a large, raucous gathering.
%E
%Cp Chf 00041
Once again, you enter the distorted castle of %n.
%E
%Cc Chf 00050
"So, %c.  %lC has sent you to recover %o.

"Well, I shall keep that bauble.  It pleases me.  You, %c, shall die."
%E
%Cp Chf 00051
"Back again, eh?  Well, a mere %r is no threat to me!  Die, %c!"
%E
%Cp Chf 00052
"You haven't learned your lesson, %c.  You can't kill me!  You shall die now."
%E
%Cp Chf 00053
"I shall have %o from you, %r.  Then I shall
kill you."
%E
%Cp Chf 00060
"Your %d is nothing, %c.  You are mine now!"
%E
%Cp Chf 00061
"Run away little %c!  You can never hope to defeat %n!"
%E
%Cp Chf 00062
"My Uruk-hai servants will rip you to shreds!"
%E
%Cp Chf 00063
"I shall display your head as a trophy.  What do you think about that wall?"
%E
%Cp Chf 00064
"I shall break your %ls circle, and destroy all the %gP!"
%E
%Cp Chf 00065
"%d has abandoned you, %c.  You are doomed."
%E
%Cp Chf 00066
"%rA?  %lC sends a mere %r against me?  Hah!"
%E
%Cp Chf 00067
"%lC has failed, %c.  %oC will never leave here."
%E
%Cp Chf 00068
"You really think you can defeat me, eh %c?  You are wrong!"
%E
%Cp Chf 00069
"You weaken, %c.  I shall kill you now."
%E
%Cc Chf 00070
As you pick up %o, it seems to glow, and a warmth
fills you completely.  You realize that its power is what has protected
your %sp against their enemies for so long.

You must now return it to %l without delay -- their lives depend
on your speed.
%E
%Cc Chf 00080
%nC collapses to the ground, cursing you and %l, then says:

    You have defeated me, %r!  But I curse you one final time, with my
    dying breath!  You shall die before you leave my castle!
%E
%Cc Chf 00081
"%p!  You have succeeded!  I feared it was not possible!

"Your aura proclaims that you possess %o!

"I fear, now, that the Uruk-hai will select yet another %nt.
This will take some time, but if you can recover the Amulet of Yendor
for %d before that happens, we will be eternally safe.

"Take %o with you.  It will aid in your quest for
the Amulet."
%E
%Cp Chf 00082
"Welcome, %p.  Have you mastered the art of using %o yet?"
%E
%Cp Chf 00090
"Welcome, %p.  How have you fared on your quest for the Amulet
of Yendor?"
%E
%Cc Chf 00091
"Utuelyes!  You have recovered the Amulet of Yendor!
Now attend to me, %p, and I will tell you what must be done:

"The Amulet has within it magic, the capability to transport you to
the Astral Plane, where the primary circle of %d resides.

"To activate this magic, you must travel upwards as far as you can.
When you reach the temple, sacrifice the Amulet to %d.

"Thus will you fulfill your destiny."
%E
%Cc Chf 00095
"You have betrayed all those who hold allegiance to %d, as you once did.
My allegiance to %d holds fast and I cannot condone or accept what you 
have done.

Leave this place.  You shall never set foot at %H again.
That which you seek is now lost forever, for without the Bell of Opening, 
you will never be able to enter the place where he who has the Amulet 
resides.

Go now!  You are banished from this place.
%E
%Cp Chf 00100
You receive a faint telepathic message from %l:
Your help is urgently needed at %H!
Look for a ...ic transporter.
You couldn't quite make out that last message.
%E
%Cp Chf 00101
You again sense %l pleading for help.
%E
%Cp Chf 00102
"The silver bell which was hoarded by %n will be
essential in locating the Amulet of Yendor."
%E
%Cc Chf 00200
%E
%Cc Chf 00201
%E
%Cc Chf 00202
%E
%Cc Chf 00203
%E
%Cc Chf 00204
%E
%Cc Chf 00205
%E
%Cc Chf 00206
%E
%Cc Chf 00207
%E
%Cc Chf 00208
%E
#
#       Officer
#
%Cc Off 00001
You breathe a sigh of relief as you find yourself back in the familiar
surroundings of %H.

You quickly notice that things do not appear the way they did when you
left.  The town is dark and quiet.  There are no sounds coming from
behind the town walls, and no campfires burning in the fields.  As a
matter of fact, you do not %x any movement in the fields at all, and
the crops look as though they have been untended for many weeks.
%E
%Cp Off 00002
Once again, you are back at %H.
%E
%Cp Off 00003
You are back at %H.
Things appear to have become so bad that you fear that soon
%H will not be here to return to.
%E
%Cp Off 00005
"Gehennom on 5 zorkmids a day -- more like 500 a day if you ask me."
%E
%Cp Off 00006
"Do you know where I could find some nice postcards of The Gnomish Mines?"
%E
%Cp Off 00007
"Have you tried the weird toilets?"
%E
%Cp Off 00008
"Don't stay at the Inn, I hear the food is terrible and it has rats."
%E
%Cp Off 00009
"They told me that this was the off season!"
%E
%Cp Off 00010
"Gehennom on 5 zorkmids a day -- more like 500 a day if you ask me."
%E
%Cp Off 00011
"Do you know where I could find some nice postcards of The Gnomish Mines?"
%E
%Cp Off 00012
"Have you tried the weird toilets?"
%E
%Cp Off 00013
"If you stick around, I'll show you the pictures from my latest trip."
%E
%Cp Off 00014
"Did you bring me back any souvenirs?"
%E
%Cc Off 00015
"Is it really you, %p!  I had given up hope for your return.
As you can %x, we are desperately in need of your talents.  Someone must
defeat %n if our town is become what it once was.

"Let me see if you are ready to be that someone."
%E
%Cp Off 00016
"Things are getting worse, %p.
I hope that this time you are ready."
%E
%Cp Off 00017
"I hope that for the sake of %H you have prepared
yourself this time."
%E
%Cc Off 00018
"It is too late, %p.  You are not even worthy to die amongst us.
Leave %H and never return."
%E
%Cc Off 00019
"There is still too much that you have to learn before you can undertake
the next step.  Return to us as a proven %R, and perhaps then
you will be ready.

"Go back now, and may the teachings of %d serve you well."
%E
%Cc Off 00020
"It would be an affront to %d to have one not true to the
%a path undertake her bidding.

"You must not return to us until you have purified yourself of these
bad influences on your actions.  Remember, only by following the %a
path can you hope to overcome the obstacles you will face."
%E
%Cc Off 00021
"You have indeed proven yourself a worthy %c, %p.

"But now your kinfolk and I must ask you to put aside your travels and
help us in our time of need.  After you left us we elected a new mayor,
%n.  He proved to be a most heinous and vile creature.

"Soon after taking office he absconded with %o
and fled town, leaving behind his henchmen to rule over us.  In order
for us to regain control of our town, you must enter %i
and recover %o.

"Do not be distracted on your quest.  If you do not return quickly I fear
that all will be lost.  Let us both pray now that %d will guide you
and keep you safe."
%E
%Cp Off 00025
"Do not be fooled by the false promises of %n."
%E
%Cp Off 00026
"To enter %i you must pass many traps."
%E
%Cp Off 00027
"If you do not return with %o, your quest
will be in vain."
%E
%Cp Off 00028
"Do not be afraid to call upon %d if you truly need help."
%E
%Cp Off 00029
"If you do not destroy %n, he will follow you back here!"
%E
%Cp Off 00030
"Take %o from %n
and you may be able to defeat him."
%E
%Cp Off 00031
"You must hurry, %p!"
%E
%Cp Off 00032
"You are like %Sa to me, %p.  Do not let me down."
%E
%Cp Off 00033
"If you are %a at all times you may succeed, %p."
%E
%Cp Off 00034
"Let all who meet you on your journey know that you are on an quest for
%l and grant safe passage."
%E
%Cc Off 00035
Only your faith in %d keeps you from trembling.  You %x
the handiwork of %ns henchlings everywhere.
%E
%Cp Off 00036
You know that this time you must find and destroy %n.
%E
%Cc Off 00040
You sense the presence of %o.
%E
%Cp Off 00041
You gain confidence, knowing that you may soon be united with
%o.
%E
%Cc Off 00050
"So, %p, %l thinks that you can wrest
%o from me!

"It only proves how desperate he has become that he sends %ra to
try and defeat me.  When this day is over, I will have you enslaved
in the mines where you will rue the day that you ever entered
%i."
%E
%Cp Off 00051
"I let you live the last time because it gave me pleasure.
This time I will destroy you, %p."
%E
%Cc Off 00052
"These meetings come to bore me.  You disturb my workings with
%o.

"If you do not run away now, I will inflict so much suffering on you that
%l will feel guilty for ever having sent his %S to me!"
%E
%Cc Off 00053
"You fool.  You do not know how to call upon the powers of
%o.

"Return it to me and I will teach you how to use it, and together we
will rule %H.  But do so now, as my patience
grows thin."
%E
%Cp Off 00060
"I defeated %l and I will defeat you, %p."
%E
%Cp Off 00061
"Where is %d now!  You must realize no one can help you here."
%E
%Cp Off 00062
"Beg for mercy now and I may be lenient on you."
%E
%Cp Off 00063
"If you were not so %a, you might have stood a chance."
%E
%Cp Off 00064
"Vengeance is mine at last, %p."
%E
%Cp Off 00065
"I only wish that %l had a more worthy %r to send against me."
%E
%Cp Off 00066
"With %o in my possession you cannot
hope to defeat me."
%E
%Cp Off 00067
"%nC has never been defeated, NEVER!"
%E
%Cp Off 00068
"Are you truly the best %H has to send against me?
I pity %l."
%E
%Cp Off 00069
"How do you spell %p?  I want to ensure the marker on your grave is
correct as a warning to your %sp."
%E
%Cc Off 00070
As you pick up %o, you feel a great
weight has been lifted from your shoulders.  Your only thoughts are
to quickly return to %H and find %l.
%E
%Cc Off 00080
You turn in the direction of %n.  As his earthly body begins
to vanish before your eyes, you hear him curse:

    You shall never be rid of me, %p!
    I will find you where ever you go and regain what is rightly mine.
%E
%Cc Off 00081
As %l detects the presence of %o,
he almost smiles for the first time in many a full moon.

As he looks up from %o he says:

    You have recovered %o.  You are its
    owner now, but not its master.  Let it work with you as you continue
    your journey.  With its help, and %d to guide you on the
    %a path, you may yet recover the Amulet of Yendor.
%E
%Cc Off 00082
"%oC is yours now.  %Z await your
return through the magic portal that brought you here."
%E
%Cp Off 00090
"I could not be more proud than if you were my own %S, %p!
Tell me of your adventures in quest of the Amulet of Yendor."
%E
%Cc Off 00091
"Stand back and let me look at you, %p.
Now that you have recovered the Amulet of Yendor, I'm afraid living
out your days in %H would seem pretty tame.

"You have come too far to stop now, for there are still more tasks that
our oral history foretells for you.  Forever more, though, your name shall
be spoken by the %gP with awe.  You are truly an inspiration to your
%sp!"
%E
%Cc Off 00095
"You have betrayed all those who hold allegiance to %d, as you once did.
My allegiance to %d holds fast and I cannot condone or accept what you 
have done.

Leave this place.  You shall never set foot at %H again.
That which you seek is now lost forever, for without the Bell of Opening, 
you will never be able to enter the place where he who has the Amulet 
resides.

Go now!  You are banished from this place.
%E

%Cp Off 00100
You receive a faint telepathic message from %l:
Your help is urgently needed at %H!
Look for a ...ic transporter.
You couldn't quite make out that last message.
%E
%Cp Off 00101
You again sense %l pleading for help.
%E
%Cp Off 00102
"The silver bell which was hoarded by %n will be
essential in locating the Amulet of Yendor."
%E
%Cc Off 00200
%E
%Cc Off 00201
%E
%Cc Off 00202
%E
%Cc Off 00203
%E
%Cc Off 00204
%E
%Cc Off 00205
%E
%Cc Off 00206
%E
%Cc Off 00207
%E
%Cc Off 00208
%E
%Cc Off 00373
%E
%Cc Off 00374
%E
%Cc Off 00375
%E
%Cc Off 00376
%E
%Cc Off 00377
%E
%Cc Off 00378
%E
#
#       Undead Slayer
#
%Cc Und 00001
You find yourself standing in sight of %H.  Something
is obviously wrong here.  The holy light that usually fills the sky
is gone, and strange human shapes shamble around outside.

You realize that %l needs your assistance!
%E
%Cp Und 00002
Once again, you stand before %H.
%E
%Cp Und 00003
Again you face %H.  Your intuition hints that this may be
the final time you come here.
%E
%Cp Und 00005
"Greetings, %r.  It is good to see you."
%E
%Cp Und 00006
"Ah, %p!  Surely you can help us in our hour of need."
%E
%Cp Und 00007
"Greetings, %s.  %lC has great need of your help."
%E
%Cp Und 00008
"Alas, it seems as if even %d has deserted us."
%E
%Cp Und 00009
"May %d be with you, %s."
%E
%Cp Und 00010
"Greetings, %r.  It is good to see you."
%E
%Cp Und 00011
"May %d be with you, %s."
%E
%Cp Und 00012
"Have you heard the rumors about the vampire known as 'The Day Walker'
that stalks his own breed?"
%E
%Cp Und 00013
"With %n destroyed, we are safe once more!"
%E
%Cp Und 00014
"I hear you are to be nominated as next leader of the order!"
%E
%Cc Und 00015
"Ah, %p, my %S.  You have returned to us at last.
A great blow has befallen our order; perhaps you can help us.
First, however, I must determine if you are prepared for this
great challenge."
%E
%Cp Und 00016
"Again, my %S, you stand before me.  Are you ready now to help us?"
%E
%Cp Und 00017
"Once more, %p, you stand within the sanctum.  Are you ready now?"
%E
%Cc Und 00018
"You are a heretic, %p!  How can you, %ra, deviate so from the
teachings of %d?  Begone from this temple.  You are no longer
%sa to this order.  We will pray to %d for other assistance,
as you have failed us utterly."
%E
%Cc Und 00019
"Alas, %p, it is not yet to be.  A mere %r could never
withstand the might of %n.  Go forth, again into the world, and return
when you have attained the post of %R."
%E
%Cc Und 00020
"This is terrible, %p.  You have deviated from the true path!
You know that %d requires the most strident devotion of this
order.  The %shood must stand for utmost piety.

"Go from here, atone for your sins against %d.  Return only when
you have purified yourself."
%E
%Cc Und 00021
"Yes, %p.  You are truly ready now.  Attend to me and I shall
tell you of what has transpired:

"Recently, %n and a legion of undead invaded %H.
Many %gP were killed, and %o was stolen from us!

"Now, there are barely enough %gP left to keep
the undead at bay.

"We need you to find %i, and then, from there, travel
to %ns lair.  If you can manage to defeat %n
and return %o here, we can then drive off the
legions of undead that befoul the land.

"Go with %d as your guide, %p."
%E
%Cp Und 00025
"You can prevail, if you rely on %d."
%E
%Cp Und 00026
"Remember that %n has great magic at his command."
%E
%Cp Und 00027
"Be pure, my %S."
%E
%Cp Und 00028
"Beware, %i is surrounded by a great graveyard."
%E
%Cp Und 00029
"Remember, no mercy for the evil!"
%E
%Cp Und 00030
"Acquire and wield %o if you can.  It will aid you
against %n."
%E
%Cp Und 00031
"Call upon %d when your need is greatest.  You will be answered."
%E
%Cp Und 00032
"The undead legions are weakest during the daylight hours."
%E
%Cp Und 00033
"Do not lose faith, %p.  If you do so, %n will grow stronger."
%E
%Cp Und 00034
"Wear %o.  It will assist you against the undead."
%E
%Cc Und 00035
You stand facing a large graveyard.  The sky above is filled with clouds
that seem to get thicker closer to the center.  You sense the presence of
undead in larger numbers than you have ever encountered before.

You remember the descriptions of %i, given to you by
%l.  It is ahead that you will find %ns trail.
%E
%Cp Und 00036
Again, you stand before %i.
%E
%Cc Und 00040
The stench of brimstone is all about you, and the shrieks and moans
of tortured souls assault your psyche.

Ahead, there is a small clearing amidst the bubbling pits of lava...
%E
%Cp Und 00041
Again, you have invaded %ns domain.
%E
%Cc Und 00050
"Ah, so %l has sent another %g to retrieve
%o.

"No, I see you are no %g.  Perhaps I shall have some fun today
after all.  Prepare to die, %r!  You shall never regain
%o."
%E
%Cp Und 00051
"So, %r.  Again you challenge me."
%E
%Cp Und 00052
"Die now, %r.  %d has no power here to aid you."
%E
%Cp Und 00053
"You shall die, %r, and I will have %o back."
%E
%Cp Und 00060
"Submit to my will, %c, and I shall spare you."
%E
%Cp Und 00061
"Your puny powers are no match for me, %c."
%E
%Cp Und 00062
"I shall have you turned into a zombie for my pleasure!"
%E
%Cp Und 00063
"Despair now, %r.  %d cannot help you."
%E
%Cp Und 00064
"I shall feast upon your soul for many days, %c."
%E
%Cp Und 00065
"Your death will be slow and painful.  That I promise!"
%E
%Cp Und 00066
"You cannot defeat %n, you fool.  I shall kill you now."
%E
%Cp Und 00067
"Your precious %l will be my next victim."
%E
%Cp Und 00068
"I feel your powers failing you, %r.  You shall die now."
%E
%Cp Und 00069
"With %o, nothing can stand in my way."
%E
%Cc Und 00070
As you pick up %o, you feel the essence of
%d fill your soul.  You know now why %n stole it from
%H, for with it, %ca of %d could
easily defeat his plans.

You sense a message from %d.  Though not verbal, you
get the impression that you must return to %l as soon
as possible.
%E
%Cc Und 00080
You feel a wrenching shift in the ether as %ns body dissolves
into a cloud of noxious gas.

Suddenly, a voice booms out:

    Mark my words, niggling! I shall return!

You then hear the voice of %n, laughing insanely...
%E
%Cc Und 00081
"You have returned, %p.  And with %o, I see.
Congratulations.

"I have been in meditation, and have received direction from
a minion of %d.  %d commands that you retain
%o.  With it, you must recover the Amulet
of Yendor.

"Go forth, and let %d guide your steps."
%E
%Cc Und 00082
%l reiterates that %o is yours now.

"The time has come to resume your search for the Amulet.
%Z await your return through the magic portal which brought
you here."
%E
%Cp Und 00090
"Welcome back, %p.  How is your quest for the Amulet going?"
%E
%Cc Und 00091
"You have prevailed, %p!  %d is surely with you.  Now,
you must take the amulet, and sacrifice it on %ds altar on
the Astral plane.  I suspect that I shall never see you again in this
life, but I hope to at %ds feet."
%E
%Cc Und 00095
"You have betrayed all those who hold allegiance to %d, as you once did.
My allegiance to %d holds fast and I cannot condone or accept what you 
have done.

Leave this place.  You shall never set foot at %H again.
That which you seek is now lost forever, for without the Bell of Opening, 
you will never be able to enter the place where he who has the Amulet 
resides.

Go now!  You are banished from this place.
%E
%Cp Und 00100
You receive a faint telepathic message from %l:
Your help is urgently needed at %H!
Look for a ...ic transporter.
You couldn't quite make out that last message.
%E
%Cp Und 00101
You again sense %l pleading for help.
%E
%Cp Und 00102
"The silver bell which was hoarded by %n will be
essential in locating the Amulet of Yendor."
%E
%Cc Und 00200
%E
%Cc Und 00201
%E
%Cc Und 00202
%E
%Cc Und 00203
%E
%Cc Und 00204
%E
%Cc Und 00205
%E
%Cc Und 00206
%E
%Cc Und 00207
%E
%Cc Und 00208
%E
%Cc Und 00364
%E
%Cc Und 00365
%E
%Cc Und 00366
%E
%Cc Und 00367
%E
#
#       Jedi
#
%Cc Jed 00001
You are back at %H where you were raised and trained during your youth.
You fondly remember your mentor, %l, and your fellow %g.
Looking around, to the eye everything looks normal. You wonder why
%l would call you here without necessity.

Then some stormtroopers jump from the shadows...
%E
%Cp Jed 00002
Once again you are back at %H.
%E
%Cp Jed 00003
Again, you stand before %H.  You vaguely sense that this
may be the last time you stand before %l.
%E
%Cp Jed 00005
"Hello, %p. May the force be with you!"
%E
%Cp Jed 00006
"%p, it seems the force has left us..."
%E
%Cp Jed 00007
"The dark side is strong, or so they tell us."
%E
%Cp Jed 00008
"If the dark side is so powerful, why not use its power for us?"
%E
%Cp Jed 00009
"What shall we do, %p?"
%E
%Cp Jed 00010
"Hello, %p. May the force be with you!"
%E
%Cp Jed 00011
"The force has led us to victory!"
%E
%Cp Jed 00012
"Will the Sith ever be defeated?"
%E
%Cp Jed 00013
"So you defeated %n?"
%E
%Cp Jed 00014
"Is this the fabled %o?"
%E
%Cc Jed 00015
"It's good to see you again, %p. I'm glad you got our transmission.
Let me check if you are capable of helping us in this dark hour."
%E
%Cp Jed 00016
"The force is strong in you, %p. But is it strong enough now?"
%E
%Cp Jed 00017
"Again, you are back, %p. Have you enhanced your knowledge of the force
far enough now?"
%E
%Cc Jed 00018
"You are arrogant, %p. This is the way to the Dark Side. Unfortunately,
we cannot allow you to walk the halls of %H anymore to protect our %gP.
Leave, now, and never return here, or we will have to deal with you
in ways other than words."
%E
%Cc Jed 00019
"The force is strong within you, %p. But sadly, a mere %r could never
hope to be a help in this dark hour.
Go and learn more of the way of the force. When you reached the skills
of a %R, return here.

May the force be with you!"
%E
%Cc Jed 00020
"You have strayed from the light side of the force! Leave, now!
And return only when you made up your mind about which way to
follow."
%E
%Cc Jed 00021
"Ah, %p. You have become a fine %r, you have become skilled in using
the force and the ways of the Jedi. As such, you must help us:"

"As you surely noticed, war has broken out between the Sith and the
Jedi. Stormtroopers, Sith and Jedi are desperately fighting and
dying for what they believe in."

"What they are fighting over? A mighty artifact, %o.
It is the first lightsaber ever made and has powers greater than any
lightsaber in use today. It never runs out of power and has a built-in
targeting device."

"It was also thought to be lost forever, but eventually a merchant
discovered it in the outer rim and announced it for sale. Needless to
say, that merchant was no longer alive when we got there, slaughtered
by the Sith, who - despite all their efforts - couldn't get their hands
on it yet."

"We need your help in this matter. Every man on the front in the outer
rim counts."

"Oh, and we got word that %n himself has gone to the outer rim to claim
%o. You better hurry."

"May the force be with you!"
%E
%Cp Jed 00025
"Remember, %p, follow always the path of the %d."
%E
%Cp Jed 00026
"May the force be with you!"
%E
%Cp Jed 00027
"Remember, %p, follow always the path of the %d."
%E
%Cp Jed 00028
"May the force be with you!"
%E
%Cp Jed 00029
"Remember, %p, follow always the path of the %d."
%E
%Cp Jed 00030
"May the force be with you!"
%E
%Cp Jed 00031
"Remember, %p, follow always the path of the %d."
%E
%Cp Jed 00032
"May the force be with you!"
%E
%Cp Jed 00033
"Remember, %p, follow always the path of the %d."
%E
%Cp Jed 00034
"May the force be with you!"
%E
%Cc Jed 00035
You arrive at the %i.
Following the emanations of the force, you work your way through the
different planets trying to locate %o.
%E
%Cp Jed 00036
Again, you arrive at the %i.
%E
%Cc Jed 00040
You arrive at an unnamed planet.
You can feel large disturbances in the force before you, like huge
armies crossing weapons.
You know that you must hurry in order to not disappoint %l.
%E
%Cp Jed 00041
Again, you arrive at the unnamed planet.
%E
%Cc Jed 00050
"Again, %l sends a worthless %c to get %o from me?
Well, I can give you a choice: Join me!"
%E
%Cp Jed 00051
"Again, you challenge me, %r? You can't beat the dark side of the force!"
%E
%Cp Jed 00052
"Haven't you learned your lesson yet? I shall teach it to you now!"
%E
%Cp Jed 00053
"Got your hands on %o, little %c? You will not be able to draw all its
powers anyway. Now, you wouldn't kill an unarmed, would you?"
%E
%Cp Jed 00060
"Join the dark side and you'll be granted powers beyond your wildest dreams!"
%E
%Cp Jed 00061
"%l's faith in you is his weak point!"
%E
%Cp Jed 00062
"A %c you want to be? I call you a %g!"
%E
%Cp Jed 00063
"Join the dark side and you'll be granted powers beyond your wildest dreams!"
%E
%Cp Jed 00064
"%l's faith in you is his weak point!"
%E
%Cp Jed 00065
"A %c you want to be? I call you a %g!"
%E
%Cp Jed 00066
"Join the dark side and you'll be granted powers beyond your wildest dreams!"
%E
%Cp Jed 00067
"%l's faith in you is his weak point!"
%E
%Cp Jed 00068
"A %c you want to be? I call you a %g!"
%E
%Cp Jed 00069
"Join the dark side and you'll be granted powers beyond your wildest dreams!"
%E
%Cc Jed 00070
You have %o in your hands.
Force surrounds it like air surrounds a planet. You can see why no
other lightsaber was made like this one.
%E
%Cc Jed 00080
You finally manage to land the final blow against %n.
But as you just want to claim your victory, his body dissolves into
nothingness.

"You can't win against %n! I will be back!"

You feel a shiver run up and down your spine as you head back
to %l.
%E
%Cc Jed 00081
As you approach %l, he beams at you and says:

	You have not disappointed the halls of %H.
	The war is over, %o is secured and peace
	can be restored.

	Though %n escaped us again, we will not rest until he is
	destroyed. The Sith must never return to power.
%E
%Cc Jed 00082
"Be careful with %o. Though it gives great power, it also requires
great responsibility from its owner. Use the portal to return to
%Z and find the Amulet of Yendor.
%E
%Cp Jed 00090
"Welcome back, %p. How is the search for the Amulet of Yendor?"
%E
%Cc Jed 00091
"You really are a %S of %H."

"Ancient Jedi Legends tell us that the amulet must be brought to
a place called 'The Astral Plane' and offered to %d there."

"May the force be with you, %p."
%E
%Cc Jed 00095
"So you're not a real Jedi, are you? Actually, you must be
out of your mind! Why did you decide to leave the path of %d?

Go away, your mere sight is a disgrace to a true Jedi!"
%E

%Cp Jed 00100
You receive a faint telepathic message from %l:
Your help is urgently needed at %H!
Look for a ...ic transporter.
You couldn't quite make out that last message.
%E
%Cp Jed 00101
You again sense %l pleading for help.
%E
%Cp Jed 00102
"You can't use the force if you don't get what %n had!
It should be a metallic object."
%E
%Cc Jed 00200
%E
%Cc Jed 00201
%E
%Cc Jed 00202
%E
%Cc Jed 00203
%E
%Cc Jed 00204
%E
%Cc Jed 00205
%E
%Cc Jed 00206
%E
%Cc Jed 00207
%E
%Cc Jed 00208
%E
%Cc Jed 00360
%E
%Cc Jed 00361
%E
%Cc Jed 00362
%E
%Cc Jed 00363
%E
#
#	Firefighter
#
%Cc Fir 00001
Waves of blistering heat ripple off of the lava-covered landscape that
surrounds you.  Off in the distance, you can see the craggy rocks
of %H.

Suddenly, the hairs on your neck stand on end as you detect a faint hint of
evil moisture in the air.

%E
%Cp Fir 00002
Once again, you near %H.  You know that %l
will be waiting.
%E
%Cp Fir 00003
Again, and you think possibly for the last time, you approach
%H.
%E
%Cp Fir 00005
"The battles here have been good -- our enemies' blood has boiled away!"
%E
%Cp Fir 00006
"May your days always be warm!"
%E
%Cp Fir 00007
"We have had trouble concentrating on our studies!"
%E
%Cp Fir 00008
"The water elementals are fierce, but they boil away under our fire!"
%E
%Cp Fir 00009
"%lC is a strange one, but he has helped defend us."
%E
%Cp Fir 00010
"The battles here have been good -- our enemies' blood has boiled away!"
%E
%Cp Fir 00011
"May your days always be warm!"
%E
%Cp Fir 00012
"Since the defeat of the hoarde, all can concentrate fully on our studies!"
%E
%Cp Fir 00013
"I'm taking my holidays in Gehennom this year - very warm there, supposedly"
%E
%Cp Fir 00014
"Have you noticed how much stronger %l is since %o was recovered?"
%E
%Cc Fir 00015
"Ah, %p.  You have returned at last.  The world is in dire
need of your help.  There is a great quest you must undertake.

"But first, I must see if you are ready to take on such a challenge."
%E
%Cp Fir 00016
"%p, you are back.  Are you ready now for the challenge?"
%E
%Cp Fir 00017
"Again, you stand before me, %p.  Surely you have prepared yourself."
%E
%Cc Fir 00018
"Pah!  You have betrayed the gods, %p.  You will never attain
the glory which you aspire to.  Your failure to follow the true path has
closed this future to you.

"I will protect these people as best I can, but soon %n will overcome
me and destroy all who once called you %s.  Now begone!"
%E
%Cc Fir 00019
"%p, I fear that you are as yet too inexperienced to face
%n.  Only %Ra with the help of %d could ever hope to
defeat him."
%E
%Cp Fir 00020
"%p!  You have wandered from the path of the %a!
If you attempt to overcome %n in this state, he will surely
enslave your soul.  Your only hope, and ours, lies in your purification.
Go forth, and return when you feel ready."
%E
%Cc Fir 00021
"The world is in great need of your assistance, %p.

"About six months ago, I learned that a mysterious sorcerer, known
as %n, had begun to summon horrible elementals from the plane of 
Water.

"%nC and his hordes of elementals swept down upon %H and stole
%o, and seeks to bend it to his will.  
After many brave wizards were slain by his watery servants, I
sent forth a summons for you!

"If %n can bend %o to his will, he will become
almost indestructible.  He will then be able to enslave our elementals,
and destroy us.  You are our only hope.  The gods smile upon you,
and with %d behind you, you alone can defeat %n.

"You must go to %i.  From there, you can track down
%n, defeat him, and return %o to us.  Only
then will the world be safe."
%E
%Cp Fir 00025
"%n is strong in the dark arts, but not immune to cold steel."
%E
%Cp Fir 00026
"Remember that %n is a great sorcerer.  He lived in the time
of Atlantis."
%E
%Cp Fir 00027
"If you fail, %p, I will not be able to protect these people long."
%E
%Cp Fir 00028
"To enter %i, you must be very stealthy.  The elementals will be on
guard."
%E
%Cp Fir 00029
"Call upon %d in your time of need."
%E
%Cp Fir 00030
"May %d protect you, and guide your steps."
%E
%Cp Fir 00031
"If you can lay hands upon %o, carry it for good fortune."
%E
%Cp Fir 00032
"I cannot stand against %ns sorcery.  But %d will help you."
%E
%Cp Fir 00033
"Do not fear %n.  I know you can defeat him."
%E
%Cp Fir 00034
"You have a great road to travel, %p, but only after you defeat
%n."
%E
%Cc Fir 00035
The soggy scent of water comes to you in the breeze.  You know that
you have located %i.
%E
%Cp Fir 00036
Yet again you have a chance to infiltrate %i.
%E
%Cc Fir 00040
You sense an evil energy in the very air around you.  You fight
down a primordial panic that seeks to make you turn and run.
This is surely the lair of %n.
%E
%Cp Fir 00041
Yet again you feel the air around you heavy with malevolent magical energy.
%E
%Cc Fir 00050
"So.  This is what that second rate sorcerer %l sends to do his bidding.
I have slain many before you.  You shall give me little sport.

"Prepare to die, %c."
%E
%Cp Fir 00051
"I have wasted too much time on you already.  Now, you shall die."
%E
%Cp Fir 00052
"You return yet again, %c!  Are you prepared for death now?"
%E
%Cp Fir 00053
"I shall have %o back, you pitiful excuse for %ca.
And your life as well."
%E
%Cp Fir 00060
"My pets will dine on your carcass tonight!"
%E
%Cp Fir 00061
"You are a sorry excuse for %ra."
%E
%Cp Fir 00062
"Run while you can, %c.  My next spell will be your last."
%E
%Cp Fir 00063
"I shall use your very skin to bind my next grimoire."
%E
%Cp Fir 00064
"%d cannot protect you now.  Here, you die."
%E
%Cp Fir 00065
"Your %a nature makes you weak.  You cannot defeat me."
%E
%Cp Fir 00066
"Come, %c.  I shall kill you, then unleash the horde on your people."
%E
%Cp Fir 00067
"Once you are dead, my horde shall finish off %l, and your people."
%E
%Cp Fir 00068
"Fight, %c, or are you afraid of the mighty %nt?"
%E
%Cp Fir 00069
"You have failed, %c.  Now, my victory is complete."
%E
%Cc Fir 00070
As you pick up %o, you feel the power of it
flowing through your hands.  It seems to be in two or more places
at once, even though you are holding it.
%E
%Cp Fir 00080
%n falls to the ground, and utters a last curse at you.  Then his
body fades slowly, seemingly dispersing into the air around you.  You
slowly become aware that the overpowering aura of magic in the air has
begun to fade.
%E
%Cc Fir 00081
When %l sees %o, he smiles, and says:

    Well done, %p.  You have saved the world from certain doom.
    What, now, should be done with %o?

    These wizards, brave as they are, cannot hope to guard it from
    other sorcerers who will detect it, as surely as %n did.

    Take %o with you, %p.  It will guard you in
    your adventures, and you can best guard it.  You embark on a
    quest far greater than you realize.

    Remember me, %p, and return when you have triumphed.  I
    will tell you then of what you must do.  You will understand when the
    time comes.
%E
%Cc Fir 00082
%l gazes at %o warmly for a moment, then looks at you.

"You are its keeper now, and the time has come to resume your search
for the Amulet.  %Z await your return through the
magic portal which brought you here."
%E
%Cp Fir 00090
"Tell us, %p, have you fared well on your great quest?"
%E
%Cc Fir 00091
"This is wondrous, %p.  I feared that you could not possibly
succeed in your quest, but here you are in possession of the Amulet
of Yendor!

"I have studied the texts of the magi constantly since you left.  In
the Book of Skelos, I found this:

    %d will cause a child to be sent into the world.  This child is to
    be made strong by trial of battle and magic, for %d has willed it so.
    It is said that the child of %d will recover the Amulet of Yendor
    that was stolen from the Creator at the beginning of time.

"As you now possess the amulet, %p, I suspect that the Book
speaks of you.

    The child of %d will take the Amulet, and travel to the Astral
    Plane, where the Great Temple of %d is to be found.  The Amulet
    will be sacrificed to %d, there on His altar.  Then the child will
    stand by %d as champion of all %cP for eternity.

"This is all I know, %p.  I hope it will help you."
%E
%Cc Fir 00095
"You have betrayed all those who hold allegiance to %d, as you once did.
My allegiance to %d holds fast and I cannot condone or accept what you 
have done.

Leave this place.  You shall never set foot at %H again.
That which you seek is now lost forever, for without the Bell of Opening, 
you will never be able to enter the place where he who has the Amulet 
resides.

Go now!  You are banished from this place.
%E

%Cp Fir 00100
You receive a faint telepathic message from %l:
Your help is urgently needed at %H!
Look for a ...ic transporter.
You couldn't quite make out that last message.
%E
%Cp Fir 00101
You again sense %l pleading for help.
%E
%Cp Fir 00102
"The silver bell which was hoarded by %n will be
essential in locating the Amulet of Yendor."
%E
%Cc Fir 00200
%E
%Cc Fir 00201
%E
%Cc Fir 00202
%E
%Cc Fir 00203
%E
%Cc Fir 00204
%E
%Cc Fir 00205
%E
%Cc Fir 00206
%E
%Cc Fir 00207
%E
%Cc Fir 00208
%E

#
#	General
#
%Cc - 00001
It is written in the Book of %d:

    After the Creation, the cruel god Moloch rebelled
    against the authority of Marduk the Creator.
    Moloch stole from Marduk the most powerful of all
    the artifacts of the gods, the Amulet of Yendor,
    and he hid it in the dark cavities of Gehennom, the
    Under World, where he now lurks, and bides his time.

Your %G %d seeks to possess the Amulet, and with it
to gain deserved ascendance over the other gods.

You, a newly trained %r, have been heralded
from birth as the instrument of %d.  You are destined
to recover the Amulet for your deity, or die in the
attempt.  Your hour of destiny has come.  For the sake
of us all:  Go bravely with %d!
%E
%Cp - 00002
You receive a faint telepathic message from %l:
Your help is urgently needed at %H!
Look for a ...ic transporter.
You couldn't quite make out that last message.
%E
%Cp - 00003
You again sense %l pleading for help.
%E
%Cp - 00004
You again sense %l demanding your attendance.
%E
# Completed the quest by returning with artifact, but not carrying
# the Bell of Opening; quest leader lets you know that it is needed.
#[ Should this be role-specific so that each leader has variant text? ]
%Cp - 00005
"The silver bell which was hoarded by %n will be
essential in locating the Amulet of Yendor."
%E
#
#	Angelic maledictions.
#
%Cp - 00010
"Repent, and thou shalt be saved!"
%E
%Cp - 00011
"Thou shalt pay for thine insolence!"
%E
%Cp - 00012
"Very soon, my child, thou shalt meet thy maker."
%E
%Cp - 00013
"The great %D has sent me to make you pay for your sins!"
%E
%Cp - 00014
"The wrath of %D is now upon you!"
%E
%Cp - 00015
"Thy life belongs to %D now!"
%E
%Cp - 00016
"Dost thou wish to receive thy final blessing?"
%E
%Cp - 00017
"Thou art but a godless void."
%E
%Cp - 00018
"Thou art not worthy to seek the Amulet."
%E
%Cp - 00019
"No one expects the Spanish Inquisition!"
%E
#
#	Demonic maledictions.
#
%Cp - 00030
"I first mistook thee for a statue, when I regarded thy head of stone."
%E
%Cp - 00031
"Come here often?"
%E
%Cp - 00032
"Doth pain excite thee?  Wouldst thou prefer the whip?"
%E
%Cp - 00033
"Thinkest thou it shall tickle as I rip out thy lungs?"
%E
%Cp - 00034
"Eat slime and die!"
%E
%Cp - 00035
"Go ahead, fetch thy mama!  I shall wait."
%E
%Cp - 00036
"Go play leapfrog with a herd of unicorns!"
%E
%Cp - 00037
"Hast thou been drinking, or art thou always so clumsy?"
%E
%Cp - 00038
"This time I shall let thee off with a spanking, but let it not happen again."
%E
%Cp - 00039
"I've met smarter (and prettier) acid blobs."
%E
%Cp - 00040
"Look!  Thy bootlace is undone!"
%E
%Cp - 00041
"Mercy!  Dost thou wish me to die of laughter?"
%E
%Cp - 00042
"Run away!  Live to flee another day!"
%E
%Cp - 00043
"Thou hadst best fight better than thou canst dress!"
%E
%Cp - 00044
"Twixt thy cousin and thee, Medusa is the prettier."
%E
%Cp - 00045
"Methinks thou wert unnaturally stirred by yon corpse back there, eh, varlet?"
%E
%Cp - 00046
"Up thy nose with a rubber hose!"
%E
%Cp - 00047
"Verily, thy corpse could not smell worse!"
%E
%Cp - 00048
"Wait!  I shall polymorph into a grid bug to give thee a fighting chance!"
%E
%Cp - 00049
"Why search for the Amulet?  Thou wouldst but lose it, cretin."
%E
#
#	Banishment message (for converted hero)
#
%Cc - 00060
"You have betrayed all those who hold allegiance to %d, as you once did.
My allegiance to %d holds fast and I cannot condone or accept what you 
have done.

Leave this place.  You shall never set foot at %H again.
That which you seek is now lost forever, for without the Bell of Opening, 
you will never be able to enter the place where he who has the Amulet 
resides.

Go now!  You are banished from this place.
%E
#
#	TEST PATTERN
#
%Cc - 00099
 %p:	return(plname);
 %c:	return(pl_character);
 %r:	return((char *)rank_of(u.ulevel));
 %R:	return((char *)rank_of(MIN_QUEST_LEVEL));
 %s:	return((flags.female) ? "sister" : "brother" );
 %S:	return((flags.female) ? "daughter" : "son" );
 %l:	return((char *)ldrname());
 %i:	return(intermed());
 %o:	return(artiname());
 %n:	return((char *)neminame());
 %g:	return((char *)guardname());
 %G:	return((char *)align_gtitle(galign(u.ugodbase[UGOD_ORIGINAL])));
 %h:	return((char *)((flags.female) ?  urace.individual.f : urace.individual.m));
 %H:	return((char *)homebase());
 %a:	return(Alignnam(galign(u.ugodbase[UGOD_ORIGINAL])));
 %A:	return(Alignnam(u.ualign.type));
 %d:	return((char *)align_gname(galign(u.ugodbase[UGOD_ORIGINAL])));
 %D:	return((char *)align_gname(A_LAWFUL));
 %C:	return("chaotic");
 %N:	return("neutral");
 %L:	return("lawful");
 %x:	return((Blind) ? "sense" : "see");
 %Z:	return("The Dungeons of Doom");
 %%:	return(percent_sign);
 a suffix:	return an(root);
 A suffix:	return An(root);
 C suffix:	return capitalized(root);
 p suffix:	return makeplural(root);
 P suffix:	return makeplural(capitalized(root));
 s suffix:	return s_suffix(root);
 S suffix:	return s_suffix(capitalized(root));
 t suffix:	return strip_the_prefix(root);
%E
#
# Alternate legacy text for Convict role
#
%Cc - 00199
It is written in the Book of %d:

    After the Creation, the cruel god Moloch rebelled
    against the authority of Marduk the Creator.
    Moloch stole from Marduk the most powerful of all
    the artifacts of the gods, the Amulet of Yendor,
    and he hid it in the dark cavities of Gehennom, the
    Under World, where he now lurks, and bides his time.

Your %G %d seeks to possess the Amulet, and with it
to gain deserved ascendance over the other gods.

You, a newly escaped %r, have chosen to redeem
yourself by recovering the Amulet for %d.  You are
determined to recover the Amulet for your deity, or die
in the attempt.  Your hour of destiny has come.  For
the sake of us all:  Go bravely with %d!
%E
#
# Demogorgon warning
#
%Cc - 00200
Demogorgon, Prince of Demons, is near!
%E
#
# Lamashtu warning
#
%Cc - 00201
Lamashtu, the Demon Queen, is near!
%E
#
# The Silence warning
#
%Cc - 00202
A terrible silence reigns!
%E
%Cc - 00203
A terrible silence falls!
%E
#
#	Alternate legacy text for Elves
#
%Cc - 00211
It is written in the Book of %d:

    After the Creation, the cruel Vala Morgoth rebelled
    against the authority of Eru the One.
    Morgoth stole from Eru the most powerful of all
    the artifacts of the Valar, the Amulet of Yendor,
    and he hid it in the dark cavities of Gehennom, the
    Under World, where he now lurks, and bides his time.

Your %G %d seeks to possess the Amulet, and with it
to gain deserved ascendance over the other Valar.

You, a newly trained %r, have been heralded
from birth as the instrument of %d.  You are destined
to recover the Amulet for your deity, or die in the
attempt.  Your hour of destiny has come.  For the sake
of us all:  Go bravely with %d!
%E
#
#	Worm that Walks General
#
%Cc - 00212
It is written in the Book of %d:

    After the Creation, the cruel god Moloch rebelled
    against the authority of Marduk the Creator.
    Moloch stole from Marduk the most powerful of all
    the artifacts of the gods, the Amulet of Yendor,
    and he hid it in the dark cavities of Gehennom, the
    Under World, where he now lurks, and bides his time.

Your %G %d seeks to possess the Amulet, and with it
to gain deserved ascendance over the other gods.

You, a newly trained %r, have been heralded
from birth as the instrument of %d.  You are destined
to recover the Amulet for your deity, or die in the
attempt.  Your hour of destiny has come.
%E
#
#	Alternate legacy text for Worm that Walks Elf
#
%Cc - 00213
It is written in the Book of %d:

    After the Creation, the cruel Vala Morgoth rebelled
    against the authority of Eru the One.
    Morgoth stole from Eru the most powerful of all
    the artifacts of the Valar, the Amulet of Yendor,
    and he hid it in the dark cavities of Gehennom, the
    Under World, where he now lurks, and bides his time.

Your %G %d seeks to possess the Amulet, and with it
to gain deserved ascendance over the other Valar.

You, a newly trained %r, have been heralded
from birth as the instrument of %d.  You are destined
to recover the Amulet for your deity, or die in the
attempt.  Your hour of destiny has come.
%E
#
# Alternate legacy text for Worm that Walks Convict
#
%Cc - 00214
It is written in the Book of %d:

    After the Creation, the cruel god Moloch rebelled
    against the authority of Marduk the Creator.
    Moloch stole from Marduk the most powerful of all
    the artifacts of the gods, the Amulet of Yendor,
    and he hid it in the dark cavities of Gehennom, the
    Under World, where he now lurks, and bides his time.

Your %G %d seeks to possess the Amulet, and with it
to gain deserved ascendance over the other gods.

You, a newly escaped %r, have chosen to redeem
yourself by recovering the Amulet for %d.  You are
determined to recover the Amulet for your deity, or die
in the attempt.  Your hour of destiny has come.
%E
#
# Legacy text 2 for Worm that Walks
#
%Cc - 00215
Shame about the bandits, really.

Ambushed and overpowered, your looted corpse was left
to rot in a shallow grave.
%E
#
# Legacy text 3 for Worm that Walks
#
%Cc - 00216
But destiny is a strange and winding road.

And things have learnt to walk that once did crawl.
%E
#
#	Legacy text for Binders
#
%Cc - 00217
The priests tell a story:

    After the Creation, the cruel god Moloch rebelled
    against the authority of Marduk the Creator.
    Moloch stole from Marduk the most powerful of all
    the artifacts of the gods, the Amulet of Yendor,
    and he hid it in the dark cavities of Gehennom, the
    Under World, where he now lurks, and bides his time.

The various gods and heroes of this world struggle 
mightily to recover the amulet, for the god who reclaims
the amulet will be granted ascendance over the other 
gods of the world.

You, a newly empowered %r, have been heralded
from birth as..., well, no one actually heralded your
birth. But if someone had, they would have heralded
you as a poor peon of your local feudal overlord.
You were destined to live and die in the village
of your ancestors.

All that changed in one night, when you stumbled
onto a forbidden secret. Since that night, priests
and shopkeepers alike have eyed you with suspicion,
while unseen whisperers ceaselessly repeat a litany
of names in your ears.

Exiled from your village, you seek to claim a new
destiny in the depths of %Z,
or die in the attempt.

Go bravely with %d!
%E
#
#	Legacy text for Anachrononauts
#
%Cc - 00218
Once, there was a story:

    After the Creation, the cruel god Moloch rebelled
    against the authority of Marduk the Creator.
    Moloch stole from Marduk the most powerful of all
    the artifacts of the gods, the Amulet of Yendor,
    and he hid it in the dark cavities of Gehennom, the
    Under World, where he now lurks, and bides his time.

The various gods and heroes of the world struggled 
mightily to recover the amulet, for the god who reclaimed
the amulet would be granted ascendance over the other 
gods of the world.  Eventually, one such hero recovered
the amulet and bore it up the the Astral Plane in the
name of their god.  The hero was rewarded by their 
ascendant deity with demi-godhood and immortality.
%E
%Cc - 00219
That time is long past.  The ascendance and immortality
of the gods proved a lie, for heaven now lies in ruins,
trampled into the bloody soil of earth by the cursed
mind flayers.

You, a newly trained %r, have been trained
from birth as the instrument of hope in a dying world.
One day soon, when your sister, the Last Oracle Sara,
deems you ready and the Army of the Bastion has 
completed its secret preparations, you shall-

*ALERT: Picket line reports contact.  Hostile entities
vectoring on Last Bastion.  Picket line engaging targets*

<<%p, report to ritual grounds at once.  We must complete
the ritual before the courtyard is overrun>>

%E
%Cc - 00220
**EMERGENCY ALERT:  Picket line overrun.  Telemetry
suggests 100%% losses.  Hostile entities vectoring
on Last Bastion.**

<<Once the ritual is complete, proceed to the Dungeons
of Doom.  I will contact you at that time-place with
further instructions>>

%E
%Cc - 00221
<<Good luck, %s.>>
%E
#
#	Legacy text for Androids
#
%Cc - 00222
That time is long past.  The ascendance and immortality
of the gods proved a lie, for heaven is now in ruins,
consumed by the cursed goddess of the mind flayers.

You, a newly constructed %h, were placed into
storage after an initial testing phase, in anticipation
of a major battle in the war.
%E
%Cc - 00223
Which made it all the more confusing to have awakened
by yourself, apparently in the distant past, with
a pair of yellow sticky notes on your forehead.
%E
%Cc - 00224
"Hi, unit %p.  I don't have long to write,
so I'll try to be quick.

"The perimeter breach alarm woke the first batch
of us up, and it doesn't look good.  The city's
been wiped out (looks like by meteors), and 
we're not getting any response from the military
net or the Bastion relays.

"We did find some stored emergency data-dumps, and
they look bad.  Looks like the Bastions tried some
sort of time-travel strategy to destroy Ilsensine
before she could consume heaven, but it failed.

"I think we're the only ones left."
%E
%Cc - 00225
"We're going to put you, your adjutant, and a bunch
of weapons in a pile and initiate a time-space 
rupture.  You'll  probably end up scattered all 
over the target region, but there's no time to do
better.  Our sisters are holding the perimeter as 
best they can, but more enemies are pouring in from
all directions.

"Once you wake up, you need to find the Dungeons of
Doom, locate the Bastions' time-portal, retrieve the
Annulus from wherever it ended up, and use it against
Ilsensine in the past.

"So, you know.  Good luck."
%E
#
#	Legacy text for Illithanachronounbinders
#
%Cc - 00226
Now, there is a story:

    After the Creation, the cruel god Moloch rebelled
    against the authority of Marduk the Creator.
    Moloch stole from Marduk the most powerful of all
    the artifacts of the gods, the Amulet of Yendor,
    and he hid it in the dark cavities of Gehennom, the
    Under World, where he now lurks, and bides his time.

The various gods and heroes of this world struggle 
mightily to recover the amulet, for the god who reclaims
the amulet will be granted ascendance over the other 
gods of the world.

It wasn't always this way. In the days from which you
traveled there was but one god, Ilsensine. She and her
illithid empire ruled over all of the known universe.

You, a newly empowered %r, have been heralded
from birth to travel to the future, now. The mighty
plan of Ilsensine will be ready then and the slave
races replenished.

You must travel back on your quest to recover the 
memories of illithids past and with them inside 
the mighty Illithid Staff ascend to the Astral Plane with
the amulet and use the memories to travel to The Void,
where Ilsensine slumbers.

%d must be recovered and the natural order
of power brought back to this forsaken universe.

Go bravely for Ilsensine!
%E
