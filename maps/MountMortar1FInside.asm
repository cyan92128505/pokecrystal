	object_const_def
	const MOUNTMORTAR1FINSIDE_BOULDER
	const MOUNTMORTAR1FINSIDE_POKE_BALL1
	const MOUNTMORTAR1FINSIDE_POKE_BALL2
	const MOUNTMORTAR1FINSIDE_POKE_BALL3
	const MOUNTMORTAR1FINSIDE_POKE_BALL4
	const MOUNTMORTAR1FINSIDE_POKE_BALL5
	const MOUNTMORTAR1FINSIDE_SUPER_NERD1
	const MOUNTMORTAR1FINSIDE_SUPER_NERD2
	const MOUNTMORTAR1FINSIDE_FIELDMON_1
    const MOUNTMORTAR1FINSIDE_FIELDMON_2
    const MOUNTMORTAR1FINSIDE_FIELDMON_3
    const MOUNTMORTAR1FINSIDE_FIELDMON_4
    const MOUNTMORTAR1FINSIDE_FIELDMON_5
    const MOUNTMORTAR1FINSIDE_FIELDMON_6
    const MOUNTMORTAR1FINSIDE_FIELDMON_7
    const MOUNTMORTAR1FINSIDE_FIELDMON_8


MountMortar1FInside_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .MountMortar1FInsideFieldMon

.MountMortar1FInsideFieldMon:
; Pokemon which always appear
    appear MOUNTMORTAR1FINSIDE_FIELDMON_1
    appear MOUNTMORTAR1FINSIDE_FIELDMON_2
    appear MOUNTMORTAR1FINSIDE_FIELDMON_3
    appear MOUNTMORTAR1FINSIDE_FIELDMON_4
    appear MOUNTMORTAR1FINSIDE_FIELDMON_5

; Pokemon that sometimes appear
    random 2
    ifequal 1, .spawn6
    disappear MOUNTMORTAR1FINSIDE_FIELDMON_6
    sjump .mon7
.spawn6
    appear MOUNTMORTAR1FINSIDE_FIELDMON_6

.mon7
    random 2
    ifequal 1, .spawn7
    disappear MOUNTMORTAR1FINSIDE_FIELDMON_7
    sjump .mon8
.spawn7
    appear MOUNTMORTAR1FINSIDE_FIELDMON_7

.mon8
    random 4 ; shiny
    ifequal 1, .spawn8
    disappear MOUNTMORTAR1FINSIDE_FIELDMON_8
    sjump .end
.spawn8
    appear MOUNTMORTAR1FINSIDE_FIELDMON_8

.end
    endcallback

TrainerPokemaniacMiller:
	trainer POKEMANIAC, MILLER, EVENT_BEAT_POKEMANIAC_MILLER, PokemaniacMillerSeenText, PokemaniacMillerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacMillerAfterBattleText
	waitbutton
	closetext
	end

TrainerSupernerdMarkus:
	trainer SUPER_NERD, MARKUS, EVENT_BEAT_SUPER_NERD_MARKUS, SupernerdMarkusSeenText, SupernerdMarkusBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdMarkusAfterBattleText
	waitbutton
	closetext
	end

MountMortar1FBoulder:
	jumpstd StrengthBoulderScript

MountMortar1FInsideEscapeRope:
	itemball HP_UP

MountMortar1FInsideMaxRevive:
	itemball MAX_REVIVE

MountMortar1FInsideHyperPotion:
	itemball HYPER_POTION

MountMortar1FInsideMaxPotion:
	itemball MAX_POTION

MountMortar1FInsideNugget:
	itemball NUGGET

MountMortar1FInsideIron:
	itemball IRON

MountMortar1FInsideUltraBall:
	itemball ULTRA_BALL

MountMortar1FInsideHiddenMaxRepel:
	hiddenitem MAX_REPEL, EVENT_MOUNT_MORTAR_1F_INSIDE_HIDDEN_MAX_REPEL

PokemaniacMillerSeenText:
	text "I'm not losing"
	line "this time!"
	done

PokemaniacMillerBeatenText:
	text "I lost to some"
	line "kid…?"
	done

PokemaniacMillerAfterBattleText:
	text "A while back, this"
	line "karate dude wanted"

	para "to battle. He was"
	line "ridiculously good."

	para "He just thrashed"
	line "us silly."

	para "He went in deeper"
	line "saying it was for"

	para "his training. I"
	line "wonder how he is?"
	done

SupernerdMarkusSeenText:
	text "Hey! HUGH!"
	done

SupernerdMarkusBeatenText:
	text "I mistook you for"
	line "someone else…"
	done

SupernerdMarkusAfterBattleText:
	text "I came to explore"
	line "MT.MORTAR, but I"

	para "got separated from"
	line "my partner…"

	para "Did you run into a"
	line "trainer who uses a"

	para "SEADRA that knows"
	line "WATERFALL?"
	done

MountMortar1FInsideFieldMon1Script:
	trainer GOLBAT, FIELD_MON, EVENT_FIELD_MON_1, MountMortar1FInsidePokemonAttacksText, 30, 0, .script
.script
    disappear MOUNTMORTAR1FINSIDE_FIELDMON_1
    end

MountMortar1FInsideFieldMon2Script:
	trainer GRAVELER, FIELD_MON, EVENT_FIELD_MON_2, MountMortar1FInsidePokemonAttacksText, 32, 0, .script
.script
    disappear MOUNTMORTAR1FINSIDE_FIELDMON_2
    end

MountMortar1FInsideFieldMon3Script:
	trainer MACHOKE, FIELD_MON, EVENT_FIELD_MON_3, MountMortar1FInsidePokemonAttacksText, 31, 0, .script
.script
    disappear MOUNTMORTAR1FINSIDE_FIELDMON_3
    end

MountMortar1FInsideFieldMon4Script:
	trainer GURDURR, FIELD_MON, EVENT_FIELD_MON_4, MountMortar1FInsidePokemonAttacksText, 31, 0, .script
.script
    disappear MOUNTMORTAR1FINSIDE_FIELDMON_4
    end

MountMortar1FInsideFieldMon5Script:
	trainer ONIX, FIELD_MON, EVENT_FIELD_MON_5, MountMortar1FInsidePokemonAttacksText, 33, 0, .script
.script
    disappear MOUNTMORTAR1FINSIDE_FIELDMON_5
    end

MountMortar1FInsidePokemonAttacksText:
	text "Wild #MON"
	line "attacks!"
	done

MountMortar1FInsideFieldMon6Script:
	faceplayer
	cry CONKELDURR
	pause 15
	loadwildmon CONKELDURR, 52
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_6
	disappear MOUNTMORTAR1FINSIDE_FIELDMON_6
	end

MountMortar1FInsideFieldMon7Script:
	faceplayer
	cry MACHAMP
	pause 15
	loadwildmon MACHAMP, 52
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_7
	disappear MOUNTMORTAR1FINSIDE_FIELDMON_7
	end

MountMortar1FInsideFieldMon8Script:
	faceplayer
	cry MAGMAR
	pause 15
	loadwildmon MAGMAR, 30
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_8
	disappear MOUNTMORTAR1FINSIDE_FIELDMON_8
	end

MountMortar1FInside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 47, MOUNT_MORTAR_1F_OUTSIDE, 5
	warp_event 29, 47, MOUNT_MORTAR_1F_OUTSIDE, 6
	warp_event  5, 39, MOUNT_MORTAR_1F_OUTSIDE, 8
	warp_event 33, 41, MOUNT_MORTAR_1F_OUTSIDE, 9
	warp_event  3, 19, MOUNT_MORTAR_B1F, 1
	warp_event  9,  9, MOUNT_MORTAR_2F_INSIDE, 2

	def_coord_events

	def_bg_events
	bg_event 30, 11, BGEVENT_ITEM, MountMortar1FInsideHiddenMaxRepel

	def_object_events
	object_event 21, 43, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMortar1FBoulder, -1
	object_event 35, 38, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideEscapeRope, EVENT_MOUNT_MORTAR_1F_INSIDE_ESCAPE_ROPE
	object_event 16, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideMaxRevive, EVENT_MOUNT_MORTAR_1F_INSIDE_MAX_REVIVE
	object_event 10, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideHyperPotion, EVENT_MOUNT_MORTAR_1F_INSIDE_HYPER_POTION
	object_event 22, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideMaxPotion, EVENT_MOUNT_MORTAR_1F_INSIDE_MAX_POTION
	object_event 35, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideNugget, EVENT_MOUNT_MORTAR_1F_INSIDE_NUGGET
	object_event 33, 43, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacMiller, -1
	object_event 24, 28, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerSupernerdMarkus, -1
	object_event 20, 45, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, MountMortar1FInsideFieldMon1Script, EVENT_FIELD_MON_1
	object_event 16, 31, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, MountMortar1FInsideFieldMon2Script, EVENT_FIELD_MON_2
	object_event 27, 40, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, MountMortar1FInsideFieldMon3Script, EVENT_FIELD_MON_3
	object_event 21, 27, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, MountMortar1FInsideFieldMon4Script, EVENT_FIELD_MON_4
	object_event 12, 26, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, MountMortar1FInsideFieldMon5Script, EVENT_FIELD_MON_5
	object_event 16, 18, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MountMortar1FInsideFieldMon6Script, EVENT_FIELD_MON_6
	object_event 31, 29, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MountMortar1FInsideFieldMon7Script, EVENT_FIELD_MON_7
	object_event 31, 17, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, MountMortar1FInsideFieldMon8Script, EVENT_FIELD_MON_8
