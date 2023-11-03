	object_const_def
	const OLIVINECAFE_SAILOR1
	const OLIVINECAFE_FISHING_GURU
	const OLIVINECAFE_SAILOR2

OlivineCafe_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineCafeStrengthSailorScript:
    jumptextfaceplayer OlivineCafeStrengthSailorText_GotStrength

OlivineCafeFishingGuruScript:
	jumptextfaceplayer OlivineCafeFishingGuruText

OlivineCafeSailorScript:
	jumptextfaceplayer OlivineCafeSailorText

OlivineCafeStrengthSailorText_GotStrength:
	text "I see you've"
	line "gotten more buff"
	cont "since I gave you"
	cont "STRENGTH."

	para "You need to visit"
	line "BATTLE FRONTIER!"

	para "It is all I"
	line "need in life."
	done

OlivineCafeFishingGuruText:
	text "You lookin for"
	line "some good food"
	cont "to make ye a"
	cont "real mawn!"

	para "None of that"
	line "vegan muck here!"

	para "TAUROS burgers"
	line "are what ye need!"
	done

OlivineCafeSailorText:
	text "Aww man I need"
	line "more PROTIEN."

	para "This is the"
	line "best place for"
	cont "my pre-workout"
	cont "meal!"
	done

OlivineCafe_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 7
	warp_event  3,  7, OLIVINE_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeStrengthSailorScript, -1
	object_event  7,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeFishingGuruScript, -1
	object_event  6,  6, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeSailorScript, -1
