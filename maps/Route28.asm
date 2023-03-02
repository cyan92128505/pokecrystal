	object_const_def
	const ROUTE28_LATIOS

Route28_MapScripts:
	def_scene_scripts

	def_callbacks

LatiosScript:
	faceplayer
	opentext
	writetext LatiosCry
	cry LATIOS
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon LATIOS, 70
	startbattle
	reloadmapafterbattle
    setval LATIOS
	special MonCheck
	iftrue .caught
	end
.caught
    setevent EVENT_CAUGHT_LATIOS
	disappear ROUTE28_LATIOS
	end

LatiosCry:
    text "...."

    para "...."

    para "...."
    done

Route28Sign:
	jumptext Route28SignText

Route28HiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_ROUTE_28_HIDDEN_RARE_CANDY

Route28SignText:
	text "ROUTE 28"
	done

Route28_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  3, ROUTE_28_STEEL_WING_HOUSE, 1
	warp_event 33,  5, VICTORY_ROAD_GATE, 7

	def_coord_events

	def_bg_events
	bg_event 31,  5, BGEVENT_READ, Route28Sign
	bg_event 25,  2, BGEVENT_ITEM, Route28HiddenRareCandy

	def_object_events
	object_event 17,  6, SPRITE_RED, SPRITEMOVEDATA_WANDER, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LatiosScript, EVENT_CAUGHT_LATIOS
