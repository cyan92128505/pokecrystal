	object_const_def
	const DARKCAVEVIOLETENTRANCE_POKE_BALL1
	const DARKCAVEVIOLETENTRANCE_ROCK1
	const DARKCAVEVIOLETENTRANCE_ROCK2
	const DARKCAVEVIOLETENTRANCE_ROCK3
	const DARKCAVEVIOLETENTRANCE_POKE_BALL2
	const DARKCAVEVIOLETENTRANCE_POKE_BALL3
	const DARKCAVEVIOLETENTRANCE_POKE_BALL4
	const DARKCAVEVIOLETENTRANCE_FIELDMON_1
	const DARKCAVEVIOLETENTRANCE_FIELDMON_2
    const DARKCAVEVIOLETENTRANCE_FIELDMON_3
    const DARKCAVEVIOLETENTRANCE_FIELDMON_4

DarkCaveVioletEntrance_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .DarkCaveVioletEntranceFieldMon

.DarkCaveVioletEntranceFieldMon:
    appear DARKCAVEVIOLETENTRANCE_FIELDMON_1
    appear DARKCAVEVIOLETENTRANCE_FIELDMON_2
    appear DARKCAVEVIOLETENTRANCE_FIELDMON_3
    appear DARKCAVEVIOLETENTRANCE_FIELDMON_4
    endcallback

DarkCaveVioletEntrancePotion:
	itemball RED_EYE_ORB

DarkCaveVioletEntranceFullHeal:
	itemball FULL_HEAL

DarkCaveVioletEntranceHyperPotion:
	itemball HYPER_POTION

DarkCaveVioletEntranceDireHit:
	itemball RARE_CANDY

DarkCaveVioletEntranceRock:
	jumpstd SmashRockScript

DarkCaveVioletEntranceHiddenElixer:
	hiddenitem ELIXER, EVENT_DARK_CAVE_VIOLET_ENTRANCE_HIDDEN_ELIXER

DarkCaveVioletEntranceFieldMon1Script:
	trainer BISHARP, FIELD_MON, EVENT_FIELD_MON_1, DarkCaveVioletEntrancePokemonAttacksText, 42, 0, .script
.script
    disappear DARKCAVEVIOLETENTRANCE_FIELDMON_1
    end

DarkCaveVioletEntranceFieldMon2Script:
	trainer HOUNDOUR, FIELD_MON, EVENT_FIELD_MON_2, DarkCaveVioletEntrancePokemonAttacksText, 22, 0, .script
.script
    disappear DARKCAVEVIOLETENTRANCE_FIELDMON_2
    end

DarkCaveVioletEntranceFieldMon3Script:
	trainer UMBREON, FIELD_MON, EVENT_FIELD_MON_3, DarkCaveVioletEntrancePokemonAttacksText, 24, 0, .script
.script
    disappear DARKCAVEVIOLETENTRANCE_FIELDMON_3
    end

DarkCaveVioletEntranceFieldMon4Script:
	trainer MISDREAVUS, FIELD_MON, EVENT_FIELD_MON_4, DarkCaveVioletEntrancePokemonAttacksText, 25, 0, .script
.script
    disappear DARKCAVEVIOLETENTRANCE_FIELDMON_4
    end

DarkCaveVioletEntrancePokemonAttacksText:
	text "Wild #MON"
	line "attacks!"
	done

DarkCaveVioletEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 15, ROUTE_31, 3
	warp_event 17,  1, DARK_CAVE_BLACKTHORN_ENTRANCE, 2
	warp_event 35, 33, ROUTE_46, 3

	def_coord_events

	def_bg_events
	bg_event 26,  3, BGEVENT_ITEM, DarkCaveVioletEntranceHiddenElixer

	def_object_events
	object_event  7, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntrancePotion, EVENT_DARK_CAVE_RED_EYE_ORB
	object_event 16, 14, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	object_event 27,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	object_event  7, 14, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	object_event 36, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceFullHeal, EVENT_DARK_CAVE_VIOLET_ENTRANCE_FULL_HEAL
	object_event 35,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceHyperPotion, EVENT_DARK_CAVE_VIOLET_ENTRANCE_HYPER_POTION
	object_event 30, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceDireHit, EVENT_DARK_CAVE_VIOLET_ENTRANCE_DIRE_HIT
	object_event  8,  7, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, DarkCaveVioletEntranceFieldMon1Script, EVENT_FIELD_MON_1
	object_event 34, 14, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, DarkCaveVioletEntranceFieldMon2Script, EVENT_FIELD_MON_2
	object_event 26,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, DarkCaveVioletEntranceFieldMon3Script, EVENT_FIELD_MON_3
	object_event 17,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, DarkCaveVioletEntranceFieldMon4Script, EVENT_FIELD_MON_4


