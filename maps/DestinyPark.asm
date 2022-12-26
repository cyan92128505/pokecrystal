DestinyPark_MapScripts:
	def_scene_scripts

	def_callbacks

DestinyPark_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 43, SILVER_CAVE_OUTSIDE, 3
	warp_event  7, 43, SILVER_CAVE_OUTSIDE, 3
	warp_event  6,  9, DESTINY_SQUARE, 1
	warp_event  7,  9, DESTINY_SQUARE, 1

	def_coord_events

	def_bg_events

	def_object_events
