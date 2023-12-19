	object_const_def
	const SILPHCO1F_RECEPTIONIST
	const SILPHCO1F_OFFICER

SilphCo1F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCoReceptionistScript:
	jumptextfaceplayer SilphCoReceptionistText

SilphCoOfficerScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_UP_GRADE
	iftrue .GotUpGrade
	writetext SilphCoOfficerText
	promptbutton
	verbosegiveitem CHOICE_SPECS
	iffalse .NoRoom
	setevent EVENT_GOT_UP_GRADE
.GotUpGrade:
	writetext SilphCoOfficerText_GotUpGrade
	waitbutton
.NoRoom:
	closetext
	end

SilphCoReceptionistText:
	text "Welcome. This is"
	line "SILPH CO.'s HEAD"
	cont "OFFICE BUILDING."
	done

SilphCoOfficerText:
	text "Only employees are"
	line "permitted beyond"
	cont "this point."

	para "We have stepped"
	line "up security since"
	cont "the ROCKET incident"
	cont "five years ago."

	para "But since you"
	line "are so polite"
	cont "here is a free"
	cont "sample."
	done

SilphCoOfficerText_GotUpGrade:
	text "Those special"
	line "specs make your"
	cont "special attacks"
	cont "much stronger."

	para "But you must"
	line "pick your move"
	cont "wisely."
	done

SilphCo1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 7
	warp_event  3,  7, SAFFRON_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoReceptionistScript, -1
	object_event 13,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SilphCoOfficerScript, -1
