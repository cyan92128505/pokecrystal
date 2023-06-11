	object_const_def
	const OLIVINECITY_SAILOR1
	const OLIVINECITY_STANDING_YOUNGSTER
	const OLIVINECITY_SAILOR2
	const OLIVINECITY_OLIVINE_RIVAL
	const OLIVINECITY_OLIVINE_YUNA
	const OLIVINECITY_CRYSTAL

OlivineCity_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	callback MAPCALLBACK_OBJECTS, .Crystal

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_OLIVINE
	endcallback

.Crystal
    disappear OLIVINECITY_CRYSTAL
    endcallback

OlivineCityRivalSceneBottom:
    checkevent EVENT_BEAT_WHITNEY
    iffalse .end
    applymovement PLAYER, OlivineCity_PlayerUp
    sjump OlivineCityRivalSceneTop
.end
	end

OlivineCity_PlayerUp:
    step UP
    step_end

OlivineCityRivalSceneTop:
    checkevent EVENT_BEAT_WHITNEY
    iffalse .end
	turnobject PLAYER, LEFT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	playsound SFX_ENTER_DOOR
	appear OLIVINECITY_OLIVINE_RIVAL
	waitsfx
	applymovement OLIVINECITY_OLIVINE_RIVAL, OlivineCityRivalApproachesTopMovement
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext OlivineCityRivalText
	waitbutton
	closetext

	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, RIGHT
	appear OLIVINECITY_CRYSTAL
	applymovement OLIVINECITY_CRYSTAL, OlivineMovement_CrystalApproaches
	opentext
	writetext OlivineCrystalIntroText
	waitbutton
	closetext

	showemote EMOTE_SHOCK, OLIVINECITY_CRYSTAL, 15
	applymovement OLIVINECITY_CRYSTAL, OlivineMovement_CrystalConfrontSilver
	turnobject PLAYER, DOWN
	opentext
	writetext OlivineCrystalConfrontSilver
	waitbutton
	closetext

	applymovement OLIVINECITY_OLIVINE_RIVAL, OlivineMovement_SilverConfrontsCrystal
	opentext
	writetext OlivineSilverConfrontsCrystal
	waitbutton
	closetext

	applymovement OLIVINECITY_CRYSTAL, OlivineMovement_CrystalToSilver
	opentext
	writetext OlivineCrystalChallengeSilver
	waitbutton
	closetext

	opentext
	writetext OlivineSilverFightCrystal
	waitbutton
	closetext

	turnobject OLIVINECITY_CRYSTAL, UP
	opentext
	writetext OlivineCrystalGoodbye
	waitbutton
	closetext

	turnobject PLAYER, RIGHT
	follow OLIVINECITY_CRYSTAL, OLIVINECITY_OLIVINE_RIVAL
	applymovement OLIVINECITY_CRYSTAL, OlivineMovement_CrystalLeaves

	setscene SCENE_FINISHED
	disappear OLIVINECITY_OLIVINE_RIVAL
	disappear OLIVINECITY_CRYSTAL
	special RestartMapMusic
	variablesprite SPRITE_OLIVINE_RIVAL, SPRITE_SWIMMER_GUY
	special LoadUsedSpritesGFX
.end
	end

OlivineMovement_CrystalApproaches:
    big_step DOWN
    big_step DOWN
    big_step DOWN
    big_step DOWN
    big_step DOWN
    big_step LEFT
    big_step LEFT
    big_step LEFT
    big_step LEFT
    step_end

OlivineCrystalIntroText:
    text "Hey <PLAYER>."

    para "How are you"
    line "doing?"

    para "I got over my"
    line "GHOST fear!"

    para "I even caught a"
    line "real cute GHOST"
    cont "#MON."

    para "It was all thanks"
    line "to you."

    para "Hey!"

    para "I hear TEAM"
    line "ROCKET have been"
    cont "sighted about.."

    para "Hang on!"
    done

OlivineMovement_CrystalConfrontSilver:
    big_step DOWN
    turn_head LEFT
    step_end

OlivineCrystalConfrontSilver:
    text "I know you."

    para "You stole a"
    line "#MON from"
    cont "PROF.ELM!"

    para "You are a pathetic"
    line "person. You don't"
    cont "even deserve to be"
    cont "called a trainer!"
    done

OlivineMovement_SilverConfrontsCrystal:
    step DOWN
    turn_head RIGHT
    step_end

OlivineSilverConfrontsCrystal:
    text "Yeah I took the"
    line "#MON."

    para "It longed for a"
    line "strong trainer."

    para "It certinly would"
    line "not have found one"
    cont "in NEW BARK TOWN."

    para "You two are proof"
    line "of that."
    done

OlivineMovement_CrystalToSilver:
    step LEFT
    step_end

OlivineCrystalChallengeSilver:
    text "...."

    para "Fight me then."

    para "And the difference"
    line "between our #MON"
    cont "will be clear."

    para "Yours will never"
    line "fight to their"
    cont "fullest for you."

    para "Because you are"
    line "a thief and a"
    cont "coward."
    done

OlivineSilverFightCrystal:
    text "How much can you"
    line "really care about"
    cont "your #MON."

    para "If you did you"
    line "wouldn't willingly"
    cont "let me beat them."
    done

OlivineCrystalGoodbye:
    text "<PLAYER> you take"
    line "care."

    para "I'm going to deal"
    line "with this bully"
    cont "once and for all!"
    done

OlivineMovement_CrystalLeaves:
    step RIGHT
    step RIGHT
    step UP
    step RIGHT
    step RIGHT
    step RIGHT
    step UP
    step UP
    step UP
    step UP
    step UP
    step_end

OlivineCitySailor1Script:
	jumptextfaceplayer OlivineCitySailor1Text

OlivineCityStandingYoungsterScript:
	faceplayer
	opentext
	random 2
	ifequal 0, .FiftyFifty
	writetext OlivineCityStandingYoungsterPokegearText
	waitbutton
	closetext
	end

.FiftyFifty:
	writetext OlivineCityStandingYoungsterPokedexText
	waitbutton
	closetext
	end

OlivineCitySailor2Script:
	jumptextfaceplayer OlivineCitySailor2Text

OlivineCitySign:
	jumptext OlivineCitySignText

OlivineCityPortSign:
	jumptext OlivineCityPortSignText

OlivineGymSign:
	jumptext OlivineGymSignText

OlivineLighthouseSign:
	jumptext OlivineLighthouseSignText

OlivineCityBattleTowerSign:
	jumptext OlivineCityBattleTowerSignText

OlivineCityPokecenterSign:
	jumpstd PokecenterSignScript

OlivineCityMartSign:
	jumpstd MartSignScript

OlivineCityRivalApproachesTopMovement:
	step DOWN
	step RIGHT
	step RIGHT
	step_end

OlivineCityRivalApproachesBottomMovement:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step_end

OlivineCityRivalLeavesTopMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

OlivineCityRivalLeavesBottomMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

OlivineCityPlayerStepsAsideTopMovement:
	step DOWN
	turn_head UP
	step_end

OlivineCityPlayerStepsAsideBottomMovement:
	step UP
	turn_head DOWN
	step_end

OlivineCityRivalText:
	text "…"

	para "You again?"

	para "There's no need to"
	line "panic. I don't"

	para "bother with wimps"
	line "like you."

	para "Speaking of weak-"
	line "lings, the city's"

	para "GYM LEADER isn't"
	line "here."

	para "Supposedly taking"
	line "care of a sick"

	para "#MON at the"
	line "LIGHTHOUSE."

	para "Humph! Boo-hoo!"
	line "Just let sick"
	cont "#MON go!"

	para "A #MON that"
	line "can't battle is"
	cont "worthless!"

	para "Why don't you go"
	line "train at the"
	cont "LIGHTHOUSE?"

	para "Who knows. It may"
	line "make you a bit"
	cont "less weak!"
	done

OlivineCitySailor1Text:
	text "Dark roads are"
	line "dangerous at"
	cont "night."

	para "But in the pitch-"
	line "black of night,"

	para "the sea is even"
	line "more treacherous!"

	para "Without the beacon"
	line "of the LIGHTHOUSE"

	para "to guide it, no"
	line "ship can sail."
	done

OlivineCityStandingYoungsterPokegearText:
	text "That thing you"
	line "have--it's a #-"
	cont "GEAR, right? Wow,"
	cont "that's cool."
	done

OlivineCityStandingYoungsterPokedexText:
	text "Wow, you have a"
	line "#DEX!"

	para "That is just so"
	line "awesome."
	done

OlivineCitySailor2Text:
	text "The sea is sweet!"

	para "Sunsets on the sea"
	line "are marvelous!"

	para "Sing with me! "
	line "Yo-ho! Blow the"
	cont "man down!…"
	done

OlivineCitySignText:
	text "OLIVINE CITY"

	para "The Port Closest"
	line "to Foreign Lands"
	done

OlivineCityPortSignText:
	text "OLIVINE PORT"
	line "FAST SHIP PIER"
	done

OlivineGymSignText:
	text "OLIVINE CITY"
	line "#MON GYM"
	cont "LEADER: JASMINE"

	para "The Steel-Clad"
	line "Defense Girl"
	done

OlivineLighthouseSignText:
	text "OLIVINE LIGHTHOUSE"
	line "Also known as the"
	cont "GLITTER LIGHTHOUSE"
	done

OlivineCityBattleTowerSignText:
	text "BATTLE TOWER AHEAD"
	line "Opening Now!"
	done

OlivineCityBattleTowerSignText_NotYetOpen: ; unreferenced
; originally shown when the Battle Tower was closed
	text "BATTLE TOWER AHEAD"
	done
	
YunaScript:
    faceplayer
	opentext
	checkevent EVENT_BEAT_YUNA_1
	iftrue .FightDone
.fight
	writetext YunaSeenText
	waitbutton
	closetext
	checkevent EVENT_BEAT_YUNA_1
	iftrue .dontAsk
	opentext
	writetext YunaOfferFightText
	waitbutton
	yesorno
	iffalse .refused
	closetext
.dontAsk
	winlosstext YunaBeatenText, YunaWinsText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer KIMONO_GIRL, YUNA_1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_YUNA_1
	end
.FightDone:
	writetext YunaAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextYuna
	yesorno
	iftrue .fight
.refused
	writetext RematchRefuseTextYuna
	waitbutton
	closetext
	end
YunaSeenText:
    text "Hello."

    para "I am YUNA."

    para "I've heard that"
    line "a war is coming."

    para "I can see the"
    line "suffering in"
    cont "the faces of the"
    cont "people."

    para "I can tell you"
    line "are hurting inside."

    para "You miss your dad."

    para "I miss mine too."

    para "But as long as"
    line "you remember him"
    cont "he is never"
    cont "really gone."
    done
YunaBeatenText:
    text "Thank you"
    done
YunaWinsText:
    text "Thank you"
    done
YunaOfferFightText:
    text "Would you be"
    line "willing to train"
    cont "with me?"
    done
YunaAfterBattleText:
    text "You are much"
    line "stronger than me."

    para "I wish you good"
    line "luck on your"
    cont "journey."

    para "I hope one of us"
    line "can bring the"
    cont "calm to this"
    cont "world."
    done
RematchTextYuna:
    text "Would you like to"
    line "train again?"
    done
RematchRefuseTextYuna:
    text "Good luck."
    done

OlivineCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 21, OLIVINE_POKECENTER_1F, 1
	warp_event 10, 11, OLIVINE_GYM, 1
	warp_event 25, 11, OLIVINE_TIMS_HOUSE, 1
	warp_event  0,  0, OLIVINE_TIMS_HOUSE, 1 ; inaccessible
	warp_event 29, 11, OLIVINE_PUNISHMENT_SPEECH_HOUSE, 1
	warp_event 13, 15, OLIVINE_GOOD_ROD_HOUSE, 1
	warp_event  7, 21, OLIVINE_CAFE, 1
	warp_event 19, 17, OLIVINE_MART, 2
	warp_event 29, 27, OLIVINE_LIGHTHOUSE_1F, 1
	warp_event 19, 27, OLIVINE_PORT_PASSAGE, 1
	warp_event 20, 27, OLIVINE_PORT_PASSAGE, 2

	def_coord_events
	coord_event 13, 12, SCENE_DEFAULT, OlivineCityRivalSceneTop
	coord_event 13, 13, SCENE_DEFAULT, OlivineCityRivalSceneBottom

	def_bg_events
	bg_event 17, 11, BGEVENT_READ, OlivineCitySign
	bg_event 20, 24, BGEVENT_READ, OlivineCityPortSign
	bg_event  7, 11, BGEVENT_READ, OlivineGymSign
	bg_event 30, 28, BGEVENT_READ, OlivineLighthouseSign
	bg_event  3, 23, BGEVENT_READ, OlivineCityBattleTowerSign
	bg_event 14, 21, BGEVENT_READ, OlivineCityPokecenterSign
	bg_event 20, 17, BGEVENT_READ, OlivineCityMartSign

	def_object_events
	object_event 26, 27, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCitySailor1Script, -1
	object_event 20, 13, SPRITE_STANDING_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineCityStandingYoungsterScript, -1
	object_event 17, 21, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCitySailor2Script, -1
	object_event 10, 11, SPRITE_OLIVINE_RIVAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_OLIVINE_CITY
	object_event  6, 25, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, YunaScript, -1
	object_event 18,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMP_EVENT_1


