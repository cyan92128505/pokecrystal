	object_const_def
	const PALLETTOWN_TEACHER
	const PALLETTOWN_FISHER
	const PALLETTOWN_AERITH

PalletTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	callback MAPCALLBACK_OBJECTS, .Aerith

.FlyPoint:
	setflag ENGINE_FLYPOINT_PALLET
	endcallback

.Aerith:
    appear PALLETTOWN_AERITH
    checkevent EVENT_BEAT_AERITH_1
    iftrue .end
    disappear PALLETTOWN_AERITH
.end
    endcallback

PalletTownTeacherScript:
	jumptextfaceplayer PalletTownTeacherText

PalletTownFisherScript:
	jumptextfaceplayer PalletTownFisherText

PalletTownSign:
	jumptext PalletTownSignText

RedsHouseSign:
	jumptext RedsHouseSignText

OaksLabSign:
	jumptext OaksLabSignText

BluesHouseSign:
	jumptext BluesHouseSignText

PalletTownTeacherText:
	text "I'm raising #-"
	line "MON too."

	para "They serve as my"
	line "private guards."
	done

PalletTownFisherText:
	text "Technology is"
	line "incredible!"

	para "You can now trade"
	line "#MON across"
	cont "time like e-mail."
	done

PalletTownSignText:
	text "PALLET TOWN"

	para "A Tranquil Setting"
	line "of Peace & Purity"
	done

RedsHouseSignText:
	text "RED'S HOUSE"
	done

OaksLabSignText:
	text "OAK #MON"
	line "RESEARCH LAB"
	done

BluesHouseSignText:
	text "BLUE'S HOUSE"
	done

Aerith2Script:
    faceplayer
	opentext
	checkevent EVENT_BEAT_AERITH_2
	iftrue .FightDone
.fight
	writetext Aerith2SeenText
	waitbutton
	closetext
	checkevent EVENT_BEAT_AERITH_2
	iftrue .dontAsk
	opentext
	writetext Aerith2OfferFightText
	waitbutton
	yesorno
	iffalse .refused
	closetext
.dontAsk
	winlosstext Aerith2BeatenText, Aerith2WinsText
	loadtrainer KIMONO_GIRL, AERITH_2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_AERITH_2
	end
.FightDone:
	writetext Aerith2AfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextAerith2
	yesorno
	iftrue .fight
.refused
	writetext RematchRefuseTextAerith2
	waitbutton
	closetext
	end
Aerith2SeenText:
    text "Hey <PLAYER>!"

    para "What brings you"
    line "here?"

    para "I can feel there"
    line "something special"
    cont "about this town."

    para "The earth tells"
    line "me this is a very"
    cont "important place."

    para "I've heard people"
    line "talking about a"
    cont "war."

    para "Typical humans and"
    line "their petty"
    cont "desires."

    para "I will defend"
    line "the planet against"
    cont "all of them!"
    done
Aerith2BeatenText:
    text "Well done"
    done
Aerith2WinsText:
    text "Good try"
    done
Aerith2OfferFightText:
    text "Let's have a"
    line "fight!?"
    done
Aerith2AfterBattleText:
    text "No matter what"
    line "happens you"
    cont "have to protect"
    cont "the planet OK."

    para "It's like a child"
    line "lost and looking"
    cont "for it's mother."

    para "I can hear her"
    line "crying."

    para "can't you."
    done
RematchTextAerith2:
    text "Let's fight?"
    done
RematchRefuseTextAerith2:
    text "That's fine!"
    done

PalletTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, REDS_HOUSE_1F, 1
	warp_event 13,  5, BLUES_HOUSE, 1
	warp_event 12, 11, OAKS_LAB, 1

	def_coord_events

	def_bg_events
	bg_event  7,  9, BGEVENT_READ, PalletTownSign
	bg_event  3,  5, BGEVENT_READ, RedsHouseSign
	bg_event 13, 13, BGEVENT_READ, OaksLabSign
	bg_event 11,  5, BGEVENT_READ, BluesHouseSign

	def_object_events
	object_event  3,  8, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PalletTownTeacherScript, -1
	object_event 12, 14, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PalletTownFisherScript, -1
	object_event  6, 13, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Aerith2Script, EVENT_FIELD_MON_1

