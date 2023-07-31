	object_const_def

AncientTemple_MapScripts:
	def_scene_scripts

	def_callbacks

AncientTempleLeftovers:
    itemball LEFTOVERS

AncientTempleLifeOrb:
    itemball LIFE_ORB

AncientTempleAmbrosia:
    itemball AMBROSIA

AncientTempleSacredAsh:
    itemball SACRED_ASH

AncientTemple_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, SILVER_CAVE_OUTSIDE, 5
	warp_event  5,  3, ANCIENT_TEMPLE, 3
	warp_event 13, 29, SILVER_CAVE_OUTSIDE, 2
	warp_event 13, 3, ANCIENT_TEMPLE, 5
	warp_event 34,  3, ANCIENT_TEMPLE, 4
	warp_event 25,  1, ANCIENT_HALL, 1
	warp_event 26,  1, ANCIENT_HALL, 2
	warp_event 21, 21, ICE_PATH_B3F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event 28, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AncientTempleLeftovers, EVENT_ANCIENT_TEMPLE_LEFTOVERS
	object_event 23, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AncientTempleLifeOrb, EVENT_ANCIENT_TEMPLE_LIFE_ORB
	object_event 20,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AncientTempleAmbrosia, EVENT_ANCIENT_TEMPLE_AMBROSIA
	object_event 22, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AncientTempleSacredAsh, EVENT_ANCIENT_TEMPLE_SACRED_ASH
