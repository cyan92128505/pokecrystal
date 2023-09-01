	object_const_def
	const SAFFRONCITY_LASS1
	const SAFFRONCITY_POKEFAN_M
	const SAFFRONCITY_COOLTRAINER_M
	const SAFFRONCITY_COOLTRAINER_F
	const SAFFRONCITY_FISHER
	const SAFFRONCITY_YOUNGSTER1
	const SAFFRONCITY_YOUNGSTER2
	const SAFFRONCITY_LASS2
	const SAFFRONCITY_SILVER

SaffronCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	callback MAPCALLBACK_OBJECTS, .Silver

.FlyPoint:
	setflag ENGINE_FLYPOINT_SAFFRON
	endcallback

.Silver:
    disappear SAFFRONCITY_SILVER
    endcallback

SaffronCityLass1Script:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext SaffronCityLass1Text
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext SaffronCityLass1Text_ReturnedMachinePart
	waitbutton
	closetext
	end

SaffronCityPokefanMScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext SaffronCityPokefanMText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext SaffronCityPokefanMText_ReturnedMachinePart
	waitbutton
	closetext
	end

SaffronCityCooltrainerMScript:
	jumptextfaceplayer SaffronCityCooltrainerMText

SaffronCityCooltrainerFScript:
	jumptextfaceplayer SaffronCityCooltrainerFText

SaffronCityFisherScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext SaffronCityFisherText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext SaffronCityFisherText_ReturnedMachinePart
	waitbutton
	closetext
	end

SaffronCityYoungster1Script:
	jumptextfaceplayer SaffronCityYoungster1Text

SaffronCityYoungster2Script:
	jumptextfaceplayer SaffronCityYoungster2Text

SaffronCityLass2Script:
	jumptextfaceplayer SaffronCityLass2Text

SaffronCitySign:
	jumptext SaffronCitySignText

SaffronGymSign:
	jumptext SaffronGymSignText

FightingDojoSign:
	jumptext FightingDojoSignText

SilphCoSign:
	jumptext SilphCoSignText

MrPsychicsHouseSign:
	jumptext MrPsychicsHouseSignText

SaffronCityMagnetTrainStationSign:
	jumptext SaffronCityMagnetTrainStationSignText

SaffronCityPokecenterSign:
	jumpstd PokecenterSignScript

SaffronCityMartSign:
	jumpstd MartSignScript

SaffronCityLass1Text:
	text "A little girl who"
	line "is an expert at"

	para "mimicking people"
	line "lives here."

	para "She even mimics"
	line "the people she's"

	para "conversing with."
	line "It's confusing."
	done

SaffronCityLass1Text_ReturnedMachinePart:
	text "The COPYCAT girl"
	line "looked unhappy."

	para "She said she lost"
	line "her favorite #"
	cont "DOLL--CLEFAIRY."
	done

SaffronCityPokefanMText:
	text "You came out from"
	line "JOHTO?"

	para "You can zip back"
	line "home if the MAGNET"
	cont "TRAIN's running."
	done

SaffronCityPokefanMText_ReturnedMachinePart:
	text "You came out from"
	line "JOHTO?"

	para "You can zip back"
	line "home by hopping on"
	cont "the MAGNET TRAIN."
	done

SaffronCityCooltrainerMText:
	text "I went to the GYM,"
	line "raring for battles"
	cont "against trainers…"

	para "It turns out, I"
	line "stumbled into the"

	para "unused GYM next"
	line "door."

	para "Boy, I was pretty"
	line "embarrassed."
	done

SaffronCityCooltrainerFText:
	text "This is SILPH CO.,"
	line "famous for #MON"
	cont "merchandise."

	para "In the past, TEAM"
	line "ROCKET wanted the"

	para "company because of"
	line "that."
	done

SaffronCityFisherText:
	text "Chew… Chew…"

	para "I hear there's big"
	line "trouble brewing at"
	cont "the POWER PLANT."

	para "Chew… Chew…"
	done

SaffronCityFisherText_ReturnedMachinePart:
	text "Chew… Chew…"

	para "I hear there was"
	line "big trouble at the"
	cont "POWER PLANT."

	para "Chew… Chew…"
	line "Haaah, I'm full!"
	done

SaffronCityYoungster1Text:
	text "Going into an"
	line "alley for the"

	para "first time makes"
	line "me sorta anxious."
	done

SaffronCityYoungster2Text:
	text "There's a place"
	line "called TRAINER"

	para "HOUSE in VIRIDIAN"
	line "where trainers"

	para "gather from all"
	line "over the place."
	done

SaffronCityLass2Text:
	text "Our city was"
	line "featured on a"
	cont "radio program."

	para "It's nice to hear"
	line "praise for your"

	para "city, but it's a"
	line "bit embarrassing"
	cont "too."
	done

SaffronCitySignText:
	text "SAFFRON CITY"

	para "Shining, Golden"
	line "Land of Commerce"
	done

SaffronGymSignText:
	text "SAFFRON CITY"
	line "#MON GYM"
	cont "LEADER: SABRINA"

	para "The Master of"
	line "Psychic #MON!"
	done

FightingDojoSignText:
	text "Everyone Welcome!"
	line "FIGHTING DOJO"
	done

SilphCoSignText:
	text "SILPH CO."
	line "OFFICE BUILDING"
	done

MrPsychicsHouseSignText:
	text "MR.PSYCHIC'S"
	line "HOUSE"
	done

SaffronCityMagnetTrainStationSignText:
	text "SAFFRON CITY"
	line "MAGNET TRAIN"
	cont "STATION"
	done

SaffronGymBlockScript:
    checkevent EVENT_BEAT_ELITE_FOUR
    iffalse .block
    checkevent EVENT_BEAT_RIVAL_SAFFRON
    iffalse .SaffronSilverScript
    end
.block
    turnobject PLAYER, UP
	opentext
	writetext SaffronGymBlockText
    waitbutton
    closetext
    applymovement PLAYER, Movement_SaffronGymTurnBack
    end
.SaffronSilverScript
    showemote EMOTE_SHOCK, PLAYER, 15
    turnobject PLAYER, LEFT
    playmusic MUSIC_RIVAL_ENCOUNTER
    appear SAFFRONCITY_SILVER
    applymovement SAFFRONCITY_SILVER, SaffronMovement_SilverApproaches
    opentext
    writetext SaffronSilverText
    waitbutton
    closetext
    special FadeOutMusic
    turnobject SAFFRONCITY_SILVER, DOWN
    pause 20
    opentext
    writetext SaffronSilverPokemonFreedText
    waitbutton
    closetext
    pause 20
    turnobject SAFFRONCITY_SILVER, RIGHT
    opentext
    writetext SaffronSilverRespectText
    waitbutton
    closetext
    winlosstext Silver6LosesText, Silver6WinsText
    loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer RIVAL2, RIVAL2_SAFFRON
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_RIVAL_SAFFRON
    opentext
    writetext SaffronSilverAfterBattleText
    waitbutton
    closetext
    applymovement SAFFRONCITY_SILVER, SaffronMovement_SilverLeaves
    disappear SAFFRONCITY_SILVER
    end

SaffronMovement_SilverApproaches:
    step RIGHT
    step RIGHT
    step RIGHT
    step RIGHT
    step_end

SaffronMovement_SilverLeaves:
    step LEFT
    step LEFT
    step LEFT
    step LEFT
    step_end

SaffronSilverText:
    text "I thought I"
    line "might run into"
    cont "you here."

    para "So you are going"
    line "to challenge the"
    cont "KANTO GYMS too."

    para "I hope you don't"
    line "expect me to"
    cont "refer to you as"
    cont "CHAMPION."

    para "Look...."

    para "I'm sorry for my"
    line "attitude."
    done

SaffronSilverPokemonFreedText:
    text "I was wrong to"
    line "steal #MON."

    para "I gave all my"
    line "#MON the choice"
    cont "to stay with me.."

    para "They didn't all"
    line "accept..."

    para "I feel weaker"
    line "now than I ever"
    cont "have."
    done

SaffronSilverRespectText:
    text "I must earn the"
    line "respect of my"
    cont "friends who have"
    cont "stayed with me."

    para "Help me do that."
    done

Silver6LosesText:
    text "You are the"
    line "strongest."

    para "Thank you for"
    line "helping me."
    done

Silver6WinsText:
    text "Looks like I"
    line "still got it!"

    para "Thank you for"
    line "helping me."
    done

SaffronSilverAfterBattleText:
    text "I'm here looking"
    line "for my father."

    para "I think he is"
    line "in this city"
    cont "somewhere."

    para "I'm sure it wont"
    line "be difficult to"
    cont "find him."

    para "He was never good"
    line "at being"
    cont "inconspicuous."

    para "You keep getting"
    line "stronger."

    para "All these people"
    line "will need you"
    cont "soon enough."
    done

HoenInvadedBlockScript:
    checkevent EVENT_HOEN_INVASION_UNDERWAY
    iftrue .block
    end
.block
    turnobject PLAYER, UP
	opentext
	writetext TrainBlockText
    waitbutton
    closetext
    applymovement PLAYER, Movement_SaffronGymTurnBack
    end

TrainBlockText:
    text "The train is"
    line "off line."
    done

SaffronGymBlockText:
    text "The door is"
    line "locked."

    para "This GYM is only"
    line "accepting CHAMPION"
    cont "level challengers"
    cont "at this time."
    done

Movement_SaffronGymTurnBack:
	step DOWN
	step_end

SaffronCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 26,  3, GIOVANNI_GYM, 1
	warp_event 34,  3, SAFFRON_GYM, 1
	warp_event 25, 11, SAFFRON_MART, 2
	warp_event  9, 29, SAFFRON_POKECENTER_1F, 1
	warp_event 27, 29, MR_PSYCHICS_HOUSE, 1
	warp_event  8,  3, SAFFRON_MAGNET_TRAIN_STATION, 2
	warp_event 18, 21, SILPH_CO_1F, 1
	warp_event  9, 11, COPYCATS_HOUSE_1F, 1
	warp_event 18,  3, ROUTE_5_SAFFRON_GATE, 3
	warp_event  0, 24, ROUTE_7_SAFFRON_GATE, 3
	warp_event  0, 25, ROUTE_7_SAFFRON_GATE, 4
	warp_event 16, 33, ROUTE_6_SAFFRON_GATE, 1
	warp_event 17, 33, ROUTE_6_SAFFRON_GATE, 2
	warp_event 39, 22, ROUTE_8_SAFFRON_GATE, 1
	warp_event 39, 23, ROUTE_8_SAFFRON_GATE, 2

	def_coord_events
	coord_event 34, 4, SCENE_ALWAYS, SaffronGymBlockScript
	coord_event  8, 4, SCENE_ALWAYS, HoenInvadedBlockScript

	def_bg_events
	bg_event 21,  5, BGEVENT_READ, SaffronCitySign
	bg_event 33,  5, BGEVENT_READ, SaffronGymSign
	bg_event 25,  5, BGEVENT_READ, FightingDojoSign
	bg_event 15, 21, BGEVENT_READ, SilphCoSign
	bg_event 25, 29, BGEVENT_READ, MrPsychicsHouseSign
	bg_event 11,  5, BGEVENT_READ, SaffronCityMagnetTrainStationSign
	bg_event 10, 29, BGEVENT_READ, SaffronCityPokecenterSign
	bg_event 26, 11, BGEVENT_READ, SaffronCityMartSign

	def_object_events
	object_event  7, 14, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronCityLass1Script, -1
	object_event 19, 30, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SaffronCityPokefanMScript, -1
	object_event 32,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SaffronCityCooltrainerMScript, -1
	object_event 20, 24, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronCityCooltrainerFScript, -1
	object_event 27, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SaffronCityFisherScript, -1
	object_event 15, 19, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SaffronCityYoungster1Script, -1
	object_event 35, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronCityYoungster2Script, -1
	object_event 19,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SaffronCityLass2Script, -1
	object_event 29,  4, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMP_EVENT_1
