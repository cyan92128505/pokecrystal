	object_const_def
	const ROUTE12_FISHER1
	const ROUTE12_FISHER2
	const ROUTE12_FISHER3
	const ROUTE12_FISHER4
	const ROUTE12_POKE_BALL1
	const ROUTE12_POKE_BALL2
	const ROUTE12_FIELDMON_1
    const ROUTE12_FIELDMON_2
    const ROUTE12_FIELDMON_3
    const ROUTE12_FIELDMON_4
    const ROUTE12_FIELDMON_5
    const ROUTE12_FIELDMON_6
    const ROUTE12_FIELDMON_7
    const ROUTE12_FIELDMON_8

Route12_MapScripts:
	def_scene_scripts

	def_callbacks
    callback MAPCALLBACK_OBJECTS, .Route12FieldMon

.Route12FieldMon:
; Pokemon which always appear
    appear ROUTE12_FIELDMON_1
    appear ROUTE12_FIELDMON_4
    appear ROUTE12_FIELDMON_5
    appear ROUTE12_FIELDMON_7

; Pokemon that sometimes appear
    random 2
    ifequal 1, .spawn6
    disappear ROUTE12_FIELDMON_3
    sjump .mon7
.spawn6
    appear ROUTE12_FIELDMON_3

.mon7
    random 2
    ifequal 1, .spawn7
    disappear ROUTE12_FIELDMON_6
    sjump .mon8
.spawn7
    appear ROUTE12_FIELDMON_6

.mon8
    random 4 ; shiny
    ifequal 1, .spawn8
    disappear ROUTE12_FIELDMON_8
    sjump .checkNight
.spawn8
    appear ROUTE12_FIELDMON_8

.checkNight
; Pokemon that only appear at night
    checktime NITE
    iffalse .end
    appear ROUTE12_FIELDMON_2
.end
    endcallback

Route12FieldMon1Script:
	trainer POLIWRATH, FIELD_MON, EVENT_FIELD_MON_1, Route12PokemonAttacksText, 42, 0, .script
.script
    disappear ROUTE12_FIELDMON_1
    end

Route12FieldMon2Script:
	trainer ROTOM, FIELD_MON, EVENT_FIELD_MON_2, Route12PokemonAttacksText, 45, 0, .script
.script
    disappear ROUTE12_FIELDMON_2
    end

Route12PokemonAttacksText:
	text "Wild #MON"
	line "attacks!"
	done

Route12FieldMon3Script:
	faceplayer
	cry STARMIE
	pause 15
	loadwildmon STARMIE, 41
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_3
	disappear ROUTE12_FIELDMON_3
	end

Route12FieldMon4Script:
	faceplayer
	cry CLOYSTER
	pause 15
	loadwildmon CLOYSTER, 43
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_4
	disappear ROUTE12_FIELDMON_4
	end

Route12FieldMon5Script:
	faceplayer
	cry VAPOREON
	pause 15
	loadwildmon VAPOREON, 47
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_5
	disappear ROUTE12_FIELDMON_5
	end

Route12FieldMon6Script:
	faceplayer
	cry LANTURN
	pause 15
	loadwildmon LANTURN, 44
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_6
	disappear ROUTE12_FIELDMON_6
	end

Route12FieldMon7Script:
	faceplayer
	cry AMPHAROS
	pause 15
	loadwildmon AMPHAROS, 45
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_7
	disappear ROUTE12_FIELDMON_7
	end

Route12FieldMon8Script:
	faceplayer
	cry STARYU
	pause 15
	loadwildmon STARYU, 35
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_8
	disappear ROUTE12_FIELDMON_8
	end

TrainerFisherKyle:
	trainer FISHER, KYLE, EVENT_BEAT_FISHER_KYLE, FisherKyleSeenText, FisherKyleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherKyleAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherMartin:
	trainer FISHER, MARTIN, EVENT_BEAT_FISHER_MARTIN, FisherMartinSeenText, FisherMartinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherMartinAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherStephen:
	trainer FISHER, STEPHEN, EVENT_BEAT_FISHER_STEPHEN, FisherStephenSeenText, FisherStephenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherStephenAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherBarney:
	trainer FISHER, BARNEY, EVENT_BEAT_FISHER_BARNEY, FisherBarneySeenText, FisherBarneyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherBarneyAfterBattleText
	waitbutton
	closetext
	end

Route12Sign:
	jumptext Route12SignText

FishingSpotSign:
	jumptext FishingSpotSignText

Route12Calcium:
	itemball CALCIUM

Route12Nugget:
	itemball NUGGET

Route12HiddenElixer:
	hiddenitem ELIXER, EVENT_ROUTE_12_HIDDEN_ELIXER

FisherMartinSeenText:
	text "Patience is the"
	line "key to both fish-"
	cont "ing and #MON."
	done

FisherMartinBeatenText:
	text "Gwaaah!"
	done

FisherMartinAfterBattleText:
	text "I'm too impatient"
	line "for fishing…"
	done

FisherStephenSeenText:
	text "I feel so content,"
	line "fishing while lis-"
	cont "tening to some"
	cont "tunes on my radio."
	done

FisherStephenBeatenText:
	text "My stupid radio"
	line "distracted me!"
	done

FisherStephenAfterBattleText:
	text "Have you checked"
	line "out KANTO's radio"

	para "programs? We get a"
	line "good variety here."
	done

FisherBarneySeenText:
	text "What's most impor-"
	line "tant in our every-"
	cont "day lives?"
	done

FisherBarneyBeatenText:
	text "The answer is"
	line "coming up next!"
	done

FisherBarneyAfterBattleText:
	text "I think electric-"
	line "ity is the most"

	para "important thing in"
	line "our daily lives."

	para "If it weren't,"
	line "people wouldn't"

	para "have made such a"
	line "fuss when the"

	para "POWER PLANT went"
	line "out of commission."
	done

FisherKyleSeenText:
	text "Do you remember?"
	done

FisherKyleBeatenText:
	text "You do remember?"
	done

FisherKyleAfterBattleText:
	text "The tug you feel"
	line "on the ROD when"

	para "you hook a #-"
	line "MON…"

	para "That's the best"
	line "feeling ever for"
	cont "an angler like me."
	done

Route12SignText:
	text "ROUTE 12"

	para "NORTH TO LAVENDER"
	line "TOWN"
	done

FishingSpotSignText:
	text "FISHING SPOT"
	done

Route12_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 33, ROUTE_12_SUPER_ROD_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 11, 27, BGEVENT_READ, Route12Sign
	bg_event 13,  9, BGEVENT_READ, FishingSpotSign
	bg_event 14, 13, BGEVENT_ITEM, Route12HiddenElixer

	def_object_events
	object_event  5, 13, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherMartin, -1
	object_event 14, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherStephen, -1
	object_event 10, 38, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerFisherBarney, -1
	object_event  6,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerFisherKyle, -1
	object_event  5, 43, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route12Calcium, EVENT_ROUTE_12_CALCIUM
	object_event  5, 51, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route12Nugget, EVENT_ROUTE_12_NUGGET
	object_event  8, 16, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, Route12FieldMon1Script, EVENT_FIELD_MON_1
	object_event 14, 32, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, NITE, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, Route12FieldMon2Script, EVENT_FIELD_MON_2
	object_event 15, 12, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route12FieldMon3Script, EVENT_FIELD_MON_3
	object_event 12,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route12FieldMon4Script, EVENT_FIELD_MON_4
	object_event 10, 26, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route12FieldMon5Script, EVENT_FIELD_MON_5
	object_event 17, 32, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route12FieldMon6Script, EVENT_FIELD_MON_6
	object_event  8, 32, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route12FieldMon7Script, EVENT_FIELD_MON_7
	object_event 11, 44, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, Route12FieldMon8Script, EVENT_FIELD_MON_8
