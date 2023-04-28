	object_const_def
	const ROUTE6_POKEFAN_M1
	const ROUTE6_POKEFAN_M2
	const ROUTE6_POKEFAN_M3
	const ROUTE6_FIELDMON_1
    const ROUTE6_FIELDMON_2
    const ROUTE6_FIELDMON_3
    const ROUTE6_FIELDMON_4
    const ROUTE6_FIELDMON_5

Route6_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Route6FieldMon

.Route6FieldMon:
; Pokemon which always appear
    appear ROUTE6_FIELDMON_1
    appear ROUTE6_FIELDMON_3
    appear ROUTE6_FIELDMON_4

    random 4
    ifequal 1, .spawn8
    disappear ROUTE6_FIELDMON_5
    sjump .checkNight
.spawn8
    appear ROUTE6_FIELDMON_5

.checkNight
; Pokemon that only appear at night
    checktime NITE
    iffalse .end
    appear ROUTE6_FIELDMON_2
.end
    endcallback

Route6FieldMon1Script:
	trainer PINSIR, FIELD_MON, EVENT_FIELD_MON_1, Route6PokemonAttacksText, 42, 0, .script
.script
    disappear ROUTE6_FIELDMON_1
    end

Route6FieldMon2Script:
	trainer JOLTEON, FIELD_MON, EVENT_FIELD_MON_2, Route6PokemonAttacksText, 44, 0, .script
.script
    disappear ROUTE6_FIELDMON_2
    end

Route6PokemonAttacksText:
	text "Wild #MON"
	line "attacks!"
	done

Route6FieldMon3Script:
	faceplayer
	cry MAGNETON
	pause 15
	loadwildmon MAGNETON, 38
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_3
	disappear ROUTE6_FIELDMON_3
	end

Route6FieldMon4Script:
	faceplayer
	cry VICTREEBEL
	pause 15
	loadwildmon VICTREEBEL, 37
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_4
	disappear ROUTE6_FIELDMON_4
	end

Route6FieldMon5Script:
	faceplayer
	cry ELECTRODE
	pause 15
	loadwildmon ELECTRODE, 40
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_5
	disappear ROUTE6_FIELDMON_5
	end

TrainerPokefanmRex:
	trainer POKEFANM, REX, EVENT_BEAT_POKEFANM_REX, PokefanmRexSeenText, PokefanmRexBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmRexAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmAllan:
	trainer POKEFANM, ALLAN, EVENT_BEAT_POKEFANM_ALLAN, PokefanmAllanSeenText, PokefanmAllanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmAllanAfterBattleText
	waitbutton
	closetext
	end

Route6PokefanMScript:
	jumptextfaceplayer Route6PokefanMText

Route6UndergroundPathSign:
	jumptext Route6UndergroundPathSignText

Route6PokefanMText:
	text "The road is closed"
	line "until the problem"

	para "at the POWER PLANT"
	line "is solved."
	done

Route6UndergroundPathSignText:
	text "UNDERGROUND PATH"

	para "CERULEAN CITY -"
	line "VERMILION CITY"
	done

PokefanmRexSeenText:
	text "My COTTONEE is the"
	line "cutest in the"
	cont "world."
	done

PokefanmRexBeatenText:
	text "My COTTONEE!"
	done

PokefanmRexAfterBattleText:
	text "Look how adorable"
	line "my COTTONEE acts!"

	para "Isn't it cute"
	line "enough to make"
	cont "your heart melt?"
	done

PokefanmAllanSeenText:
	text "My TEDDIURSA is"
	line "the cutest in the"
	cont "world."
	done

PokefanmAllanBeatenText:
	text "My TEDDIURSA!"
	done

PokefanmAllanAfterBattleText:
	text "Look how adorable"
	line "my TEDDIURSA acts!"

	para "Isn't it cute"
	line "enough to make"
	cont "your heart melt?"
	done

Route6_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  3, ROUTE_6_UNDERGROUND_PATH_ENTRANCE, 1
	warp_event  6,  1, ROUTE_6_SAFFRON_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 19,  5, BGEVENT_READ, Route6UndergroundPathSign

	def_object_events
	object_event 17,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 2, Route6PokefanMScript, EVENT_ROUTE_5_6_POKEFAN_M_BLOCKS_UNDERGROUND_PATH
	object_event  9, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerPokefanmRex, -1
	object_event 10, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerPokefanmAllan, -1
	object_event 18,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, Route6FieldMon1Script, EVENT_FIELD_MON_1
	object_event 13, 14, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, NITE, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, Route6FieldMon2Script, EVENT_FIELD_MON_2
	object_event  4,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route6FieldMon3Script, EVENT_FIELD_MON_3
	object_event  4, 12, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route6FieldMon4Script, EVENT_FIELD_MON_4
	object_event  9,  9, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, Route6FieldMon5Script, EVENT_FIELD_MON_5
