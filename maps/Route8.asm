	object_const_def
	const ROUTE8_BIKER1
	const ROUTE8_BIKER2
	const ROUTE8_BIKER3
	const ROUTE8_SUPER_NERD1
	const ROUTE8_SUPER_NERD2
	const ROUTE8_FRUIT_TREE
    const ROUTE8_FIELDMON_1
    const ROUTE8_FIELDMON_2
    const ROUTE8_FIELDMON_3
    const ROUTE8_FIELDMON_4
    const ROUTE8_FIELDMON_5
    const ROUTE8_FIELDMON_6

Route8_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Route8FieldMon

.Route8FieldMon:
; Pokemon which always appear
    appear ROUTE8_FIELDMON_1
    appear ROUTE8_FIELDMON_3
    appear ROUTE8_FIELDMON_4
    appear ROUTE8_FIELDMON_5

    random 3
    ifequal 1, .spawn6
    disappear ROUTE8_FIELDMON_6
    sjump .checkNight
.spawn6
    appear ROUTE8_FIELDMON_6

.checkNight
; Pokemon that only appear at night
    checktime NITE
    iffalse .end
    appear ROUTE8_FIELDMON_2

; Pokemon that don't appear at night
    disappear ROUTE8_FIELDMON_4

.end
    endcallback

Route8FieldMon1Script:
	trainer WEEZING, FIELD_MON, EVENT_FIELD_MON_1, Route8PokemonAttacksText, 44, 0, .script
.script
    disappear ROUTE8_FIELDMON_1
    end

Route8FieldMon2Script:
	trainer GENGAR, FIELD_MON, EVENT_FIELD_MON_2, Route8PokemonAttacksText, 61, 0, .script
.script
    disappear ROUTE8_FIELDMON_2
    end

Route8FieldMon3Script:
	trainer WEEZING, FIELD_MON, EVENT_FIELD_MON_3, Route8PokemonAttacksText, 43, 0, .script
.script
    disappear ROUTE8_FIELDMON_3
    end

Route8PokemonAttacksText:
	text "Wild #MON"
	line "attacks!"
	done

Route8FieldMon4Script:
	faceplayer
	cry ESPEON
	pause 15
	loadwildmon ESPEON, 44
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_4
	disappear ROUTE8_FIELDMON_4
	end

Route8FieldMon5Script:
	faceplayer
	cry MR__MIME
	pause 15
	loadwildmon MR__MIME, 41
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_5
	disappear ROUTE8_FIELDMON_5
	end

Route8FieldMon6Script:
	faceplayer
	cry SYLVEON
	pause 15
	loadwildmon SYLVEON, 45
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_6
	disappear ROUTE8_FIELDMON_6
	end

TrainerBikerDwayne:
	trainer BIKER, DWAYNE, EVENT_BEAT_BIKER_DWAYNE, BikerDwayneSeenText, BikerDwayneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerDwayneAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerHarris:
	trainer BIKER, HARRIS, EVENT_BEAT_BIKER_HARRIS, BikerHarrisSeenText, BikerHarrisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerHarrisAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerZeke:
	trainer BIKER, ZEKE, EVENT_BEAT_BIKER_ZEKE, BikerZekeSeenText, BikerZekeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerZekeAfterBattleText
	waitbutton
	closetext
	end

TrainerSupernerdSam:
	trainer SUPER_NERD, SAM, EVENT_BEAT_SUPER_NERD_SAM, SupernerdSamSeenText, SupernerdSamBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdSamAfterBattleText
	waitbutton
	closetext
	end

TrainerSupernerdTom:
	trainer SUPER_NERD, TOM, EVENT_BEAT_SUPER_NERD_TOM, SupernerdTomSeenText, SupernerdTomBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdTomAfterBattleText
	waitbutton
	closetext
	end

Route8LockedDoor:
	jumptext Route8LockedDoorText

Route8UndergroundPathSign:
	jumptext Route8UndergroundPathSignText

Route8FruitTree:
	fruittree FRUITTREE_ROUTE_8

BikerDwayneSeenText:
	text "We're the KANTO"
	line "#MON FEDERATION"
	cont "trainer group."

	para "We'll drive you"
	line "under our wheels!"
	done

BikerDwayneBeatenText:
	text "S-sorry!"
	done

BikerDwayneAfterBattleText:
	text "The KANTO #MON"
	line "FEDERATION will"
	cont "never fall!"
	done

BikerHarrisSeenText:
	text "The cops shut down"
	line "our UNDERGROUND"

	para "PATH! That really"
	line "fries me!"
	done

BikerHarrisBeatenText:
	text "F-forgive me!"
	done

BikerHarrisAfterBattleText:
	text "Wiped out by some"
	line "punk from JOHTO…"
	done

BikerZekeSeenText:
	text "We're the KANTO"
	line "#MON FEDERA-"
	cont "TION!"
	cont "Right on!"
	done

BikerZekeBeatenText:
	text "Yikes! Sorry!"
	done

BikerZekeAfterBattleText:
	text "We'll try not to"
	line "disturb anyone"
	cont "from now on…"
	done

SupernerdSamSeenText:
	text "How does the MAG-"
	line "NET TRAIN work?"
	done

SupernerdSamBeatenText:
	text "I just want to see"
	line "the MAGNET TRAIN…"
	done

SupernerdSamAfterBattleText:
	text "The power of mag-"
	line "nets is awesome!"
	done

SupernerdTomSeenText:
	text "Hm… You've got"
	line "many GYM BADGES."
	done

SupernerdTomBeatenText:
	text "Just as I thought…"
	line "You're tough!"
	done

SupernerdTomAfterBattleText:
	text "GYM BADGES give"
	line "you advantages in"
	cont "battles."
	done

Route8LockedDoorText:
	text "It's locked…"
	done

Route8UndergroundPathSignText:
	text "The flyer's torn."

	para "It's impossible to"
	line "read…"
	done

Route8_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  4, ROUTE_8_SAFFRON_GATE, 3
	warp_event  4,  5, ROUTE_8_SAFFRON_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 11,  7, BGEVENT_READ, Route8UndergroundPathSign
	bg_event 10,  5, BGEVENT_READ, Route8LockedDoor

	def_object_events
	object_event 10,  8, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerBikerDwayne, -1
	object_event 10,  9, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerBikerHarris, -1
	object_event 10, 10, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerBikerZeke, -1
	object_event 23,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerSupernerdSam, -1
	object_event 31, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSupernerdTom, -1
	object_event 33,  5, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8FruitTree, -1
	object_event  6, 15, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, Route8FieldMon1Script, EVENT_FIELD_MON_1
	object_event 34,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 2, 2, -1, NITE, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, Route8FieldMon2Script, EVENT_FIELD_MON_2
	object_event  9, 12, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 0, Route8FieldMon3Script, EVENT_FIELD_MON_3
	object_event 24,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, DAY, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route8FieldMon4Script, EVENT_FIELD_MON_4
	object_event 23, 11, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route8FieldMon5Script, EVENT_FIELD_MON_5
	object_event 24, 13, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route8FieldMon6Script, EVENT_FIELD_MON_6
