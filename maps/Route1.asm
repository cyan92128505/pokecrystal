	object_const_def
	const ROUTE1_YOUNGSTER
	const ROUTE1_COOLTRAINER_F
	const ROUTE1_FRUIT_TREE
	const ROUTE1_FIELDMON_1
    const ROUTE1_FIELDMON_2
    const ROUTE1_FIELDMON_3
    const ROUTE1_FIELDMON_4
    const ROUTE1_FIELDMON_5
    const ROUTE1_FIELDMON_6

Route1_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Route1FieldMon

.Route1FieldMon:
; Pokemon which always appear
    appear ROUTE1_FIELDMON_1
    appear ROUTE1_FIELDMON_3
    appear ROUTE1_FIELDMON_4
    appear ROUTE1_FIELDMON_5

    random 3 ; shiny
    ifequal 1, .spawn8
    disappear ROUTE1_FIELDMON_6
    sjump .checkNight
.spawn8
    appear ROUTE1_FIELDMON_6

.checkNight
; Pokemon that only appear at night
    checktime NITE
    iffalse .end

    appear ROUTE1_FIELDMON_2

; Pokemon that don't appear at night
    disappear ROUTE1_FIELDMON_5

.end
    endcallback

Route1FieldMon1Script:
	trainer PERSIAN, FIELD_MON, EVENT_FIELD_MON_1, Route1PokemonAttacksText, 21, 0, .script
.script
    disappear ROUTE1_FIELDMON_1
    end

Route1FieldMon2Script:
	trainer RATICATE, FIELD_MON, EVENT_FIELD_MON_2, Route1PokemonAttacksText, 40, 0, .script
.script
    disappear ROUTE1_FIELDMON_2
    end

Route1PokemonAttacksText:
	text "Wild #MON"
	line "attacks!"
	done

Route1FieldMon3Script:
	faceplayer
	cry RATTATA
	pause 15
	loadwildmon RATTATA, 6
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_3
	disappear ROUTE1_FIELDMON_3
	end

Route1FieldMon4Script:
	faceplayer
	cry STARLY
	pause 15
	loadwildmon STARLY, 4
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_4
	disappear ROUTE1_FIELDMON_4
	end

Route1FieldMon5Script:
	faceplayer
	cry EEVEE
	pause 15
	loadwildmon EEVEE, 5
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_5
	disappear ROUTE1_FIELDMON_5
	end

Route1FieldMon6Script:
	faceplayer
	cry PIKACHU
	pause 15
	loadwildmon PIKACHU, 5
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_6
	disappear ROUTE1_FIELDMON_6
	end

TrainerSchoolboyDanny:
	trainer SCHOOLBOY, DANNY, EVENT_BEAT_SCHOOLBOY_DANNY, SchoolboyDannySeenText, SchoolboyDannyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyDannyAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfQuinn:
	trainer COOLTRAINERF, QUINN, EVENT_BEAT_COOLTRAINERF_QUINN, CooltrainerfQuinnSeenText, CooltrainerfQuinnBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfQuinnAfterBattleText
	waitbutton
	closetext
	end

Route1Sign:
	jumptext Route1SignText

Route1FruitTree:
	fruittree FRUITTREE_ROUTE_1

SchoolboyDannySeenText:
	text "If trainers meet,"
	line "the first thing to"
	cont "do is battle."
	done

SchoolboyDannyBeatenText:
	text "Awww… I've got a"
	line "losing record…"
	done

SchoolboyDannyAfterBattleText:
	text "For trainers, it's"
	line "a given that we'll"

	para "battle whenever we"
	line "meet."
	done

CooltrainerfQuinnSeenText:
	text "You there!"
	line "Want to battle?"
	done

CooltrainerfQuinnBeatenText:
	text "Down and out…"
	done

CooltrainerfQuinnAfterBattleText:
	text "You're strong."

	para "You obviously must"
	line "have trained hard."
	done

Route1SignText:
	text "ROUTE 1"

	para "PALLET TOWN -"
	line "VIRIDIAN CITY"
	done

Route1_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  7, 27, BGEVENT_READ, Route1Sign

	def_object_events
	object_event  4, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSchoolboyDanny, -1
	object_event  9, 25, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerfQuinn, -1
	object_event  3,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route1FruitTree, -1
	object_event  3, 15, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, Route1FieldMon1Script, EVENT_FIELD_MON_1
	object_event 14,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, NITE, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, Route1FieldMon2Script, EVENT_FIELD_MON_2
	object_event  5, 28, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route1FieldMon3Script, EVENT_FIELD_MON_3
	object_event 10, 15, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route1FieldMon4Script, EVENT_FIELD_MON_4
	object_event  5,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, DAY, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route1FieldMon5Script, EVENT_FIELD_MON_5
	object_event 14, 29, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, Route1FieldMon6Script, EVENT_FIELD_MON_6
