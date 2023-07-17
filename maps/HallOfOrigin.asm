    object_const_def
    const HALLOFORIGIN_ARCEUS
    const HALLOFORIGIN_OAK
    const HALLOFORIGIN_ARCEUS_POKEBALL
    const HALLOFORIGIN_MEWTWO_POKEBALL

HallOfOrigin_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	callback MAPCALLBACK_OBJECTS, .ArceusAndOak

.FlyPoint:
	setflag ENGINE_FLYPOINT_HALL_OF_ORIGIN
	endcallback

.ArceusAndOak
	setval WEATHER_NONE
	writemem wFieldWeather

    setval ARCEUS
	special MonCheck
	iftrue .hasArceus
    disappear HALLOFORIGIN_OAK
    disappear HALLOFORIGIN_MEWTWO_POKEBALL
    setevent EVENT_MEWTWO_POKEBALL_NOT_PRESENT
    disappear HALLOFORIGIN_ARCEUS_POKEBALL
    setevent EVENT_ARCEUS_POKEBALL_NOT_PRESENT
	appear HALLOFORIGIN_ARCEUS
	endcallback
.hasArceus:
	disappear HALLOFORIGIN_ARCEUS
	appear HALLOFORIGIN_OAK
	checkevent EVENT_BEAT_LORD_OAK
	iftrue .end
    appear HALLOFORIGIN_MEWTWO_POKEBALL
    clearevent EVENT_MEWTWO_POKEBALL_NOT_PRESENT
    appear HALLOFORIGIN_ARCEUS_POKEBALL
    clearevent EVENT_ARCEUS_POKEBALL_NOT_PRESENT
.end
	endcallback

ArceusScript:
	opentext
	writetext ArceusText
	waitbutton
	cry ARCEUS
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon ARCEUS, 100
	startbattle
	ifequal LOSE, .lose

    setval ARCEUS
	special MonCheck
	iftrue .Credits
	disappear HALLOFORIGIN_ARCEUS
	reloadmapafterbattle
	end
.lose
    special HealParty
    reloadmap
    opentext
    writetext ArceusWinAfterBattleText
    waitbutton
    closetext
    end
.Credits
	dontrestartmapmusic
	reloadmapafterbattle
	warp HALL_OF_ORIGIN, 11, 3
	turnobject PLAYER, UP
	setevent EVENT_CAUGHT_ARCEUS
    special FadeOutMusic
	opentext
	writetext CaughtArceusText
	waitbutton
	closetext
	;special FadeBlackQuickly
	;special ReloadSpritesNoPalettes
	disappear HALLOFORIGIN_ARCEUS
	pause 15
	;special FadeInQuickly
	;pause 30
	appear HALLOFORIGIN_OAK
	opentext
	writetext OakBeatenArceusText
	waitbutton
	closetext
	special HealParty
	;refreshscreen
	credits
	end
ArceusWinAfterBattleText:
    text "Dear child."

    para "Strengthen thy"
    line "resolve."

    para "Take up thy sword"
    line "and thy shield"

    para "Let thy faith"
    line "guide thee."
    done
OakBeatenArceusText:
    text "<PLAYER>..."

    para "You achieved the"
    line "unprecedented."

    para "You destiny is"
    line "fulfilled beyond"
    cont "your knowing."

    para "Now contemplate"
    line "the significance"
    cont "of your great"
    cont "achievement."

    para "You approach"
    line "the event"
    cont "horizon of an"
    cont "immortal rule."

    para "Return to me"
    line "when you are"
    cont "ready to reach"
    cont "the heights of"
    cont "#MON LORD."
    done
ArceusText:
    text "<PLAYER>"
    line "Thine heart be"
    cont "pure."

    para "Thy salvation"
    line "be upon thee."

    para "Let thine faith"
    line "guide thee."

    para "Wield my power"
    line "unmatched and"
    cont "thou shalt do"
    cont "my wonders."
    done

CaughtArceusText:
    text "Amen."
    done

ArceusPokeBallScript:
    checkevent EVENT_BEAT_LORD_OAK
    iffalse .MustBeatOak
    checkevent EVENT_MEWTWO_POKEBALL_NOT_PRESENT
    iftrue .MustBeatOak
    checkevent EVENT_ARCEUS_POKEBALL_NOT_PRESENT
    iftrue .MustBeatOak
	cry ARCEUS
	opentext
	writetext TakeArceusText
	yesorno
	iffalse .Refused
	disappear HALLOFORIGIN_ARCEUS_POKEBALL
	setevent EVENT_ARCEUS_POKEBALL_NOT_PRESENT
	waitsfx
	getmonname STRING_BUFFER_3, ARCEUS
	writetext ReceivedArceusText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke ARCEUS, 100, HOLY_CROWN
.Refused
	closetext
	end
.MustBeatOak
    opentext
	writetext MustBeatOakText
	waitbutton
	closetext
	end
TakeArceusText:
    text "You choose"
    line "ARCEUS."
    para "The God #MON"
    done
ReceivedArceusText:
	text "<PLAYER> received"
	line "ARCEUS."
	done

MewtwoPokeBallScript:
    checkevent EVENT_BEAT_LORD_OAK
    iffalse .MustBeatOak
    checkevent EVENT_ARCEUS_POKEBALL_NOT_PRESENT
    iftrue .MustBeatOak
    checkevent EVENT_MEWTWO_POKEBALL_NOT_PRESENT
    iftrue .MustBeatOak
	cry MEWTWO
	opentext
	writetext TakeMewtwoText
	yesorno
	iffalse .Refused
	disappear HALLOFORIGIN_MEWTWO_POKEBALL
	setevent EVENT_MEWTWO_POKEBALL_NOT_PRESENT
	waitsfx
	getmonname STRING_BUFFER_3, MEWTWO
	writetext ReceivedMewtwoText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke MEWTWO, 100, BERSERK_GENE
.Refused
	closetext
	end
.MustBeatOak
    opentext
	writetext MustBeatOakText
	waitbutton
	closetext
	end
TakeMewtwoText:
    text "You choose"
    line "MEWTWO."
    para "The Weapon"
    line "#MON"
    done
ReceivedMewtwoText:
	text "<PLAYER> received"
	line "MEWTWO."
	done

MustBeatOakText:
    text "I must defeat"
    line "MASTER OAK!"
    done

MasterOakScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LORD_OAK
	iffalse .Fight
    checkevent EVENT_MEWTWO_POKEBALL_NOT_PRESENT
    iftrue .FightDone
    checkevent EVENT_ARCEUS_POKEBALL_NOT_PRESENT
    iftrue .FightDone
    writetext MasterOakOfferPrizeText
	waitbutton
	closetext
	end
.Fight
	writetext MasterOakIntroText
	waitbutton
	closetext
	winlosstext MasterOakBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer LORD_OAK, OAK
	startbattle
	ifequal LOSE, .lose
	reloadmapafterbattle
	appear HALLOFORIGIN_ARCEUS_POKEBALL
	clearevent EVENT_ARCEUS_POKEBALL_NOT_PRESENT
	appear HALLOFORIGIN_MEWTWO_POKEBALL
	clearevent EVENT_MEWTWO_POKEBALL_NOT_PRESENT
	setval 0
	writemem wInvading
	setval 1
	writemem wBeatenLordOak
	special HealParty
	warp HALL_OF_ORIGIN, 11, 3
	turnobject PLAYER, UP
	opentext
	writetext MasterOakVictoryText
	waitbutton
	checkevent EVENT_BEAT_LORD_OAK
	iftrue .skipMarkOfGod
	writetext MarkOfGodText
	waitbutton
	verbosegiveitem MARK_OF_GOD
.skipMarkOfGod
	closetext
	setevent EVENT_BEAT_LORD_OAK
	opentext
	writetext MasterOakOfferPrizeText
	waitbutton
	closetext
	special HealParty
	end
.lose
    special HealParty
    reloadmap
    opentext
    writetext OakWinAfterBattleText
    waitbutton
    closetext
    end
.FightDone:
	writetext MasterOakAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextHallOfOrigin
	yesorno
	iftrue .Fight
	writetext RematchRefuseTextHallOfOrigin
	waitbutton
	closetext
	end

OakWinAfterBattleText:
    text "I think you have"
    line "the potential."

    para "You just need to"
    line "unlearn what you"
    cont "think you know."
    done

MasterOakIntroText:
    text "Hello <PLAYER>!"

    para "I am one who once"
    line "occupied a"
    cont "configuration you"
    cont "would know as"
    cont "PROF OAK."

    para "Alas I have seen"
    line "the birth and"
    cont "demise of"
    cont "universes beyond"
    cont "count since then."

    para "I arrived in this"
    line "state by way of"
    cont "a relentless quest"
    cont "for knowledge."

    para "There are #MON"
    line "with great powers."

    para "Command of time,"
    line "space, reality,"
    cont "life and death."

    para "All these powers"
    line "and more are now"
    cont "exemplified"
    cont "through me."

    para "I seek another."

    para "One who might"
    line "weld my great"
    cont "powers."

    para "Some have come"
    line "close but none"
    cont "have passed my"
    cont "test."

    para "None are destined"
    line "to be a"
    cont "#MON LORD."

    para "You however."

    para "Perhaps you are."
    done

MasterOakBeatenText:
    text "You are worthy."
    done

MasterOakVictoryText:
    text "You are"
    line "victorious."

    para "I am defeated."

    para "I bestow upon"
    line "powers earned"
    cont "through life"
    cont "immortal."

    para "You are a"
    line "#MON LORD."

    para "Your body is now"
    line "indestructible"
    cont "and immortal."

    para "All your #MON"
    line "shine with power"
    cont "regardless of"
    cont "their stats."

    para "You have access"
    line "to unlimited"
    cont "resources."

    para "And no aggressive"
    line "trainer or #MON"
    cont "will dare to"
    cont "challenge you."
    done

MarkOfGodText:
    para "I bestow upon you"
    line "control of these"
    cont "new powers."
    done

MasterOakOfferPrizeText:
    para "Further I present"
    line "you with a"
    cont "fragment of"
    cont "my power."

    para "I shall impart"
    line "such power with"
    cont "every defeat."

    para "Now choose."
    done

MasterOakAfterBattleText:
    text "My existence has"
    line "has found purpose"
    cont "through you."

    para "You shall live"
    line "to view all"
    cont "reality, all"
    cont "space, time and"
    cont "being as a"
    cont "single, beautiful"
    cont "instant."

    para "An instant that"
    line "must be preserved"
    cont "treasured and"
    cont "protected."

    para "You and you alone"
    line "have the power to"
    cont "actualise this"
    cont "goal."
    done

MasterOakBecomeMortalText:
    text "Do you wish to"
    line "remain in your"
    cont "immortal form?"
    done

MasterOakBecomeMortalAfterText:
    text "You are mortal"
    line "once again."
    para "Speak to me if"
    line "wish me to restore"
    cont "your true golden"
    cont "form."
    done

MasterOakBecomeImmortalText:
    text "Do you wish to"
    line "reclaim in your"
    cont "immortal form?"
    done

MasterOakBecomeImmortalAfterText:
    text "You are immortal"
    line "once again."
    para "Speak to me if"
    line "wish me to return"
    cont "to your mortal"
    cont "form."
    done

MasterRedScript:
	faceplayer
    checkevent EVENT_BEAT_MASTER_BLUE
    iffalse .beatOthersFirst
	opentext
	checkevent EVENT_BEAT_MASTER_RED
	iftrue .FightDone
.fight
	writetext MasterRedSeenText
	waitbutton
	closetext
	winlosstext MasterRedBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer RED, MASTER_RED
	startbattle
	ifequal LOSE, .lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_RED
	opentext
	writetext MasterRedAfterBattleText
	waitbutton
	closetext
	special HealParty
	end
.FightDone:
	writetext MasterRedAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextHallOfOrigin
	yesorno
	iftrue .fight
	writetext RematchRefuseTextHallOfOrigin
	waitbutton
	closetext
	end
.beatOthersFirst
    opentext
	writetext BeatOthersFirstText
	waitbutton
	closetext
	end
.lose
    special HealParty
    reloadmap
    opentext
    writetext RedWinAfterBattleText
    waitbutton
    closetext
    end

RedWinAfterBattleText:
    text "You are very"
    line "strong."

    para "You must set up"
    line "your strategy as"
    cont "early as possible."
    done

MasterRedSeenText:
    text "Since I was"
    line "a boy."

    para "My dream has"
    line "never changed."

    para "To be the very"
    line "best."

    para "Like no one"
    line "ever was."

    para "I am closer"
    line "to achieving"
    cont "that now than"
    cont "ever."

    para "Out battle"
    line "will help us"
    cont "both reach"
    cont "our goals."
    done

MasterRedBeatenText:
    text "You love"
    line "#MON."
    done

MasterRedAfterBattleText:
    text "You must go"
    line "forward and let"
    cont "nobody tell you"
    cont "it's impossible!"
    done

BeatOthersFirstText:
    text "Hello <PLAYER>."

    para "This is the"
    line "HALL OF ORIGIN."

    para "ARCEUS waits to"
    line "present itself"
    cont "to whichever"
    cont "one of you is"
    cont "the strongest."

    para "First you must"
    line "defeat the"
    cont "others."

    para "Then if you"
    line "can defeat"
    cont "BLUE I will"
    cont "test you."

    para "Should you pass"
    line "you are worthy"
    cont "to speak with"
    cont "ARCEUS."

    para "If you conquer"
    line "ARCEUS..."

    para "The great one"
    line "will no doubt"
    cont "want to speak"
    cont "to you."
    done

MasterLanceScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_LANCE
	iftrue .FightDone
.fight
	writetext MasterLanceSeenText
	waitbutton
	closetext
	winlosstext MasterLanceBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer CHAMPION, MASTER_LANCE
	startbattle
	ifequal LOSE, .lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_LANCE
	opentext
	writetext MasterLanceAfterBattleText
	waitbutton
	closetext
	special HealParty
	end
.FightDone:
	writetext MasterLanceAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextHallOfOrigin
	yesorno
	iftrue .fight
	writetext RematchRefuseTextHallOfOrigin
	waitbutton
	closetext
	end
.lose
    special HealParty
    reloadmap
    opentext
    writetext LanceWinAfterBattleText
    waitbutton
    closetext
    end

LanceWinAfterBattleText:
    text "You fight with"
    line "passion and"
    cont "conviction."

    para "You will defeat"
    line "me I have no"
    cont "doubt."
    done

MasterLanceSeenText:
    text "You are strong"
    line "<PLAYER>."

    para "With steadfast"
    line "conviction I"
    cont "knew you would"
    cont "present yourself."

    para "Tis our destiny"
    line "to meet here."

    para "To claim the"
    line "strength to"
    cont "shape the world."

    para "There can be"
    line "only one!"
    done

MasterLanceBeatenText:
    text "I yield!"
    done

MasterLanceAfterBattleText:
    text "The heart of a"
    line "dragon knows no"
    cont "fear, no worry,"
    cont "no regret."

    para "You have the"
    line "heart of a"
    cont "dragon!"

    para "You are destined"
    line "to peirce through"
    cont "the heavens and"
    cont "raise above all."
    done

MasterBlueScript:
	faceplayer
    checkevent EVENT_BEAT_MASTER_LANCE
    iffalse .beatOthersFirst
	opentext
	checkevent EVENT_BEAT_MASTER_BLUE
	iftrue .FightDone
.fight
	writetext MasterBlueSeenText
	waitbutton
	closetext
	winlosstext MasterBlueBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer BLUE, MASTER_BLUE
	startbattle
	ifequal LOSE, .lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_BLUE
	opentext
	writetext MasterBlueAfterBattleText
	waitbutton
	closetext
	special HealParty
	end
.FightDone:
	writetext MasterBlueAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextHallOfOrigin
	yesorno
	iftrue .fight
	writetext RematchRefuseTextHallOfOrigin
	waitbutton
	closetext
	end
.beatOthersFirst
    opentext
	writetext BeatOthersFirstBlueText
	waitbutton
	closetext
	end
.lose
    special HealParty
    reloadmap
    opentext
    writetext BlueWinAfterBattleText
    waitbutton
    closetext
    end

BlueWinAfterBattleText:
    text "I have to say."

    para "That victory felt"
    line "good."

    para "I feel like my"
    line "old self again."

    para "Thanks."
    done

MasterBlueSeenText:
    text "When I was young"
    line "I was arrogant."

    para "I knew I was"
    line "right and I"
    cont "I was better"
    cont "than any other."

    para "I was such a"
    line "child."

    para "Now I know the"
    line "burden and the"
    cont "power that comes"
    cont "from a need to"
    cont "protect those"
    cont "who can not do"
    cont "so themselves."

    para "Still, I yearn"
    line "to be filled with"
    cont "my old confidence"
    cont "again."

    para "Maybe you can"
    line "help me find"
    cont "it."
    done

MasterBlueBeatenText:
    text "Not bad kid."
    done

MasterBlueAfterBattleText:
    text "Our battle gave"
    line "me focus."

    para "It helped me"
    line "feel like my"
    cont "old self."

    para "what was it I"
    line "used to say..."

    para "Smell ya later!"

    para "Defeat RED!"

    para "Then conquer"
    line "ARCEUS."

    para "Then he will"
    line "appear."

    para "And you will"
    line "see how far all"
    cont "of us still have"
    cont "to go in our"
    cont "quest to be the"
    cont "best."
    done

BeatOthersFirstBlueText:
    text "Hey challenger!"

    para "I you think you"
    line "are worthy to"
    cont "have an audience"
    cont "with ARCEUS."

    para "You must prove"
    line "yourself the"
    cont "strongest."

    para "Then I will"
    line "test you."

    para "RED wont even"
    line "get the chance"
    cont "to fight you."
    done

MasterGreenScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_GREEN
	iftrue .FightDone
.fight
	writetext MasterGreenSeenText
	waitbutton
	closetext
	winlosstext MasterGreenBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer LEAF, MASTER_GREEN
	startbattle
	ifequal LOSE, .lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_GREEN
	opentext
	writetext MasterGreenAfterBattleText
	waitbutton
	closetext
	special HealParty
	end
.FightDone:
	writetext MasterGreenAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextHallOfOrigin
	yesorno
	iftrue .fight
	writetext RematchRefuseTextHallOfOrigin
	waitbutton
	closetext
	end
.lose
    special HealParty
    reloadmap
    opentext
    writetext GreenWinAfterBattleText
    waitbutton
    closetext
    end

GreenWinAfterBattleText:
    text "You remind me so"
    line "much of RED."

    para "Except I can't"
    line "beat him."

    para "Good battle!"
    done

MasterGreenSeenText:
    text "Always I have"
    line "lived my life"
    cont "in the shadow"
    cont "of others."

    para "Always chasing"
    line "the success of"
    cont "others."

    para "Coveting the"
    line "destiny of"
    cont "others."

    para "I never stopped"
    line "to consider my"
    cont "destiny."

    para "Never allowed"
    line "myself to be me"
    cont "without guilt."

    para "Now I know who"
    line "I am."

    para "I will never be"
    line "anyone else."

    para "I am GREEN."

    para "A trainer from"
    line "PALLET TOWN."
    done

MasterGreenBeatenText:
    text "Well done!"
    done

MasterGreenAfterBattleText:
    text "You really are"
    line "the strongest."

    para "I want you to"
    line "march in there"
    cont "and beat RED"
    cont "and BLUE!"

    para "Let them know"
    line "the endless"
    cont "struggle of"
    cont "chasing the"
    cont "destiny of"
    cont "another."

    para "Though I think"
    line "they may already"
    cont "do."
    done

RematchTextHallOfOrigin:
    text "Shall we have"
    line "another match?"
    done

RematchRefuseTextHallOfOrigin:
    text "I will always"
    line "be here."
    done

MustBeatMasterRedScript:
    checkevent EVENT_BEAT_MASTER_RED
    iftrue .end
    turnobject PLAYER, DOWN
	opentext
	writetext MustBeatMasterRedScriptText
    waitbutton
    closetext
    applymovement PLAYER, Movement_HallOfOriginTurnBack
.end
    end

MustBeatMasterRedScriptText:
    text "Only the"
    line "strongest"
    cont "may pass."
    done

Movement_HallOfOriginTurnBack:
	step DOWN
	step_end

ReloadMapScript:
	special HealParty
	reloadmap
    end

HallOfOrigin_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event 11, 18, SCENE_ALWAYS, MustBeatMasterRedScript
	coord_event 12, 18, SCENE_ALWAYS, MustBeatMasterRedScript
	coord_event 10, 45, SCENE_ALWAYS, ReloadMapScript
	coord_event 11, 45, SCENE_ALWAYS, ReloadMapScript
	coord_event 12, 45, SCENE_ALWAYS, ReloadMapScript
	coord_event 13, 45, SCENE_ALWAYS, ReloadMapScript

	def_bg_events

	def_object_events
	object_event 11,  2, SPRITE_ARCEUS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, ArceusScript, EVENT_ARCEUS_APPEARS
	object_event 11,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, MasterOakScript, EVENT_CAUGHT_ARCEUS
	object_event 12,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, ArceusPokeBallScript, EVENT_ARCEUS_POKEBALL_NOT_PRESENT
	object_event 13,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, MewtwoPokeBallScript, EVENT_MEWTWO_POKEBALL_NOT_PRESENT
	object_event 10, 18, SPRITE_RED, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MasterRedScript, -1
	object_event  8, 20, SPRITE_LANCE, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MasterLanceScript, -1
	object_event 15, 20, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MasterGreenScript, -1
	object_event 13, 18, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MasterBlueScript, -1
