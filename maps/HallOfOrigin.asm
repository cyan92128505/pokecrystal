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
    para "The weapon"
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

RematchTextHallOfOrigin:
    text "Shall we have"
    line "another match?"
    done

RematchRefuseTextHallOfOrigin:
    text "I will always"
    line "be here."
    done

HallOfOrigin_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  11, 0, SPRITE_ARCEUS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ArceusScript, EVENT_DUMMY
	object_event  11, 0, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterOakScript, EVENT_CAUGHT_ARCEUS
	object_event  12, 0, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ArceusPokeBallScript, EVENT_ARCEUS_POKEBALL_NOT_PRESENT
	object_event  13, 0, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MewtwoPokeBallScript, EVENT_MEWTWO_POKEBALL_NOT_PRESENT
