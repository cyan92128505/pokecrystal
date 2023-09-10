	object_const_def
	const DIGLETTSCAVE_POKEFAN_M
	const DIGLETTSCAVE_FIELDMON_1
    const DIGLETTSCAVE_FIELDMON_2
    const DIGLETTSCAVE_FIELDMON_3
    const DIGLETTSCAVE_FIELDMON_4
    const DIGLETTSCAVE_FIELDMON_5
    const DIGLETTSCAVE_FIELDMON_6
    const DIGLETTSCAVE_POKEBALL

DiglettsCave_MapScripts:
	def_scene_scripts

	def_callbacks
    callback MAPCALLBACK_OBJECTS, .DiglettsCaveFieldMon

.DiglettsCaveFieldMon:
; Pokemon which always appear
    appear DIGLETTSCAVE_FIELDMON_1
    appear DIGLETTSCAVE_FIELDMON_2
    appear DIGLETTSCAVE_FIELDMON_3
    appear DIGLETTSCAVE_FIELDMON_4
    appear DIGLETTSCAVE_FIELDMON_5
    appear DIGLETTSCAVE_FIELDMON_6
    endcallback

DiglettsCavePokefanMScript:
	jumptextfaceplayer DiglettsCavePokefanMText

DiglettsCaveHiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_DIGLETTS_CAVE_HIDDEN_MAX_REVIVE

DiglettsCavePokefanMText:
	text "A bunch of DIGLETT"
	line "popped out of the"

	para "ground! That was"
	line "shocking."
	done
	
DiglettsCaveFieldMon1Script:
	trainer ONIX, FIELD_MON, EVENT_FIELD_MON_1, DiglettsCavePokemonAttacksText, 44, 0, .script
.script
    disappear DIGLETTSCAVE_FIELDMON_1
    end

DiglettsCaveFieldMon2Script:
	trainer PUPITAR, FIELD_MON, EVENT_FIELD_MON_2, DiglettsCavePokemonAttacksText, 46, 0, .script
.script
    disappear DIGLETTSCAVE_FIELDMON_2
    end

DiglettsCaveFieldMon3Script:
	trainer GABITE, FIELD_MON, EVENT_FIELD_MON_3, DiglettsCavePokemonAttacksText, 46, 0, .script
.script
    disappear DIGLETTSCAVE_FIELDMON_3
    end

DiglettsCaveFieldMon4Script:
	trainer MAROWAK, FIELD_MON, EVENT_FIELD_MON_4, DiglettsCavePokemonAttacksText, 47, 0, .script
.script
    disappear DIGLETTSCAVE_FIELDMON_4
    end

DiglettsCaveFieldMon5Script:
	trainer EXCADRILL, FIELD_MON, EVENT_FIELD_MON_5, DiglettsCavePokemonAttacksText, 48, 0, .script
.script
    disappear DIGLETTSCAVE_FIELDMON_5
    end
    
DiglettsCaveFieldMon6Script:
	faceplayer
	cry STEELIX
	pause 15
	loadwildmon STEELIX, 71
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_2
	disappear DIGLETTSCAVE_FIELDMON_6
	end

DiglettsCavePokemonAttacksText:
	text "Wild #MON"
	line "attacks!"
	done

DiglettsCaveMuscleBand:
	itemball MUSCLE_BAND

DiglettsCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 33, VERMILION_CITY, 10
	warp_event  5, 31, DIGLETTS_CAVE, 5
	warp_event 15,  5, ROUTE_2, 5
	warp_event 17,  3, DIGLETTS_CAVE, 6
	warp_event 17, 33, DIGLETTS_CAVE, 2
	warp_event  3,  3, DIGLETTS_CAVE, 4

	def_coord_events

	def_bg_events
	bg_event  6, 11, BGEVENT_ITEM, DiglettsCaveHiddenMaxRevive

	def_object_events
	object_event  3, 31, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DiglettsCavePokefanMScript, -1
	object_event 12, 19, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, DiglettsCaveFieldMon1Script, EVENT_FIELD_MON_1
	object_event 15, 29, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, DiglettsCaveFieldMon2Script, EVENT_FIELD_MON_2
	object_event  2,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, DiglettsCaveFieldMon3Script, EVENT_FIELD_MON_3
	object_event  6, 14, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, DiglettsCaveFieldMon4Script, EVENT_FIELD_MON_4
	object_event 14, 22, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, DiglettsCaveFieldMon5Script, EVENT_FIELD_MON_5
	object_event  9, 17, SPRITE_BIG_ONIX, SPRITEMOVEDATA_BIGDOLLSYM, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 2, DiglettsCaveFieldMon6Script, EVENT_FIELD_MON_6
	object_event  3, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DiglettsCaveMuscleBand, EVENT_DIGLETTS_CAVE_MUSCLE_BAND

