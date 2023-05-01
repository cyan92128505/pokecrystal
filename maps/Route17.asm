	object_const_def
	const ROUTE17_BIKER1
	const ROUTE17_BIKER2
	const ROUTE17_BIKER3
	const ROUTE17_BIKER4
	const ROUTE17_FIELDMON_1
    const ROUTE17_FIELDMON_2
    const ROUTE17_FIELDMON_3
    const ROUTE17_FIELDMON_4
    const ROUTE17_FIELDMON_5
    const ROUTE17_FIELDMON_6
    const ROUTE17_FIELDMON_7
    const ROUTE17_FIELDMON_8

Route17_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .AlwaysOnBike

.AlwaysOnBike:
    appear ROUTE17_FIELDMON_1
    appear ROUTE17_FIELDMON_2
    appear ROUTE17_FIELDMON_3
    appear ROUTE17_FIELDMON_4
    appear ROUTE17_FIELDMON_5
    appear ROUTE17_FIELDMON_6
    appear ROUTE17_FIELDMON_7
    appear ROUTE17_FIELDMON_8

	setflag ENGINE_ALWAYS_ON_BIKE
	setflag ENGINE_DOWNHILL
	endcallback

Route17FieldMon1Script:
	trainer LOPUNNY, FIELD_MON, EVENT_FIELD_MON_1, Route17PokemonAttacksText, 50, 0, .script
.script
    disappear ROUTE17_FIELDMON_1
    end

Route17FieldMon2Script:
	trainer BISHARP, FIELD_MON, EVENT_FIELD_MON_2, Route17PokemonAttacksText, 51, 0, .script
.script
    disappear ROUTE17_FIELDMON_2
    end

Route17FieldMon3Script:
	trainer MACHAMP, FIELD_MON, EVENT_FIELD_MON_3, Route17PokemonAttacksText, 52, 0, .script
.script
    disappear ROUTE17_FIELDMON_3
    end

Route17FieldMon4Script:
	trainer CONKELDURR, FIELD_MON, EVENT_FIELD_MON_4, Route17PokemonAttacksText, 52, 0, .script
.script
    disappear ROUTE17_FIELDMON_4
    end

Route17FieldMon5Script:
	trainer HOUNDOOM, FIELD_MON, EVENT_FIELD_MON_5, Route17PokemonAttacksText, 53, 0, .script
.script
    disappear ROUTE17_FIELDMON_5
    end

Route17FieldMon6Script:
	trainer HONCHKROW, FIELD_MON, EVENT_FIELD_MON_6, Route17PokemonAttacksText, 54, 0, .script
.script
    disappear ROUTE17_FIELDMON_6
    end

Route17FieldMon7Script:
	trainer ARCANINE, FIELD_MON, EVENT_FIELD_MON_7, Route17PokemonAttacksText, 55, 0, .script
.script
    disappear ROUTE17_FIELDMON_7
    end

Route17PokemonAttacksText:
	text "Wild #MON"
	line "attacks!"
	done

Route17FieldMon8Script:
	faceplayer
	cry CHARIZARD
	pause 15
	loadwildmon CHARIZARD, 65
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT_ESCAPE
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_8
	disappear ROUTE17_FIELDMON_8
	end

TrainerBikerCharles:
	trainer BIKER, CHARLES, EVENT_BEAT_BIKER_CHARLES, BikerCharlesSeenText, BikerCharlesBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerCharlesAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerRiley:
	trainer BIKER, RILEY, EVENT_BEAT_BIKER_RILEY, BikerRileySeenText, BikerRileyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerRileyAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerJoel:
	trainer BIKER, JOEL, EVENT_BEAT_BIKER_JOEL, BikerJoelSeenText, BikerJoelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerJoelAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerGlenn:
	trainer BIKER, GLENN, EVENT_BEAT_BIKER_GLENN, BikerGlennSeenText, BikerGlennBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerGlennAfterBattleText
	waitbutton
	closetext
	end

Route17HiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_17_HIDDEN_MAX_ETHER

Route17HiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_ROUTE_17_HIDDEN_MAX_ELIXER

BikerRileySeenText:
	text "Hey, you! You're"
	line "from JOHTO, huh?"
	done

BikerRileyBeatenText:
	text "Whoa, you kick!"
	done

BikerRileyAfterBattleText:
	text "Don't get cocky,"
	line "you JOHTO punk!"
	done

BikerJoelSeenText:
	text "Wow. That's a cool"
	line "BICYCLE!"
	done

BikerJoelBeatenText:
	text "But you don't just"
	line "look cool…"
	done

BikerJoelAfterBattleText:
	text "I look cool, but"
	line "I'm weak, so I'm"
	cont "not really cool."

	para "I have to train"
	line "harder…"
	done

BikerGlennSeenText:
	text "Hey! Want to have"
	line "a speed battle?"
	done

BikerGlennBeatenText:
	text "Yikes! You've got"
	line "awesome torque!"
	done

BikerGlennAfterBattleText:
	text "Hands-free riding"
	line "is considered cool"
	cont "on CYCLING ROAD."
	done

BikerCharlesSeenText:
	text "We're fearless"
	line "highway stars!"
	done

BikerCharlesBeatenText:
	text "Arrrgh! Crash and"
	line "burn!"
	done

BikerCharlesAfterBattleText:
	text "Reckless driving"
	line "causes accidents!"
	cont "Take it easy!"
	done

Route17_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 82, ROUTE_17_ROUTE_18_GATE, 1
	warp_event 17, 83, ROUTE_17_ROUTE_18_GATE, 2

	def_coord_events

	def_bg_events
	bg_event  9, 54, BGEVENT_ITEM, Route17HiddenMaxEther
	bg_event  8, 77, BGEVENT_ITEM, Route17HiddenMaxElixer

	def_object_events
	object_event  4, 17, SPRITE_BIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerRiley, -1
	object_event  9, 68, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBikerJoel, -1
	object_event  3, 53, SPRITE_BIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerGlenn, -1
	object_event  6, 80, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerCharles, -1
	object_event  9, 35, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 4, Route17FieldMon1Script, EVENT_FIELD_MON_1
	object_event  8, 11, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 4, Route17FieldMon2Script, EVENT_FIELD_MON_2
	object_event 17, 35, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 4, Route17FieldMon3Script, EVENT_FIELD_MON_3
	object_event  2, 35, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 4, Route17FieldMon4Script, EVENT_FIELD_MON_4
	object_event  2, 56, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 4, Route17FieldMon5Script, EVENT_FIELD_MON_5
	object_event 16, 59, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 4, Route17FieldMon6Script, EVENT_FIELD_MON_6
	object_event  9, 78, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 4, Route17FieldMon7Script, EVENT_FIELD_MON_7
	object_event 14, 82, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route17FieldMon8Script, EVENT_FIELD_MON_8
