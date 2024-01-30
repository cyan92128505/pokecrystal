ManorInside_MapScripts:
	def_scene_scripts

	def_callbacks

ManorInside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  19, MANOR_OUTSIDE, 3
	warp_event  9,  19, MANOR_OUTSIDE, 3
	warp_event  10,  12, MANOR_INSIDE, 4
    warp_event  10,  24, MANOR_INSIDE, 3
    warp_event  7,  12, MANOR_INSIDE, 6
    warp_event  7,  0, MANOR_INSIDE, 5

	def_coord_events

	def_bg_events

	def_object_events
