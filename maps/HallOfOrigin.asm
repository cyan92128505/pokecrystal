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
	checkevent EVENT_BEAT_MASTER_OAK
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

    setval ARCEUS
	special MonCheck
	iftrue .Credits
	disappear HALLOFORIGIN_ARCEUS
	reloadmapafterbattle
	end

.Credits
	dontrestartmapmusic
	reloadmapafterbattle
	setevent EVENT_CAUGHT_ARCEUS
    special FadeOutMusic
	opentext
	writetext CaughtArceusText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear HALLOFORIGIN_ARCEUS
	pause 15
	special FadeInQuickly
	pause 30
	special HealParty
	refreshscreen
	credits
	end
ArceusText:
    text "<PLAYER>"
    line "Thine heart be"
    cont "pure."

    para "Thy salvation"
    line "be upon thee."

    para "Let thine faith"
    line "guide thee."
    done

CaughtArceusText:
    text "Amen..."
    done

ArceusPokeBallScript:
    checkevent EVENT_BEAT_MASTER_OAK
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
	givepoke ARCEUS, 100, NO_ITEM
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
    checkevent EVENT_BEAT_MASTER_OAK
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
	givepoke MEWTWO, 100, NO_ITEM
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
	checkevent EVENT_BEAT_MASTER_OAK
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
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer POKEMON_PROF, MASTER_OAK
	startbattle
	appear HALLOFORIGIN_ARCEUS_POKEBALL
	clearevent EVENT_ARCEUS_POKEBALL_NOT_PRESENT
	appear HALLOFORIGIN_MEWTWO_POKEBALL
	clearevent EVENT_MEWTWO_POKEBALL_NOT_PRESENT
	setevent EVENT_BEAT_MASTER_OAK
	reloadmapafterbattle
	opentext
	writetext MasterOakOfferPrizeText
	waitbutton
	closetext
	special HealParty
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

MasterOakIntroText:
    text "Hello <PLAYER>"

    para "I am not the"
    line "Professor OAK"
    cont "you know."

    para "There are many"
    line "#MON with"
    cont "amazing powers"
    cont "in this world."

    para "Some can grant"
    line "eternal life."

    para "Some can command"
    line "space, time and"
    cont "reality."

    para "Near the end of"
    line "my life I"
    cont "sought these"
    cont "#MON"

    para "I lived now to"
    line "see the end of"
    cont "reality itself."

    para "I have been to"
    line "every possible"
    cont "world."

    para "I want to pass"
    line "on my knowledge"
    cont "to one who is"
    cont "worthy."

    para "I believe that"
    line "person is you."

    para "There is but"
    line "one way to be"
    cont "sure."
    done

MasterOakBeatenText:
    text "You are worthy."
    done

MasterOakOfferPrizeText:
    text "Having beaten"
    line "me I present"
    cont "you with a"
    cont "fragment of"
    cont "my knowledge."

    para "I shall impart"
    line "such knowledge"
    cont "with every"
    cont "defeat."

    para "Now choose."
    done

MasterOakAfterBattleText:
    text "Life is"
    line "beautiful."

    para "Together we"
    line "shall shape"
    cont "reality."

    para "All beings"
    line "will know the"
    cont "peace that we"
    cont "do."
    done

MasterRedScript:
	faceplayer
    checkevent EVENT_BEAT_MASTER_LANCE
    iffalse .beatOthersFirst
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
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer RED, MASTER_RED
	startbattle
	setevent EVENT_BEAT_MASTER_RED
	reloadmapafterbattle
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
    cont "one of us is"
    cont "the strongest."

    para "First you must"
    line "defeat the"
    cont "others."

    para "Then I will"
    line "fight you."

    para "We are all at"
    line "our very"
    cont "strongest!"

    para "Let's have fun!"
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
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer CHAMPION, MASTER_LANCE
	startbattle
	setevent EVENT_BEAT_MASTER_LANCE
	reloadmapafterbattle
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

MasterLanceSeenText:
    text "An eternal"
    line "tempest swells"
    cont "within mine"
    cont "heart."

    para "I must set"
    line "aside thy ire."

    para "I must temper"
    line "thy ambitions."

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
    text "My dragons and"
    line "I are content"
    cont "with who and"
    cont "what we are."

    para "But you are"
    line "meant to peirce"
    cont "the heavens and"
    cont "raise above all."
    done

MasterBlueScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_BLUE
	iftrue .FightDone
.fight
	writetext MasterBlueSeenText
	waitbutton
	closetext
	winlosstext MasterBlueBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer BLUE, MASTER_BLUE
	startbattle
	setevent EVENT_BEAT_MASTER_BLUE
	reloadmapafterbattle
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

MasterBlueSeenText:
    text "When I was young"
    line "I was arrogant."

    para "I knew I was"
    line "right and I"
    cont "I was better"
    cont "than any other."

    para "I was such a"
    line "child."

    para "Now I know my"
    line "place in the"
    cont "world."

    para "Now I see my"
    line "weaknesses and"
    cont "that makes me"
    cont "stronger."

    para "Still, part of"
    line "me wishes I"
    cont "could have that"
    cont "old confidence"
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
    line "strongest one"
    cont "of us can go."
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
	coord_event  11,  12, SCENE_ALWAYS, MustBeatMasterRedScript
	coord_event  12,  12, SCENE_ALWAYS, MustBeatMasterRedScript
	coord_event  13,  12, SCENE_ALWAYS, MustBeatMasterRedScript
    coord_event  10,  39, SCENE_ALWAYS, ReloadMapScript
	coord_event  11,  39, SCENE_ALWAYS, ReloadMapScript
	coord_event  12,  39, SCENE_ALWAYS, ReloadMapScript
	coord_event  13,  39, SCENE_ALWAYS, ReloadMapScript

	def_bg_events

	def_object_events
	object_event  11,  0, SPRITE_ARCEUS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, ArceusScript, EVENT_DUMMY
	object_event  11,  0, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, MasterOakScript, EVENT_CAUGHT_ARCEUS
	object_event  12,  0, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, ArceusPokeBallScript, EVENT_ARCEUS_POKEBALL_NOT_PRESENT
	object_event  13,  0, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, MewtwoPokeBallScript, EVENT_MEWTWO_POKEBALL_NOT_PRESENT
	object_event  10, 13, SPRITE_RED, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MasterRedScript, -1
	object_event  8, 14, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MasterLanceScript, -1
	object_event  15, 14, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MasterBlueScript, -1
