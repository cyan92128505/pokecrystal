	object_const_def
	const VERMILIONCITY_TEACHER
	const VERMILIONCITY_GRAMPS
	;const VERMILIONCITY_MACHOP
	const VERMILIONCITY_SUPER_NERD
	const VERMILIONCITY_BIG_SNORLAX
	const VERMILIONCITY_POKEFAN_M
	const VERMILIONCITY_SOLDIER_1
	const VERMILIONCITY_SOLDIER_2
	const VERMILIONCITY_SOLDIER_3
	const VERMILIONCITY_SOLDIER_4
	const VERMILIONCITY_YUNA

VermilionCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	callback MAPCALLBACK_OBJECTS, .Invasion

.FlyPoint:
    setflag ENGINE_FLYPOINT_VERMILION
	endcallback

.Invasion:
	disappear VERMILIONCITY_SOLDIER_1
	disappear VERMILIONCITY_SOLDIER_2
	disappear VERMILIONCITY_SOLDIER_3
	disappear VERMILIONCITY_SOLDIER_4
	disappear VERMILIONCITY_YUNA
	checkevent EVENT_BEAT_YUNA_1
	iffalse .checkInvasion
	appear VERMILIONCITY_YUNA
.checkInvasion
	checkevent EVENT_BEAT_SOLDIER_9
	iftrue .end
	checkevent EVENT_HOEN_INVASION_UNDERWAY
	iffalse .end
	setval WEATHER_RAIN
	writemem wFieldWeather
	appear VERMILIONCITY_SOLDIER_1
	appear VERMILIONCITY_SOLDIER_2
	appear VERMILIONCITY_SOLDIER_3
	appear VERMILIONCITY_SOLDIER_4
.end
    endcallback

VermilionCityTeacherScript:
    checkevent EVENT_HOEN_INVASION_UNDERWAY
    iffalse .normal
    jumptextfaceplayer InvadedVermilionCityTeacherText
.normal
    jumptextfaceplayer VermilionCityTeacherText


VermilionMachopOwner:
    checkevent EVENT_HOEN_INVASION_UNDERWAY
    iffalse .normal
    jumptextfaceplayer InvadedVermilionMachopOwnerText
.normal
	jumptextfaceplayer VermilionMachopOwnerText

VermilionMachop:
	opentext
	writetext VermilionMachopText1
	cry MACHOP
	waitbutton
	closetext
	earthquake 30
	opentext
	writetext VermilionMachopText2
	waitbutton
	closetext
	end

VermilionCitySuperNerdScript:
    checkevent EVENT_HOEN_INVASION_UNDERWAY
    iffalse .normal
    jumptextfaceplayer InvadedVermilionCitySuperNerdText
.normal
	jumptextfaceplayer VermilionCitySuperNerdText

VermilionSnorlax:
	opentext
	special SnorlaxAwake
	iftrue .Awake
	writetext VermilionCitySnorlaxSleepingText
	waitbutton
	closetext
	end

.Awake:
	writetext VermilionCityRadioNearSnorlaxText
	pause 15
	cry SNORLAX
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon SNORLAX, 65
	startbattle
	disappear VERMILIONCITY_BIG_SNORLAX
	setevent EVENT_FOUGHT_SNORLAX
	reloadmapafterbattle
	end

VermilionGymBadgeGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_AMBROSIA_FROM_VERMILION_GUY
	iftrue .AlreadyGotItem
	readvar VAR_BADGES
	ifequal NUM_BADGES, .AllBadges
	ifgreater 13, .MostBadges
	ifgreater 9, .SomeBadges
	writetext VermilionCityBadgeGuyTrainerText
	waitbutton
	closetext
	end

.SomeBadges:
	writetext VermilionCityBadgeGuySomeBadgesText
	waitbutton
	closetext
	end

.MostBadges:
	writetext VermilionCityBadgeGuyMostBadgesText
	waitbutton
	closetext
	end

.AllBadges:
	writetext VermilionCityBadgeGuyAllBadgesText
	promptbutton
	verbosegiveitem AMBROSIA
	iffalse .Done
	setevent EVENT_GOT_AMBROSIA_FROM_VERMILION_GUY
.AlreadyGotItem:
	writetext VermilionCityBadgeGuyBattleEdgeText
	waitbutton
.Done:
	closetext
	end

VermilionCitySign:
	jumptext VermilionCitySignText

VermilionGymSign:
	jumptext VermilionGymSignText

PokemonFanClubSign:
	jumptext PokemonFanClubSignText

VermilionCityDiglettsCaveSign:
	jumptext VermilionCityDiglettsCaveSignText

VermilionCityPortSign:
	jumptext VermilionCityPortSignText

VermilionCityPokecenterSign:
	jumpstd PokecenterSignScript

VermilionCityMartSign:
	jumpstd MartSignScript

VermilionCityHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_VERMILION_CITY_HIDDEN_FULL_HEAL

VermilionCityTeacherText:
	text "VERMILION PORT is"
	line "KANTO's seaside"
	cont "gateway."

	para "Luxury liners from"
	line "around the world"
	cont "dock here."
	done

InvadedVermilionCityTeacherText:
	text "I hoped this day"
	line "would never come!"

	para "I hope they have"
	line "mercy on my"
	cont "children."
	done

VermilionMachopOwnerText:
	text "My #MON is"
	line "preparing the land"
	cont "for construction."

	para "But I have no"
	line "money to start the"
	cont "project…"
	done

InvadedVermilionMachopOwnerText:
	text "This is the third"
	line "war in my life."

	para "I have had a good"
	line "long life."

	para "It is people like"
	line "you I feel bad"
	cont "for."
	done

VermilionMachopText1:
	text "MACHOP: Guooh"
	line "gogogoh!"
	done

VermilionMachopText2:
	text "A MACHOP is growl-"
	line "ing while stomping"
	cont "the ground flat."
	done

VermilionCitySuperNerdText:
	text "There are eight"
	line "GYMS in KANTO."

	para "That big building"
	line "is VERMILION's"
	cont "#MON GYM."
	done

InvadedVermilionCitySuperNerdText:
    text "They have locked"
    line "the trainers in"
    cont "the GYM!"

	para "Just do as they"
	line "say and keep"
	cont "your head down."

	para "If we hold out"
	line "long enough"
	cont "LANCE will save"
	cont "us."
	done

VermilionCitySnorlaxSleepingText:
	text "SNORLAX is snoring"
	line "peacefully…"
	done

VermilionCityRadioNearSnorlaxText:
	text "The #GEAR was"
	line "placed near the"
	cont "sleeping SNORLAX…"

	para "…"

	para "SNORLAX woke up!"
	done

VermilionCityBadgeGuyTrainerText:
	text "Skilled trainers"
	line "gather in KANTO."

	para "GYM LEADERS are"
	line "especially strong."

	para "They won't be easy"
	line "to defeat."
	done

VermilionCityBadgeGuySomeBadgesText:
	text "You've started to"
	line "collect KANTO GYM"
	cont "BADGES?"

	para "Don't you agree"
	line "that the trainers"
	cont "here are tough?"
	done

VermilionCityBadgeGuyMostBadgesText:
	text "I guess you'll be"
	line "finished with your"

	para "conquest of KANTO"
	line "GYMS soon."

	para "Let me know if"
	line "you get all eight"
	cont "BADGES."
	done

VermilionCityBadgeGuyAllBadgesText:
	text "Congratulations!"

	para "You got all the"
	line "KANTO GYM BADGES."

	para "I've got a reward"
	line "for your efforts."
	done

VermilionCityBadgeGuyBattleEdgeText:
	text "Having a variety"
	line "of #MON types"

	para "should give you an"
	line "edge in battle."

	para "I'm sure the KANTO"
	line "GYM BADGES will"
	cont "help you."
	done

VermilionCitySignText:
	text "VERMILION CITY"

	para "The Port of"
	line "Exquisite Sunsets"
	done

VermilionGymSignText:
	text "VERMILION CITY"
	line "#MON GYM"
	cont "LEADER: LT.SURGE"

	para "The Lightning"
	line "American"
	done

PokemonFanClubSignText:
	text "#MON FAN CLUB"

	para "All #MON Fans"
	line "Welcome!"
	done

VermilionCityDiglettsCaveSignText:
	text "DIGLETT'S CAVE"
	done

VermilionCityPortSignText:
	text "VERMILION PORT"
	line "ENTRANCE"
	done
	
VermilionGymBlockScript:
    checkevent EVENT_BEAT_ELITE_FOUR
    iffalse .block
    end
.block
    turnobject PLAYER, UP
	opentext
	writetext VermilionGymBlockText
    waitbutton
    closetext
    applymovement PLAYER, Movement_VermilionGymTurnBack
    end

VermilionGymBlockText:
    text "The door is"
    line "locked."

    para "This GYM is only"
    line "accepting CHAMPION"
    cont "level challengers"
    cont "at this time."
    done

Movement_VermilionGymTurnBack:
	step DOWN
	step_end

VermilionHoenInvadedBlockScript:
    checkevent EVENT_HOEN_INVASION_UNDERWAY
    iftrue .block
    end
.block
    turnobject PLAYER, UP
	opentext
	writetext VermilionBlockText
    waitbutton
    closetext
    applymovement PLAYER, Movement_VermilionGymTurnBack
    end

VermilionBlockText:
    text "The door is locked"
    done

VermilionPortHoenInvadedBlockScript:
    checkevent EVENT_HOEN_INVASION_UNDERWAY
    iftrue .block
    end
.block
    turnobject PLAYER, DOWN
	opentext
	writetext VermilionPortBlockText
    waitbutton
    closetext
    applymovement PLAYER, Movement_VermilionPortTurnUp
    end

VermilionPortBlockText:
    text "The Port is closed"
    done

Movement_VermilionPortTurnUp:
    step UP
    step_end

TrainerSoldier6:
	trainer SOLDIER, SOLDIER_6, EVENT_BEAT_SOLDIER_6, Soldier6SeenText, Soldier6BeatenText, Soldier6WinsText, .Script
.Script:
	endifjustbattled
	opentext
	writetext Soldier6AfterBattleText
	waitbutton
	closetext
	end
Soldier6SeenText:
    text "You can't win!"
    done
Soldier6BeatenText:
    text "Damn!"
    done
Soldier6WinsText:
    text "You fool!"
    done
Soldier6AfterBattleText:
    text "Some stuff is"
    line "happening."
    done

TrainerSoldier7:
	trainer SOLDIER, SOLDIER_7, EVENT_BEAT_SOLDIER_7, Soldier7SeenText, Soldier7BeatenText, Soldier7WinsText, .Script
.Script:
	endifjustbattled
	opentext
	writetext Soldier7AfterBattleText
	waitbutton
	closetext
	end
Soldier7SeenText:
    text "You can't win!"
    done
Soldier7BeatenText:
    text "Damn!"
    done
Soldier7WinsText:
    text "You fool!"
    done
Soldier7AfterBattleText:
    text "Some stuff is"
    line "happening."
    done

TrainerSoldier8:
	trainer SOLDIER, SOLDIER_8, EVENT_BEAT_SOLDIER_8, Soldier8SeenText, Soldier8BeatenText, Soldier8WinsText, .Script
.Script:
	endifjustbattled
	opentext
	writetext Soldier8AfterBattleText
	waitbutton
	closetext
	end
Soldier8SeenText:
    text "You can't win!"
    done
Soldier8BeatenText:
    text "Damn!"
    done
Soldier8WinsText:
    text "You fool!"
    done
Soldier8AfterBattleText:
    text "Some stuff is"
    line "happening."
    done

HoenCaptain:
    faceplayer
	opentext
	checkevent EVENT_BEAT_SOLDIER_6
	iffalse .goAway
	checkevent EVENT_BEAT_SOLDIER_7
	iffalse .goAway
	checkevent EVENT_BEAT_SOLDIER_8
	iffalse .goAway
	writetext HoenCaptainSeenText
	waitbutton
	closetext
	winlosstext HoenCaptainBeatenText, HoenCaptainWinsText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer SOLDIER, SOLDIER_9
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SOLDIER_9
	opentext
	writetext HoenCaptainAfterBattleText
	waitbutton
	closetext
	disappear VERMILIONCITY_SOLDIER_1
	disappear VERMILIONCITY_SOLDIER_2
	disappear VERMILIONCITY_SOLDIER_3
	disappear VERMILIONCITY_SOLDIER_4
	reloadmap
	end
.goAway
    writetext GoAwayText
   	waitbutton
   	closetext
   	end

GoAwayText:
    text "Go back to"
    line "your home and"
    cont "pray our plans"
    cont "go unhindered."

    para "We have no"
    line "interest in heroes"
    cont "or hostages."
    done

HoenCaptainSeenText:
    text "You have"
    line "disrespected HOEN"
    cont "for your first"
    cont "last time!"

    para "I have been tasked"
    line "with containing"
    cont "the ELECTRIC GYM."

    para "HOEN will liberate"
    line "all of KANTO!"

    para "If you are not"
    line "happy with this."

    para "Then you will"
    line "die."
    done

HoenCaptainBeatenText:
    text "Forgive me"
    line "FUHRER."
    done

HoenCaptainWinsText:
    text "Be gone!"
    done

HoenCaptainAfterBattleText:
    text "Who are you!"

    para "Wait..."

    para "You are the new"
    line "CHAMPION!"

    para "You have failed"
    line "CHAMPION."

    para "I've' accomplished"
    line "my mission."

    para "WALLACE has made"
    line "it to FUCHSIA."

    para "KANTO is doomed."

    para "FUHRER WALLACE"
    line "has the strongest"
    cont "squad with him."

    para "Two COMMANDERS"

    para "Two CAPTAINS"

    para "and ADMIRAL DRAKE!"

    para "DRAKE has beaten"
    line "CHAMPIONS much"
    cont "stronger than"
    cont "you."

    para "You should stay"
    line "away from FUCHSIA"
    cont "if you value your"
    cont "life."
    done

YunaScriptVermilion:
    faceplayer
	opentext
	checkevent EVENT_HOEN_INVASION_UNDERWAY
	iftrue .invasion
	checkevent EVENT_BEAT_YUNA_2
	iftrue .FightDone
.fight
	writetext VermilionYunaSeenText
	waitbutton
	closetext
	checkevent EVENT_BEAT_YUNA_2
	iftrue .dontAsk
	opentext
	writetext VermilionYunaOfferFightText
	waitbutton
	yesorno
	iffalse .refused
	closetext
.dontAsk
	winlosstext VermilionYunaBeatenText, VermilionYunaWinsText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer KIMONO_GIRL, YUNA_2
	startbattle
	ifequal LOSE, .lose
	reloadmapafterbattle
	setevent EVENT_BEAT_YUNA_2
	end
.FightDone:
	writetext VermilionYunaAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextVermilionYuna
	yesorno
	iftrue .fight
.refused
	writetext RematchRefuseTextVermilionYuna
	waitbutton
	closetext
	end
.invasion
    writetext YunaInvasionText
	waitbutton
	closetext
	end
.lose
    special HealParty
    reloadmap
    opentext
    writetext Yuna2WinAfterBattleText
    waitbutton
    closetext
    end
Yuna2WinAfterBattleText:
    text "You have got"
    line "much stronger!"

    para "When the time"
    line "comes I know"
    cont "these people can"
    cont "count on you."
    done
YunaInvasionText:
    text "These people are"
    line "cruel and full"
    cont "of hate."

    para "I tried to fight"
    line "them but I was"
    cont "defeated by"
    cont "their captain."

    para "But they will be"
    line "no match for you."
    done
VermilionYunaSeenText:
    text "Hello again!"

    para "Thank you for"
    line "training with me"
    cont "in OLIVINE."

    para "I've become much"
    line "stronger."

    para "But not strong"
    line "enough to protect"
    cont "everyone."

    para "I'm sure you have"
    line "become stronger"
    cont "too."
    done
VermilionYunaBeatenText:
    text "Thank you"
    done
VermilionYunaWinsText:
    text "Thank you"
    done
VermilionYunaOfferFightText:
    text "Would you like"
    line "to train again?"
    done
VermilionYunaAfterBattleText:
    text "We have to find"
    line "little moments"
    cont "of joy in our"
    cont "lives."

    para "Things can change"
    line "at any time."

    para "But we can get"
    line "through anything"
    cont "together."
    done
RematchTextVermilionYuna:
    text "Would you like to"
    line "train again?"
    done
RematchRefuseTextVermilionYuna:
    text "Good luck."
    done

VermilionCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, VERMILION_FISHING_SPEECH_HOUSE, 1
	warp_event  9,  5, VERMILION_POKECENTER_1F, 1
	warp_event  7, 13, POKEMON_FAN_CLUB, 1
	warp_event 13, 13, VERMILION_MAGNET_TRAIN_SPEECH_HOUSE, 1
	warp_event 21, 13, VERMILION_MART, 2
	warp_event 21, 17, VERMILION_DIGLETTS_CAVE_SPEECH_HOUSE, 1
	warp_event 10, 19, VERMILION_GYM, 1
	warp_event 19, 31, VERMILION_PORT_PASSAGE, 1
	warp_event 20, 31, VERMILION_PORT_PASSAGE, 2
	warp_event 34,  7, DIGLETTS_CAVE, 1

	def_coord_events
	coord_event 10, 20, SCENE_ALWAYS, VermilionGymBlockScript
	coord_event 10, 20, SCENE_CUSTOM_1, VermilionHoenInvadedBlockScript
	coord_event 21, 18, SCENE_CUSTOM_1, VermilionHoenInvadedBlockScript
	coord_event  5,  6, SCENE_CUSTOM_1, VermilionHoenInvadedBlockScript
	coord_event 13, 14, SCENE_CUSTOM_1, VermilionHoenInvadedBlockScript
	coord_event  7, 14, SCENE_CUSTOM_1, VermilionHoenInvadedBlockScript
	coord_event 19, 30, SCENE_CUSTOM_1, VermilionPortHoenInvadedBlockScript


	def_bg_events
	bg_event 25,  3, BGEVENT_READ, VermilionCitySign
	bg_event  5, 19, BGEVENT_READ, VermilionGymSign
	bg_event  5, 13, BGEVENT_READ, PokemonFanClubSign
	bg_event 33,  9, BGEVENT_READ, VermilionCityDiglettsCaveSign
	bg_event 27, 15, BGEVENT_READ, VermilionCityPortSign
	bg_event 10,  5, BGEVENT_READ, VermilionCityPokecenterSign
	bg_event 22, 13, BGEVENT_READ, VermilionCityMartSign
	bg_event 12, 19, BGEVENT_ITEM, VermilionCityHiddenFullHeal

	def_object_events
	object_event 18,  9, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionCityTeacherScript, -1
	object_event 23,  6, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionMachopOwner, -1
	;object_event 26,  7, SPRITE_MACHOP, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VermilionMachop, -1
	object_event 14, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionCitySuperNerdScript, -1
	object_event 34,  8, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionSnorlax, EVENT_VERMILION_CITY_SNORLAX
	object_event 31, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionGymBadgeGuy, -1
	object_event 16, 11, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSoldier6, EVENT_FIELD_MON_1
	object_event 19, 12, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSoldier7, EVENT_FIELD_MON_2
	object_event 17, 15, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSoldier8, EVENT_FIELD_MON_3
	object_event 10, 20, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, HoenCaptain, EVENT_FIELD_MON_4
	object_event 25, 25, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, YunaScriptVermilion, EVENT_FIELD_MON_5


