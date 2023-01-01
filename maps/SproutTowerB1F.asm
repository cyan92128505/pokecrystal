SproutTowerB1F_MapScripts:
	def_scene_scripts

	def_callbacks

SproutTowerB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event   9, 15, ANCIENT_RUIN_PRESENT, 2
	warp_event  10, 15, ANCIENT_RUIN_PRESENT, 2
	warp_event  13,  9, SPROUT_TOWER_1F, 6

	def_coord_events

	def_bg_events

	def_object_events
