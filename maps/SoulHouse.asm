	object_const_def
	const SOULHOUSE_MRFUJI
	const SOULHOUSE_TEACHER
	const SOULHOUSE_LASS
	const SOULHOUSE_GRANNY
	const SOULHOUSE_POKEBALL

SoulHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MrFuji:
	jumptextfaceplayer MrFujiText

SoulHouseTeacherScript:
	jumptextfaceplayer SoulHouseTeacherText

SoulHouseLassScript:
	jumptextfaceplayer SoulHouseLassText

SoulHouseGrannyScript:
	jumptextfaceplayer SoulHouseGrannyText

MrFujiText:
	text "MR.FUJI: Welcome."

	para "Hmm… You appear to"
	line "be raising your"

	para "#MON in a kind"
	line "and loving manner."

	para "#MON lovers"
	line "come here to pay"

	para "their respects to"
	line "departed #MON."

	para "Please offer con-"
	line "dolences for the"

	para "souls of the de-"
	line "parted #MON."

	para "I'm sure that will"
	line "make them happy."
	done

SoulHouseTeacherText:
	text "There are other"
	line "graves of #MON"
	cont "here, I think."

	para "There are many"
	line "chambers that only"
	cont "MR.FUJI may enter."
	done

SoulHouseLassText:
	text "I came with my mom"
	line "to visit #MON"
	cont "graves…"
	done

SoulHouseGrannyText:
	text "The #MON that"
	line "lived with me…"

	para "I loved them like"
	line "my grandchildren…"
	done

SpiritHouseBlockScript:
    checkevent EVENT_RESTORED_POWER_TO_KANTO
    iffalse .block
    end
.block
    turnobject SOULHOUSE_MRFUJI, RIGHT
	opentext
	writetext SoulHouseBlockText
    waitbutton
    closetext
    applymovement PLAYER, Movement_SoulHouseLeft
    turnobject SOULHOUSE_MRFUJI, DOWN
    end

Movement_SoulHouseLeft:
    step LEFT
    step_end

SoulHouseBlockText:
    text "MR FUJI: Excuse"
    line "me."

    para "That area is off"
    line "limits to the"
    cont "public."
    done

SoulHouseWiseGlasses:
	itemball WISE_GLASSES

SoulHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, LAVENDER_TOWN, 6
	warp_event  5,  7, LAVENDER_TOWN, 6

	warp_event  9,  1, SOUL_HOUSE, 4
	warp_event 16,  5, SOUL_HOUSE, 3

	warp_event 29,  5, LAVENDER_FOREST, 1

	def_coord_events
	coord_event 18, 4, SCENE_ALWAYS, SpiritHouseBlockScript

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MrFuji, -1
	object_event  7,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseTeacherScript, -1
	object_event  2,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseLassScript, -1
	object_event  1,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseGrannyScript, -1
	object_event  0,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SoulHouseWiseGlasses, EVENT_SOUL_HOUSE_WISE_GLASSES
