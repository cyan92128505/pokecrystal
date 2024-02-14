	object_const_def
	const FUCHSIACITY_YOUNGSTER
	const FUCHSIACITY_POKEFAN_M
	const FUCHSIACITY_TEACHER
	const FUCHSIACITY_FRUIT_TREE
	const FUCHSIACITY_LATIAS
	const FUCHSIACITY_SOLDIER_1
	const FUCHSIACITY_SOLDIER_2
	const FUCHSIACITY_SELF
	const FUCHSIACITY_SOLDIER_3
	const FUCHSIACITY_SOLDIER_4
	const FUCHSIACITY_GREEN

FuchsiaCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	callback MAPCALLBACK_OBJECTS, .Invasion

.FlyPoint:
	setflag ENGINE_FLYPOINT_FUCHSIA
	endcallback

.Invasion:
    disappear FUCHSIACITY_SELF
    disappear FUCHSIACITY_SOLDIER_1
    disappear FUCHSIACITY_SOLDIER_2
    checkevent EVENT_HOEN_INVASION_UNDERWAY
    iffalse .end
    checkevent EVENT_BEAT_SOLDIER_9
    iffalse .end
    appear FUCHSIACITY_SOLDIER_1
    appear FUCHSIACITY_SOLDIER_2
.end
    endcallback

LatiasScript:
	faceplayer
	opentext
    special GetFirstPokemonHappiness
	ifgreater 225 - 1, .battle
    sjump .notHappy
.battle
	writetext LatiasCry
	cry LATIAS
	pause 15
	closetext
	checkevent EVENT_BEAT_MORTY
	iffalse .tinyLevel
	checkevent EVENT_BEAT_PRYCE
	iffalse .smallLevel
	checkevent EVENT_BEAT_ELITE_FOUR
	iffalse .lowerLevel
	checkevent EVENT_BEAT_WALLACE
	iffalse .midLevel
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon LATIAS, 80
    sjump .begin
.midLevel
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon LATIAS, 70
    sjump .begin
.lowerLevel
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon LATIAS, 60
	sjump .begin
.smallLevel
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon LATIAS, 40
	sjump .begin
.tinyLevel
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon LATIAS, 30
.begin
	startbattle
	reloadmapafterbattle
    setval LATIAS
	special MonCheck
	iftrue .caught
	end
.caught
    setevent EVENT_CAUGHT_LATIAS
	disappear FUCHSIACITY_LATIAS
	end
.notHappy
    writetext LatiasNotHappyText
    waitbutton
    closetext
    end

LatiasNotHappyText:
    text "...."

    para "#MON...."

    para "Sad...."
    done

LatiasCry:
    text "...."

    para "#MON...."

    para "Loves you!"
    done

FuchsiaCityYoungster:
    checkevent EVENT_BEAT_WALLACE
    iftrue .saved
    checkevent EVENT_HOEN_INVASION_UNDERWAY
    iffalse .normal
    jumptextfaceplayer InvadedFuchsiaCityYoungsterText
.normal
	jumptextfaceplayer FuchsiaCityYoungsterText
.saved
    jumptextfaceplayer FuchsiaCityYoungsterText_Saved

FuchsiaCityPokefanM:
    checkevent EVENT_BEAT_WALLACE
    iftrue .saved
    checkevent EVENT_HOEN_INVASION_UNDERWAY
    iffalse .normal
    jumptextfaceplayer InvadedFuchsiaCityPokefanMText
.normal
	jumptextfaceplayer FuchsiaCityPokefanMText
.saved
    jumptextfaceplayer FuchsiaCityPokefanMText_Saved

FuchsiaCityTeacher:
    checkevent EVENT_BEAT_WALLACE
    iftrue .saved
    checkevent EVENT_HOEN_INVASION_UNDERWAY
    iffalse .normal
    jumptextfaceplayer InvadedFuchsiaCityTeacherText
.normal
	jumptextfaceplayer FuchsiaCityTeacherText
.saved
    jumptextfaceplayer FuchsiaCityTeacherText_Saved

FuchsiaCitySign:
	jumptext FuchsiaCitySignText

FuchsiaGymSign:
	jumptext FuchsiaGymSignText

SafariZoneOfficeSign:
	jumptext SafariZoneOfficeSignText

WardensHomeSign:
	jumptext WardensHomeSignText

SafariZoneClosedSign:
	jumptext SafariZoneClosedSignText

NoLitteringSign:
	jumptext NoLitteringSignText

FuchsiaCityPokecenterSign:
	jumpstd PokecenterSignScript

FuchsiaCityMartSign:
	jumpstd MartSignScript

FuchsiaCityFruitTree:
	fruittree FRUITTREE_FUCHSIA_CITY

FuchsiaCityYoungsterText:
	text "The previous GYM"
	line "LEADER here was"
	cont "killed battling"
	cont "HOEN."

	para "We will never"
	line "forget you KOGA."

	para "You fought and"
	line "died for us."
	done

FuchsiaCityYoungsterText_Saved:
	text "You put your"
	line "life on the line"
	cont "to save us all."

	para "I know KOGA would"
	line "be proud of you."

	para "Everybody else"
	line "sure is."

	para "Thank you"
	line "CHAMPION <PLAYER>."
	done

InvadedFuchsiaCityYoungsterText:
	text "We have fallen."

	para "WALLACE..."

	para "I understand why"
	line "he is so feared."

	para "His #MON!"

	para "But I would"
	line "rather go down"
	cont "fighting!"

	para "For KOGA!!!"
	done

FuchsiaCityPokefanMText:
	text "KOGA's daughter"
	line "succeeded him as"

	para "the GYM LEADER"
	line "after he fell"
	cont "in battle."

	para "We are all very"
	line "proud of her."

	para "Especially her"
	line "grandmother."
	done

FuchsiaCityPokefanMText_Saved:
	text "Thank you"
	line "CHAMPION!"

	para "You saved all of"
	line "KANTO."

	para "We should build"
	line "a statue in your"
	cont "honor."

	para "I'll make it my"
	line "life mission to"
	cont "build it!"
	done

InvadedFuchsiaCityPokefanMText:
	text "Janine tried to"
	line "defend us."

	para "WALLACE himself"
	line "insisted on"
	cont "fighting her."

	para "I thought he"
	line "was going to"
	cont "kill her."

	para "his #MON!"

	para "How can anyone"
	line "withstand such"
	cont "forces of nature."

	para "We are doomed."
	done

FuchsiaCityTeacherText:
	text "The SAFARI ZONE is"
	line "now used as"
	cont "military training"
	cont "grounds."

	para "It is closed to"
	line "all civilians."
	done

FuchsiaCityTeacherText_Saved:
	text "You beat him!"

	para "You beat WALLACE"
	line "and his god like"
	cont "#MON!"

	para "You are so young."

	para "I hope the world"
	line "treats you right."

	para "I hope you will"
	line "always defend the"
	cont "helpless."

	para "Thank you <PLAYER>."

	para "The greatest of"
	line "CHAMPIONS!"
	done

InvadedFuchsiaCityTeacherText:
	text "WALLACE is in"
	line "the training"
	cont "grounds with his"
	cont "troops."

	para "I saw it."

	para "A tidal wave"
	line "crashed onto the"
	cont "shore."

	para "An earthquake"
	line "ripped the earth"
	cont "apart."

	para "The heavens split"
	line "and he descended on"
	cont "a living throne."

	para "His three gods"
	line "among #MON."

	para "None can defeat"
	line "him."
	done

FuchsiaCitySignText:
	text "FUCHSIA CITY"

	para "Behold! It's"
	line "Passion Pink!"
	done

FuchsiaGymSignText:
	text "FUCHSIA CITY"
	line "#MON GYM"
	cont "LEADER: JANINE"

	para "The Poisonous"
	line "Ninja Master"
	done

SafariZoneOfficeSignText:
	text "There's a notice"
	line "here…"

	para "SAFARI ZONE OFFICE"
	line "is closed until"
	cont "further notice."
	done

WardensHomeSignText:
	text "SAFARI ZONE"
	line "WARDEN'S HOME"
	done

SafariZoneClosedSignText:
	text "The position of"
	line "WARDEN is no"
	cont "longer required."
	done

NoLitteringSignText:
	text "No littering."

	para "Do so at your"
	line "own risk!"
	done
	
FuchsiaGymBlockScript:
    checkevent EVENT_BEAT_ELITE_FOUR
    iffalse .block
    end
.block
    turnobject PLAYER, UP
	opentext
	writetext FuchsiaGymBlockText
    waitbutton
    closetext
    applymovement PLAYER, Movement_FuchsiaGymTurnBack
    end

FuchsiaGymBlockText:
    text "The door is"
    line "locked."

    para "This GYM is only"
    line "accepting CHAMPION"
    cont "level challengers"
    cont "at this time."
    done

WarZoneAndSelfScript:
    checkevent EVENT_BEAT_SOLDIER_9
    iffalse .block
    sjump FuchsiaCitySelfScript
.block
    turnobject PLAYER, UP
	opentext
	writetext WarZoneBlockText
    waitbutton
    closetext
    applymovement PLAYER, Movement_FuchsiaGymTurnBack
    end

WarZoneBlockText:
    text "Training Grounds"
    line "are off limits."
    done

Movement_FuchsiaGymTurnBack:
	step DOWN
	step_end

BlockingSoldier1:
    jumptextfaceplayer BlockingSoldier1Text

BlockingSoldier2:
    jumptextfaceplayer BlockingSoldier2Text

BlockingSoldier1Text:
    text "The LEADER tried"
    line "to stop us."

    para "Hahaha!"

    para "WALLACE himself"
    line "showed her the"
    cont "power of HOEN."

    para "He took mercy on"
    line "the child and"
    cont "spared her life."

    para "I saw the fear"
    line "and awe in the"
    cont "peoples eyes at"
    cont "the sight of"
    cont "HOENs legendary"
    cont "#MON."

    para "ADMIRAL DRAKE made"
    line "easy work of"
    cont "everyone else."
    done

BlockingSoldier2Text:
    text "I saw the FUHRER"
    line "battle welding"
    cont "the great forces"
    cont "of HOEN."

    para "It was beautiful"
    line "watching the FIRE"
    cont "GYM LEADER on"
    cont "his knees before"
    cont "our FUHRER."
    done
    
FuchsiaCitySelfScript:
    checkevent EVENT_BEAT_FUCHSIA_SELF
    iftrue .end
    playmusic MUSIC_RUINS_OF_ALPH_RADIO
    pause 20
    appear FUCHSIACITY_SELF
    pause 5
    turnobject PLAYER, RIGHT
    opentext
    writetext FuchsiaSelfText1
    waitbutton
    closetext
    disappear FUCHSIACITY_SELF
    moveobject FUCHSIACITY_SELF, 17, 4
    appear FUCHSIACITY_SELF
    turnobject FUCHSIACITY_SELF, RIGHT
    pause 5
    turnobject PLAYER, LEFT
    opentext
    writetext FuchsiaSelfText2
    waitbutton
    closetext
    disappear FUCHSIACITY_SELF
    moveobject FUCHSIACITY_SELF, 18, 5
    appear FUCHSIACITY_SELF
    turnobject FUCHSIACITY_SELF, UP
    pause 5
    turnobject PLAYER, DOWN
    opentext
    writetext FuchsiaSelfText3
    waitbutton
    closetext
    disappear FUCHSIACITY_SELF
    moveobject FUCHSIACITY_SELF, 19, 4
    appear FUCHSIACITY_SELF
    pause 5
    turnobject FUCHSIACITY_SELF, LEFT
    turnobject PLAYER, RIGHT
    opentext
    writetext FuchsiaSelfText4
    waitbutton
    closetext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Female
    winlosstext FuchsiaSelfVictoryText, FuchsiaSelfLossText
    loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer CAL, CAL1
	startbattle
	ifequal LOSE, .lose
	sjump .over
.Female
    winlosstext FuchsiaSelfVictoryText, FuchsiaSelfLossText
    loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer CAL_F, CAL_F1
	startbattle
	ifequal LOSE, .lose
.over
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_RUINS_OF_ALPH_RADIO
	setevent EVENT_BEAT_FUCHSIA_SELF
	opentext
	writetext FuchsiaSelfText5
	waitbutton
	closetext
	special FadeOutMusic
	turnobject FUCHSIACITY_SELF, RIGHT
	opentext
	writetext FuchsiaSelfConfidenceText1
	waitbutton
	closetext
	turnobject FUCHSIACITY_SELF, DOWN
	opentext
	writetext FuchsiaSelfDefeatText1
	waitbutton
	closetext
	turnobject FUCHSIACITY_SELF, RIGHT
	opentext
	writetext FuchsiaSelfConfidenceText2
	waitbutton
	closetext
	turnobject FUCHSIACITY_SELF, DOWN
	opentext
	writetext FuchsiaSelfDefeatText2
	waitbutton
	closetext
	turnobject FUCHSIACITY_SELF, RIGHT
	opentext
	writetext FuchsiaSelfConfidenceText3
	waitbutton
	closetext
	turnobject FUCHSIACITY_SELF, DOWN
	opentext
	writetext FuchsiaSelfDefeatText3
	waitbutton
	closetext
	playmusic MUSIC_DRAGONS_DEN
    disappear FUCHSIACITY_SELF
    moveobject FUCHSIACITY_SELF, 18, 5
    appear FUCHSIACITY_SELF
    turnobject FUCHSIACITY_SELF, UP
    pause 5
    turnobject PLAYER, DOWN
    opentext
    writetext FuchsiaSelfBelieveText
    waitbutton
    closetext
	disappear FUCHSIACITY_SELF
	playmusic MUSIC_RED_INDIGO_PLATEAU
	special HealParty
.end
	end
.lose
    dontrestartmapmusic
    reloadmap
    playmusic MUSIC_RUINS_OF_ALPH_RADIO
	opentext
	writetext FuchsiaSelfText6
	waitbutton
	closetext
	applymovement PLAYER, FuchsiaMovement_PlayerDown
	pause 5
	disappear FUCHSIACITY_SELF
	playmusic MUSIC_RED_INDIGO_PLATEAU
	special HealParty
	end

FuchsiaMovement_PlayerDown:
    slow_step DOWN
    step_end

FuchsiaSelfText1:
    text "Listen to me!"
    done

FuchsiaSelfText2:
    text "Listen to me!"
    line "Listen to me!!"
    done

FuchsiaSelfText3:
    text "The HOEN army"
    line "are not like"
    cont "TEAM ROCKET."

    para "They are killers."

    para "WALLACE can"
    line "kill CHAMPIONS."

    para "He did with"
    line "STEVEN."
    done

FuchsiaSelfText4:
    text "WALLACE is in"
    line "there with his"
    cont "strongest troops."

    para "You are nothing"
    line "to them!"

    para "No other CHAMPIONS"
    line "are here."

    para "They know it is"
    line "suicide."

    para "You will die."
    done

FuchsiaSelfText5:
    text "You will take"
    line "Mums only child"
    cont "away from her."

    para "She will never"
    line "forgive you!"

    para "ELM is sending"
    line "you to your"
    cont "death!"
    done

FuchsiaSelfConfidenceText1:
    text "Mum and Dad need"
    line "me!"

    para "I will protect"
    line "them!"
    done

FuchsiaSelfDefeatText1:
    text "What was that!"

    para "No we will die!"
    done

FuchsiaSelfConfidenceText2:
    text "I have the power!"

    para "I am the CHAMPION"
    line "of HOEN!"

    para "I must try!"
    done

FuchsiaSelfDefeatText2:
    text "WALLACE kills"
    line "CHAMPIONS."

    para "We are another"
    line "nameless victim"
    cont "to him!"
    done

FuchsiaSelfConfidenceText3:
    text "He may kill me."

    para "My only purpose"
    line "now is to stop"
    cont "him."

    para "I will show him"
    line "we wont give up."

    para "I will use all"
    line "my might."
    done

FuchsiaSelfDefeatText3:
    text "You will fail!!!"
    done

FuchsiaSelfBelieveText:
    text "We are the only"
    line "hope for everyone"
    cont "we love."

    para "We will stop this"
    line "here and now!"

    para "If we don't..."

    para "No one will."

    para "There is no more"
    line "pain or fear."

    para "Only purpose."

    para "Go now and use"
    line "all of your"
    cont "power!"

    para "All of your"
    line "knowledge!"

    para "Every breath!"

    para "Every heartbeat!"

    para "You and your"
    line "#MON will"
    cont "bring an end to"
    cont "this war."
    done

FuchsiaSelfLossText:
    text "Put these foolish"
    line "ambitions to"
    cont "rest."
    done

FuchsiaSelfVictoryText:
    text "Please stop!"
    done

FuchsiaSelfText6:
    text "I only do this"
    line "because I care"
    cont "about you."

    para "Now go back"
    line "home where you"
    cont "will be safe."
    done

FuchsiaCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, FUCHSIA_MART, 2
	warp_event 22, 13, SAFARI_ZONE_MAIN_OFFICE, 1
	warp_event  8, 27, FUCHSIA_GYM, 1
	warp_event 11, 27, BILLS_BROTHERS_HOUSE, 1
	warp_event 19, 27, FUCHSIA_POKECENTER_1F, 1
	warp_event 19, 27, FUCHSIA_POKECENTER_1F, 1
	warp_event 19, 27, FUCHSIA_POKECENTER_1F, 1
	warp_event 37, 22, ROUTE_15_FUCHSIA_GATE, 1
	warp_event 37, 23, ROUTE_15_FUCHSIA_GATE, 2
	warp_event  7, 35, ROUTE_19_FUCHSIA_GATE, 1
	warp_event  8, 35, ROUTE_19_FUCHSIA_GATE, 2
	warp_event 18,  3, WAR_ZONE, 1

	def_coord_events
	coord_event 8, 28, SCENE_ALWAYS, FuchsiaGymBlockScript
	coord_event 18, 4, SCENE_ALWAYS, WarZoneAndSelfScript

	def_bg_events
	bg_event 21, 15, BGEVENT_READ, FuchsiaCitySign
	bg_event  5, 29, BGEVENT_READ, FuchsiaGymSign
	bg_event 25, 15, BGEVENT_READ, SafariZoneOfficeSign
	bg_event 27, 29, BGEVENT_READ, WardensHomeSign
	bg_event 17,  5, BGEVENT_READ, SafariZoneClosedSign
	bg_event 13, 15, BGEVENT_READ, NoLitteringSign
	bg_event 20, 27, BGEVENT_READ, FuchsiaCityPokecenterSign
	bg_event  6, 13, BGEVENT_READ, FuchsiaCityMartSign

	def_object_events
	object_event 23, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityYoungster, -1
	object_event 13,  8, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityPokefanM, -1
	object_event 16, 14, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaCityTeacher, -1
	object_event  8,  1, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityFruitTree, -1
	object_event 30,  2, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LatiasScript, EVENT_CAUGHT_LATIAS
	object_event  8, 28, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlockingSoldier1, EVENT_FIELD_MON_1
	object_event 22, 14, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlockingSoldier2, EVENT_FIELD_MON_2
	object_event 19, 4, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_LEFT, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMP_EVENT_1

