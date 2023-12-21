	object_const_def
	const PEWTERSNOOZESPEECHHOUSE_GRAMPS

PewterSnoozeSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

PewterSnoozeSpeechHouseGrampsScript:
	jumptextfaceplayer PewterSnoozeSpeechHouseGrampsText

PewterSnoozeSpeechHouseBookshelf:
	jumpstd PictureBookshelfScript

PewterSnoozeSpeechHouseGrampsText:
	text "All the young"
	line "people left this"
	cont "place to make"
	cont "better lives in"
	cont "other cities."

	para "Us old folk are"
	line "all that's left."

	para "Too tired to"
	line "keep on going."
	done

PewterSnoozeSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PEWTER_CITY, 5
	warp_event  3,  7, PEWTER_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PewterSnoozeSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, PewterSnoozeSpeechHouseBookshelf

	def_object_events
	object_event  5,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterSnoozeSpeechHouseGrampsScript, -1
