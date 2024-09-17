	object_const_def
	const OLIVINETIMSHOUSE_TIM

OlivineTimsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Tim:
	faceplayer
	opentext
	writetext metaTradeText
	waitbutton
	trade NPC_TRADE_TIM
	waitbutton
	closetext
	end

metaTradeText:
	text "We all need to"
	line "protect ourselves"
	cont "in these times."
	para "A state of the art"
	line "Enforcement Droid"
	cont "is what you need."
	done

TimsHouseBookshelf:
	jumpstd MagazineBookshelfScript

OlivineTimsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 3
	warp_event  3,  7, OLIVINE_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, TimsHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, TimsHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Tim, -1
