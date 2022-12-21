DestinyPark_MapScripts:
	def_scene_scripts

	def_callbacks

DestinyPark_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  10, 35, SILVER_CAVE_OUTSIDE, 3
	warp_event  11, 35, SILVER_CAVE_OUTSIDE, 3
	warp_event  10,  9, DESTINY_SQUARE, 1
	warp_event  11,  9, DESTINY_SQUARE, 1

	def_coord_events

	def_bg_events

	def_object_events
