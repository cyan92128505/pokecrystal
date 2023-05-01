	object_const_def
	const ROUTE20_SWIMMER_GIRL1
	const ROUTE20_SWIMMER_GIRL2
	const ROUTE20_SWIMMER_GUY
	const ROUTE20_FIELDMON_1
    const ROUTE20_FIELDMON_2
    const ROUTE20_FIELDMON_3
    const ROUTE20_FIELDMON_4
    const ROUTE20_FIELDMON_5
    const ROUTE20_FIELDMON_6
    const ROUTE20_FIELDMON_7
    const ROUTE20_FIELDMON_8

Route20_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .ClearRocks

.ClearRocks:
    appear ROUTE20_FIELDMON_1
    appear ROUTE20_FIELDMON_2
    appear ROUTE20_FIELDMON_3
    appear ROUTE20_FIELDMON_4
    appear ROUTE20_FIELDMON_5
    appear ROUTE20_FIELDMON_6

    random 3
    ifequal 1, .spawn6
    disappear ROUTE20_FIELDMON_7
    sjump .mon7
.spawn6
    appear ROUTE20_FIELDMON_7

.mon7
    random 3
    ifequal 1, .spawn7
    disappear ROUTE20_FIELDMON_8
    sjump .rocks
.spawn7
    appear ROUTE20_FIELDMON_8

.rocks
	setevent EVENT_CINNABAR_ROCKS_CLEARED
	endcallback

Route20FieldMon1Script:
	trainer GYARADOS, FIELD_MON, EVENT_FIELD_MON_1, Route20PokemonAttacksText, 51, 0, .script
.script
    disappear ROUTE20_FIELDMON_1
    end

Route20FieldMon2Script:
	trainer GYARADOS, FIELD_MON, EVENT_FIELD_MON_2, Route20PokemonAttacksText, 54, 0, .script
.script
    disappear ROUTE20_FIELDMON_2
    end

Route20FieldMon3Script:
	trainer TENTACRUEL, FIELD_MON, EVENT_FIELD_MON_3, Route20PokemonAttacksText, 51, 0, .script
.script
    disappear ROUTE20_FIELDMON_3
    end

Route20FieldMon4Script:
	trainer TENTACRUEL, FIELD_MON, EVENT_FIELD_MON_4, Route20PokemonAttacksText, 52, 0, .script
.script
    disappear ROUTE20_FIELDMON_4
    end

Route20FieldMon5Script:
	trainer ARCTOVISH, FIELD_MON, EVENT_FIELD_MON_5, Route20PokemonAttacksText, 54, 0, .script
.script
    disappear ROUTE20_FIELDMON_5
    end

Route20FieldMon6Script:
	trainer ARCTOVISH, FIELD_MON, EVENT_FIELD_MON_6, Route20PokemonAttacksText, 53, 0, .script
.script
    disappear ROUTE20_FIELDMON_6
    end

Route20PokemonAttacksText:
	text "Wild #MON"
	line "attacks!"
	done

Route20FieldMon7Script:
	faceplayer
	cry CLOYSTER
	pause 15
	loadwildmon CLOYSTER, 50
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_7
	disappear ROUTE20_FIELDMON_7
	end

Route20FieldMon8Script:
	faceplayer
	cry LAPRAS
	pause 15
	loadwildmon ARCTOVISH, 50
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_8
	disappear ROUTE20_FIELDMON_8
	end

TrainerSwimmerfNicole:
	trainer SWIMMERF, NICOLE, EVENT_BEAT_SWIMMERF_NICOLE, SwimmerfNicoleSeenText, SwimmerfNicoleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfNicoleAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfLori:
	trainer SWIMMERF, LORI, EVENT_BEAT_SWIMMERF_LORI, SwimmerfLoriSeenText, SwimmerfLoriBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfLoriAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermCameron:
	trainer SWIMMERM, CAMERON, EVENT_BEAT_SWIMMERM_CAMERON, SwimmermCameronSeenText, SwimmermCameronBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermCameronAfterBattleText
	waitbutton
	closetext
	end

CinnabarGymSign:
	jumptext CinnabarGymSignText

SwimmerfNicoleSeenText:
	text "I feel so much"
	line "lighter in water."
	done

SwimmerfNicoleBeatenText:
	text "Oh, no!"
	done

SwimmerfNicoleAfterBattleText:
	text "Swimming exercises"
	line "your full body."

	para "It's really good"
	line "for you."
	done

SwimmerfLoriSeenText:
	text "What an impressive"
	line "collection of GYM"

	para "BADGES. We should"
	line "battle!"
	done

SwimmerfLoriBeatenText:
	text "No!"
	done

SwimmerfLoriAfterBattleText:
	text "SURF is no longer"
	line "the only HM move"
	cont "you use in water."
	done

SwimmermCameronSeenText:
	text "I guess it's im-"
	line "possible to swim"

	para "all the way to"
	line "JOHTO."
	done

SwimmermCameronBeatenText:
	text "Aiyah!"
	done

SwimmermCameronAfterBattleText:
	text "Besides the sea, I"
	line "can also swim in"
	cont "ponds and rivers."
	done

CinnabarGymSignText:
	text "What does this"
	line "sign say?"

	para "CINNABAR GYM"
	line "LEADER: BLAINE"
	done

Route20_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 38,  7, SEAFOAM_GYM, 1
	warp_event 42, 11, ELEMENT_CAVE, 2

	def_coord_events

	def_bg_events
	bg_event 37, 11, BGEVENT_READ, CinnabarGymSign

	def_object_events
	object_event 52,  8, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfNicole, -1
	object_event 49, 13, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfLori, -1
	object_event 12, 13, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermCameron, -1
	object_event 16, 15, SPRITE_SURF, SPRITEMOVEDATA_SPINRANDOM_FAST, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 4, Route20FieldMon1Script, EVENT_FIELD_MON_1
	object_event 18,  4, SPRITE_SURF, SPRITEMOVEDATA_SPINRANDOM_FAST, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 4, Route20FieldMon2Script, EVENT_FIELD_MON_2
	object_event 54,  6, SPRITE_SURF, SPRITEMOVEDATA_SPINRANDOM_FAST, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 4, Route20FieldMon3Script, EVENT_FIELD_MON_3
	object_event  6,  6, SPRITE_SURF, SPRITEMOVEDATA_SPINRANDOM_FAST, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 4, Route20FieldMon4Script, EVENT_FIELD_MON_4
	object_event  4, 14, SPRITE_SURF, SPRITEMOVEDATA_SPINRANDOM_FAST, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 4, Route20FieldMon5Script, EVENT_FIELD_MON_5
	object_event 54, 14, SPRITE_SURF, SPRITEMOVEDATA_SPINRANDOM_FAST, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 4, Route20FieldMon6Script, EVENT_FIELD_MON_6
	object_event 50,  3, SPRITE_SURF, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, Route20FieldMon7Script, EVENT_FIELD_MON_7
	object_event 20, 15, SPRITE_SURF, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, Route20FieldMon8Script, EVENT_FIELD_MON_8
