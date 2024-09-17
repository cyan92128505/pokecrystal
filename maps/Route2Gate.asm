	object_const_def
	const ROUTE2GATE_SCIENTIST
	const ROUTE2GATE_KIM

Route2Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route2GateScientistScript:
	jumptextfaceplayer Route2GateScientistText

Route2GateScientistText:
	text "Cosmic DNA started"
	line "biogenesis on this"
	cont "planet."
	para "We were so close"
	line "to unlocking the"
	cont "secrets to life."
	para "But now it's all"
	line "sealed away in the"
	cont "lab."
	para "For good reason."
	done

Kim:
	faceplayer
	opentext
	writetext aeroTradeText
	waitbutton
	trade NPC_TRADE_KIM
	waitbutton
	closetext
	end

aeroTradeText:
	text "My dear specimens"
	line "were lost when"
	cont "experiment 8472"
	cont "gained"
	cont "consciousness."
	para "I saved one and it"
	line "will never achieve"
	cont "its full potential"
	cont "with me."
	done

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
