	object_const_def
	const ICEPATH1F_POKE_BALL1
	const ICEPATH1F_POKE_BALL2
	const ICEPATH1F_POKE_BALL3
	const ICEPATH1F_FIELDMON_1
    const ICEPATH1F_FIELDMON_2
    const ICEPATH1F_FIELDMON_3

IcePath1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .IcePath1FFieldMon

.IcePath1FFieldMon:
; Pokemon which always appear
    appear ICEPATH1F_FIELDMON_1
    appear ICEPATH1F_FIELDMON_2
    appear ICEPATH1F_FIELDMON_3
    endcallback

IcePath1FFieldMon1Script:
	faceplayer
	cry PILOSWINE
	pause 15
	loadwildmon PILOSWINE, 38
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_1
	disappear ICEPATH1F_FIELDMON_1
	end

IcePath1FFieldMon2Script:
	faceplayer
	cry CLOYSTER
	pause 15
	loadwildmon CLOYSTER, 38
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_2
	disappear ICEPATH1F_FIELDMON_2
	end

IcePath1FFieldMon3Script:
	faceplayer
	cry JYNX
	pause 15
	loadwildmon JYNX, 40
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_3
	disappear ICEPATH1F_FIELDMON_3
	end

IcePath1FHMWaterfall:
	itemball HM_WATERFALL

IcePath1FPPUp:
	itemball PP_UP

IcePath1FChoiceSpecs:
	itemball CHOICE_SPECS

ComputerOne:
    jumptext ComputerOneText

ComputerTwo:
    jumptext ComputerTwoText

ComputerOneText:
    text "Fortress of"
    line "Solitude"
    cont "log:"

    para "A sub-space"
    line "fissure has"
    cont "been detected"
    cont "atop Mt SILVER."

    para "Perhaps a"
    line "gateway to"
    cont "another world."
    done

ComputerTwoText:
    text "He is the"
    line "inevitable"
    cont "eventuality of"
    cont "an anomaly."

    para "which despite my"
    line "sincerest efforts"
    cont "I have been unable"
    cont "to eliminate from"
    cont "what is otherwise"
    cont "a harmony of"
    cont "mathematical"
    cont "precision."

    para "A man with an"
    line "an aura of gold."

    para "Immortal and"
    line "all powerful."

    para "Lord of ARCEUS"
    line "itself."

    para "Should he turn"
    line "on us..."

    para "we are all doomed."
    done

IcePath1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 19, ROUTE_44, 1
	warp_event 36, 27, BLACKTHORN_CITY, 7
	warp_event 37,  5, ICE_PATH_B1F, 1
	warp_event 37, 13, ICE_PATH_B1F, 7

	def_coord_events

	def_bg_events
	bg_event 28, 30, BGEVENT_READ, ComputerOne
	bg_event 30, 30, BGEVENT_READ, ComputerTwo

	def_object_events
	object_event 31,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FHMWaterfall, EVENT_GOT_HM07_WATERFALL
	object_event 32, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FPPUp, EVENT_ICE_PATH_1F_PP_UP
	object_event 31, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FChoiceSpecs, EVENT_ICE_PATH_1F_CHOICE_SPECS
	object_event 27, 19, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 2, IcePath1FFieldMon1Script, EVENT_FIELD_MON_1
	object_event 26,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 2, IcePath1FFieldMon2Script, EVENT_FIELD_MON_2
	object_event 35, 14, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, IcePath1FFieldMon3Script, EVENT_FIELD_MON_3
