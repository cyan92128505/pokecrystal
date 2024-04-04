	object_const_def
	const ROUTE2GATE_SCIENTIST
	const ROUTE2GATE_KIM

Route2Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route2GateScientistScript:
	jumptextfaceplayer Route2GateScientistText

Route2GateScientistText:
	text "The commoners"
	line "don't understand."
	para "The real crime"
	line "would be not to"
	cont "finish what we"
	cont "have started."
	para "But the lab, it's"
	line "sealed off, and"
	cont "for good reason."
	done

Kim:
	faceplayer
	opentext
	trade NPC_TRADE_KIM
	waitbutton
	closetext
	end

Route2Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_2, 3
	warp_event  5,  0, ROUTE_2, 4
	warp_event  4,  7, ROUTE_2, 2
	warp_event  5,  7, ROUTE_2, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route2GateScientistScript, -1
	object_event  2,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Kim, -1
