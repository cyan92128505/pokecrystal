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
	ifequal LOSE, .lose
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
.lose
    special HealParty
    reloadmap
    opentext
    writetext YunaWinAfterBattleText
    waitbutton
    closetext
    end
YunaWinAfterBattleText:
    text "Hey it's ok"

    para "You just have"
    line "to keep smiling."

    para "even when it"
    line "hurts inside."
    done

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

DBZRolePlayScript:
    faceplayer
    opentext
    writetext DBZIntroText
    yesorno
    iffalse .refused
    special TryQuickSave
    iffalse .refused
    setval 0
    writemem wHandOfGod
	setval WEATHER_NONE
	writemem wFieldWeather
	special FadeOutMusic
	playmusic MUSIC_MISTY_MOUNTAIN
    writetext DBZHeroOrVillainChoiceText
	loadmenu .DBZHeroOrVillainMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Hero
	ifequal 2, .Villain
	closetext
	end
.DBZHeroOrVillainMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, 5
	dw .DBZHeroOrVillainMenuData
	db 1 ; default option
.DBZHeroOrVillainMenuData:
	db STATICMENU_CURSOR ; flags
	dn 2, 1 ; rows, columns
	db 5 ; spacing
	dba .DBZHeroOrVillainText
	dbw BANK(@), NULL
.DBZHeroOrVillainText:
	db "HEROES@"
	db "VILLAINS@"

.Hero
    opentext
    writetext DBZCh1HeroText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval DBZ_CH1_HERO
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_KANTO_GYM_LEADER_BATTLE
	writemem wBattleMusicOverride
	winlosstext DBZVictoryText, DBZDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, DBZ_CH1_VILLAIN
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext DBZCh2HeroText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval DBZ_CH2_HERO
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_ARCHIE_BATTLE
	writemem wBattleMusicOverride
	winlosstext DBZVictoryText, DBZDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, DBZ_CH2_VILLAIN
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext DBZCh3HeroText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval DBZ_CH3_HERO
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_XVZ
	writemem wBattleMusicOverride
	winlosstext DBZVictoryText, DBZDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, DBZ_CH2_VILLAIN
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext DBZBreakText
    yesorno
    closetext
    iffalse .stop

    opentext
    writetext DBZCh4HeroText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval DBZ_CH4_HERO
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_RED_DUNGEON
	writemem wBattleMusicOverride
	winlosstext DBZVictoryText, DBZDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, DBZ_CH4_VILLAIN
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_MISTY_MOUNTAIN

	opentext
    writetext DBZGokuOrVegetaHeroText
	loadmenu .DBZGokuOrVegetaMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .GokuHero
	ifequal 2, .VegetaHero
	closetext
	end

.GokuHero
    opentext
    writetext DBZCh5GokuHeroText
    waitbutton
    closetext
	setval ROLE_PLAYER_SHINY
	writemem wOtherTrainerClass
	setval DBZ_CH5_GOKU
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_GUILE_THEME
	writemem wBattleMusicOverride
	winlosstext DBZVictoryText, DBZDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, DBZ_CH4_VILLAIN
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_MISTY_MOUNTAIN

	opentext
	writetext DBZConcText
	waitbutton
	closetext

    opentext
    writetext DBZBonusRoundText
    yesorno
    closetext
    iffalse .stop

	sjump .HeroEnd

.VegetaHero
    opentext
    writetext DBZCh5VegetaHeroText
    waitbutton
    closetext
	setval ROLE_PLAYER_SHINY
	writemem wOtherTrainerClass
	setval DBZ_CH5_VEGETA
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_GUILE_THEME
	writemem wBattleMusicOverride
	winlosstext DBZVictoryText, DBZDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, DBZ_CH4_VILLAIN
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_MISTY_MOUNTAIN

	opentext
	writetext DBZConcText
	waitbutton
	closetext

    opentext
    writetext DBZBonusRoundText
    yesorno
    closetext
    iffalse .stop

.HeroEnd
    opentext
    writetext DBZCh6Text
    waitbutton
    closetext
	setval ROLE_PLAYER_SHINY
	writemem wOtherTrainerClass
	setval DBZ_CH5_GOKU
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_FINAL_BATTLE
	writemem wBattleMusicOverride
	winlosstext DBZVictoryText, DBZDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_SHINY, DBZ_CH5_VEGETA
	startbattle
	reloadmap

    sjump .DBZEnd

.Villain
    opentext
    writetext DBZCh1VillainText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval DBZ_CH1_VILLAIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_KANTO_GYM_LEADER_BATTLE
	writemem wBattleMusicOverride
	winlosstext DBZVictoryText, DBZDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, DBZ_CH1_HERO
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext DBZCh2VillainText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval DBZ_CH2_VILLAIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_ARCHIE_BATTLE
	writemem wBattleMusicOverride
	winlosstext DBZVictoryText, DBZDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, DBZ_CH2_HERO
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext DBZCh3VillainText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval DBZ_CH2_VILLAIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_XVZ
	writemem wBattleMusicOverride
	winlosstext DBZVictoryText, DBZDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, DBZ_CH3_HERO
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext DBZBreakText
    yesorno
    closetext
    iffalse .stop

    opentext
    writetext DBZCh4VillainText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval DBZ_CH4_VILLAIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_RED_DUNGEON
	writemem wBattleMusicOverride
	winlosstext DBZVictoryText, DBZDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_WEAK_BATTLE
	loadtrainer ROLE_PLAYER_NORMAL, DBZ_CH4_HERO
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_MISTY_MOUNTAIN

	opentext
    writetext DBZGokuOrVegetaVillainText
	loadmenu .DBZGokuOrVegetaMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .GokuVillain
	ifequal 2, .VegetaVillain
	closetext
	end

.GokuVillain
    opentext
    writetext DBZCh5VegetaVillainText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval DBZ_CH4_VILLAIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_GUILE_THEME
	writemem wBattleMusicOverride
	winlosstext DBZVictoryText, DBZDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_SHINY, DBZ_CH5_VEGETA
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_MISTY_MOUNTAIN

	opentext
	writetext DBZConcText
	waitbutton
	closetext

    opentext
    writetext DBZBonusRoundText
    yesorno
    closetext
    iffalse .stop

	sjump .VillainEnd

.VegetaVillain
    opentext
    writetext DBZCh5GokuVillainText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval DBZ_CH4_VILLAIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_GUILE_THEME
	writemem wBattleMusicOverride
	winlosstext DBZVictoryText, DBZDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_SHINY, DBZ_CH5_GOKU
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_MISTY_MOUNTAIN

	opentext
	writetext DBZConcText
	waitbutton
	closetext

    opentext
    writetext DBZBonusRoundText
    yesorno
    closetext
    iffalse .stop

.VillainEnd
    opentext
    writetext DBZCh6Text
    waitbutton
    closetext
	setval ROLE_PLAYER_SHINY
	writemem wOtherTrainerClass
	setval DBZ_CH5_VEGETA
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_FINAL_BATTLE
	writemem wBattleMusicOverride
	winlosstext DBZVictoryText, DBZDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_SHINY, DBZ_CH5_GOKU
	startbattle
	reloadmap

.DBZEnd
    playmusic MUSIC_VIOLET_CITY

    checkevent EVENT_BEAT_ROLEPLAY_3
    iftrue .skipPrize
    opentext
    writetext RolePlay3PrizeText
    waitbutton
    verbosegiveitem FOCUS_SASH
    closetext
    setevent EVENT_BEAT_ROLEPLAY_3
.skipPrize

	opentext
	writetext DBZRolePlayEndText
	waitbutton
	closetext
	special LoadPokemonData
	special HealParty
	end

.stop
    playmusic MUSIC_VIOLET_CITY
	opentext
	writetext DBZStopText
	waitbutton
	closetext
	special LoadPokemonData
	special HealParty
	end

.refused
    opentext
    writetext DBZRolePlayRefusedText
    waitbutton
    closetext
    end

.DBZGokuOrVegetaMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, 5
	dw .DBZGokuOrVegetaMenuData
	db 1 ; default option
.DBZGokuOrVegetaMenuData:
	db STATICMENU_CURSOR ; flags
	dn 2, 1 ; rows, columns
	db 5 ; spacing
	dba .DBZGokuOrVegetaText
	dbw BANK(@), NULL
.DBZGokuOrVegetaText:
	db "GOKU@"
	db "VEGETA@"

RolePlay3PrizeText:
    text "We finished a"
    line "new game."

    para "Here take this"
    line "for playing."
    done

DBZIntroText:
    text "Are you going to"
    line "CIANWOOD?"

    para "Apparently the"
    line "GYM LEADER is a"
    cont "huge DBZ fan."

    para "So I decided to"
    line "have a DBZ role"
    cont "play to get in"
    cont "the mood."

    para "Would you like to"
    line "play?"

    para "You'll need to"
    line "Save your game?"
    done

DBZHeroOrVillainChoiceText:
    text "Would you like to"
    line "play as the Heroes"
    cont "or the Villains?"
    done

DBZCh1HeroText:
    text "You have enjoyed"
    line "5 years of peace."

    para "You have a wife"
    line "and a son."

    para "Life is good."

    para "It's been a long"
    line "time since you"
    cont "saved the planet"
    cont "from the evil"
    cont "PICCOLO."

    para "You are GOKU."

    para "The hero of earth."

    para "You are visiting"
    line "some old friends"
    cont "when a stranger"
    cont "appears."

    para "He can fly and"
    line "is wearing combat"
    cont "armour."

    para "He claims to be"
    line "an alien."

    para "And he claims to"
    line "be your brother"
    cont "RADITZ."

    para "He tells you to"
    line "kill 100 humans"
    cont "by tomorrow."

    para "You refuse!"

    para "Next thing you"
    line "you know you are"
    cont "on the ground"
    cont "and he has your"
    cont "son."

    para "You can't match"
    line "him."

    para "For the first"
    line "time in your life"
    cont "you are helpless."

    para "Only by teaming up"
    line "with your old"
    cont "enemy PICCOLO will"
    cont "you have a chance."

    para "Old rivals unite"
    line "against a common"
    cont "foe."
    done

DBZCh1VillainText:
    text "Your space pod"
    line "lands on Earth."

    para "A small planet"
    line "full of weak"
    cont "life forms."

    para "As you emerge, a"
    line "man with something"
    cont "he might consider"
    cont "a weapon appears."

    para "A metal tube"
    line "propels a small"
    cont "projectile in"
    cont "your direction."

    para "It moves slow."

    para "You catch it and"
    line "flick it back."

    para "Killing the weak"
    line "creature."

    para "You are here for"
    line "your brother."

    para "When you find him"
    line "you are disgusted"
    cont "at how weak he is."

    para "When he refuses to"
    line "come with you, you"
    cont "take his son."

    para "He will come with"
    line "you one way or"
    cont "another."

    para "Your brother"
    line "approaches meaning"
    cont "to fight."

    para "And it seems he"
    line "is not alone."
    done

DBZCh2HeroText:
    text "By fighting as"
    line "one, you and"
    cont "PICCOLO defeat"
    cont "RADITZ."

    para "However you are"
    line "fatally injured."

    para "With his last"
    line "breath RADITZ"
    cont "gloats that his"
    cont "friends are far"
    cont "stronger than"
    cont "him and they are"
    cont "coming."

    para "You pass away."

    para "You find yourself"
    line "in OTHERWORLD."

    para "An afterlife where"
    line "you will continue"
    cont "to train until"
    cont "your friends can"
    cont "resurrect you with"
    cont "the magical DRAGON"
    cont "BALLS."

    para "Over the next"
    line "year you and your"
    cont "friends train."

    para "Then they arrive."

    para "Two of them."

    para "They begin killing"
    line "right away."

    para "You haven't been"
    line "wished back yet."

    para "Your friends try"
    line "to stop them."

    para "Including your"
    line "young son."
    done

DBZCh2VillainText:
    text "Together the two"
    line "fighters are too"
    cont "much."

    para "They fatally"
    line "injure you."

    para "Your brother"
    line "sacrificed himself"
    cont "to do it."

    para "But you have the"
    line "last laugh."

    para "Your friends are"
    line "far stronger than"
    cont "you and they are"
    cont "coming to avenge"
    cont "you."

    para "Deep in space two"
    line "fierce warriors"
    cont "head for earth."

    para "They are the last"
    line "of their kind."

    para "And they live to"
    line "fight."

    para "You are VEGETA."

    para "Prince of your"
    line "dead race."

    para "And destroyer"
    line "of planets."

    para "Your pod lands on"
    line "earth."

    para "Your partner NAPPA"
    line "emerges first."

    para "You are in a city"
    line "full of people."

    para "Men, women and"
    line "children."

    para "All looking at"
    line "you."

    para "Insects."

    para "With a flick of"
    line "your finger all"
    cont "their lives end."

    para "Only a crater"
    line "remains."

    para "A group arrives."

    para "Stronger than the"
    line "rest."

    para "They mean to stop"
    line "you."

    para "You will crush"
    line "them without a"
    cont "second thought."
    done

DBZCh3HeroText:
    text "You sense the"
    line "lives of your"
    cont "friends fade."

    para "One by one."

    para "Only PICOLLO"
    line "and GOHAN, your"
    cont "son remain."

    para "You feel a"
    line "sudden change."

    para "You are alive"
    line "again!"

    para "With your new"
    line "power you fly"
    cont "to the battle."

    para "There are two"
    line "enemies."

    para "As the larger"
    line "one prepares a"
    cont "lethal blow for"
    cont "your son."

    para "You sweep in."

    para "Everyone is"
    line "shocked to see"
    cont "you."

    para "All you notice"
    line "are the bodies"
    cont "of your friends."

    para "An inferno erupts"
    line "within you."

    para "You must bring"
    line "an end to this."
    done

DBZCh3VillainText:
    text "One after another"
    line "Your foes die."

    para "You are truly"
    line "the mightiest"
    cont "of races."

    para "You feel no"
    line "pleasure."

    para "Unlike NAPPA"
    line "you are too"
    cont "disciplined to"
    cont "allow such an"
    cont "indulgence."

    para "Only the alien"
    line "and the child"
    cont "remain."

    para "The child is"
    line "incredibly strong"
    cont "for his age."

    para "Alas he shall"
    line "never live to"
    cont "see his potential."

    para "NAPPA is about"
    line "to finish up this"
    cont "mess."

    para "What is this!"

    para "A massive power"
    line "heading this way"
    cont "and fast!"

    para "NAPPA is knocked"
    line "to the ground at"
    cont "your feet."

    para "A new warrior"
    line "stands before you."

    para "You can tell he"
    line "is one of you."

    para "It must be the"
    line "brother of RADITZ."

    para "How did he live?"

    para "His power level."

    para "It surges."

    para "It's over 9000!"

    para "He prepares to"
    line "attack."

    para "You ready yourself"
    line "for a real fight."
    done

DBZCh4HeroText:
    text "You ready a"
    line "killing blow for"
    cont "VEGETA."

    para "But it feels"
    line "wrong to kill."

    para "You let him call"
    line "his pod and flee."

    para "You secretly hope"
    line "to fight him"
    cont "again one day."

    para "PICCOLO is dead."

    para "This means the"
    line "DRAGON BALLS are"
    cont "gone and you"
    cont "can't wish your"
    cont "friends back."

    para "You need to head"
    line "for his home"
    cont "planet to acquire"
    cont "more."

    para "You travel with"
    line "GOHAN, KRILLIN"
    cont "and a scientist"
    cont "BULMA."

    para "The journey takes"
    line "months."

    para "You train all the"
    line "way."

    para "You arrive on a"
    line "dead planet."

    para "Almost no life"
    line "left at all."

    para "You sense a power."

    para "Not VEGETA."

    para "Something evil."

    para "Its power feels"
    line "like an endless"
    cont "abyss. A black"
    cont "hole of evil."

    para "You find VEGETA."

    para "He is terrified."

    para "FRIEZA Emporer"
    line "of the universe"
    cont "is here."

    para "He heard about the"
    line "DRAGON BALLS."

    para "VEGETA has stolen"
    line "a DRAGON BALL so"
    cont "FRIEZA can't make"
    cont "his wish."

    para "You feel your"
    line "knees weaken."

    para "FRIEZA is here."

    para "He is happy"
    line "to find some"
    cont "creatures left"
    cont "alive."

    para "He intends to"
    line "torture all of"
    cont "you before"
    cont "killing you."

    para "You and VEGETA"
    line "team up to stop"
    cont "him."
    done

DBZCh4VillainText:
    text "This fighter is"
    line "too strong!"

    para "NAPPA is killed."

    para "And now VEGETA"
    line "is about to die."

    para "What's this."

    para "The fool is"
    line "letting him go."

    para "He calls his"
    line "pod and escapes."

    para "He is horribly"
    line "injured."

    para "On a distant world"
    line "the Emperor of all"
    cont "universe swirls"
    cont "wine in a glass."

    para "You are lord"
    line "FRIEZA."

    para "And you are bored."

    para "A servant comes."

    para "He speaks of magic"
    line "balls that can"
    cont "grant a wish."

    para "You feel a sudden"
    line "excitement."

    para "You could become"
    line "immortal!"

    para "You kill the"
    line "servant for a"
    cont "moment of fun."

    para "Then head to the"
    line "planet with these"
    cont "DRAGON BALLS."

    para "You waste no time"
    line "killing everything"
    cont "that moves, or"
    cont "pleas for mercy."

    para "You love killing."

    para "It is the only"
    line "pleasure you"
    cont "still feel."

    para "There is one ball"
    line "missing."

    para "You sense a life"
    line "form."

    para "In a moment you"
    line "are there."

    para "Ah VEGETA, and he"
    line "has some friends"
    cont "you don't"
    cont "recognise."

    para "Now to kill them"
    line "and make a wish!"
    done

DBZGokuOrVegetaHeroText:
    text "Things seem"
    line "dire."

    para "Who are you"
    line "rooting for?"
    done

DBZGokuOrVegetaVillainText:
    text "Who will you"
    line "kill first?"
    done

DBZCh5GokuHeroText:
    text "FRIEZA is far"
    line "beyond anything"
    cont "you can hope to"
    cont "survive against."

    para "A flash of light!"

    para "VEGETA falls to"
    line "the ground."

    para "He fights the"
    line "inevitable for a"
    cont "moment."

    para "He is gone."

    para "Another flash."

    para "No KRILLIN!"

    para "He is gone."

    para "FRIEZAS finger"
    line "moves..."

    para "Towards GOHAN."

    para "The exhaustion and"
    line "pain disappears"
    cont "instantly."

    para "You feel something"
    line "taking over."

    para "You don't fight"
    line "it."

    para "You open your"
    line "eyes for the"
    cont "first time."

    para "A new warrior."

    para "One not seen in"
    line "millennia."

    para "A SUPER SAIYAN!"

    para "Your body moves"
    line "by itself."

    para "Toward FRIEZA."
    done

DBZCh5VegetaHeroText:
    text "FRIEZA is far"
    line "beyond anything"
    cont "you can hope to"
    cont "survive against."

    para "A flash of light!"

    para "GOKU falls to"
    line "the ground."

    para "He fights the"
    line "inevitable for a"
    cont "moment."

    para "He is gone."

    para "FRIEZA laughs."

    para "He died just"
    line "like your father"
    cont "did."

    para "You SAIYANS are"
    line "too weak to"
    cont "survive."

    para "That's why I"
    line "cleaned up the"
    cont "universe by"
    cont "destroying your"
    cont "planet."

    para "The words hit"
    line "you in your core."

    para "The exhaustion and"
    line "pain disappears"
    cont "instantly."

    para "You feel something"
    line "taking over."

    para "You don't fight"
    line "it."

    para "You open your"
    line "eyes for the"
    cont "first time."

    para "A new warrior."

    para "One not seen in"
    line "millennia."

    para "A SUPER SAIYAN!"

    para "Your body moves"
    line "by itself."

    para "Toward FRIEZA."
    done

DBZCh5VegetaVillainText:
    text "You extend your"
    line "finger and with"
    cont "a flash of light."

    para "GOKU falls dead."

    para "How easy."

    para "You tell VEGETA.."

    para "He died just"
    line "like your father"
    cont "did."

    para "You SAIYANS are"
    line "too weak to"
    cont "survive."

    para "That's why I"
    line "cleaned up the"
    cont "universe by"
    cont "destroying your"
    cont "planet."

    para "What's this!"

    para "VEGETAs power"
    line "is surging!"

    para "He is transformed!"

    para "He glows golden."

    para "But you are not"
    line "afraid."

    para "You are the"
    line "strongest in the"
    cont "universe!"
    done

DBZCh5GokuVillainText:
    text "You extend your"
    line "finger and with"
    cont "a flash of light."

    para "VEGETA falls dead."

    para "How easy."

    para "You need another."

    para "KRILLIN explodes."

    para "that felt good."

    para "Such insignificant"
    line "insects."

    para "What's this!"

    para "GOKUs power"
    line "is surging!"

    para "He is transformed!"

    para "He glows golden."

    para "But you are not"
    line "afraid."

    para "You are the"
    line "strongest in the"
    cont "universe!"
    done

DBZConcText:
    text "FRIEZA was at"
    line "last defeated."

    para "The DRAGON BALLS"
    line "were used to"
    cont "revive everyone"
    cont "who was ever"
    cont "killed by him"
    cont "and his army."
    done

DBZCh6Text:
    text "GOKU and VEGETA"
    line "trained together"
    cont "and both reached"
    cont "SUPER SAIYAN."

    para "They push each"
    line "other beyond"
    cont "their limits."

    para "They have one"
    line "last battle to"
    cont "decide who is"
    cont "truly the best."
    done

DBZRolePlayEndText:
    text "GOKU and VEGETA"
    line "became close"
    cont "rivals."

    para "And close friends."

    para "What a story!"

    para "I need a rest"
    line "after that."

    para "I'm sure we will"
    line "meet again for"
    cont "another game."
    done

DBZRolePlayRefusedText:
    text "It'll be fun."

    para "I promise."
    done

DBZVictoryText:
    text "Victory!"
    done

DBZDefeatText:
    text "Defeat!"
    done

DBZBreakText:
    text "Do you need to"
    line "go or would you"
    cont "like to continue"
    cont "to the second"
    cont "half of the story?"
    done

DBZBonusRoundText:
    text "That's the end"
    line "of the story."

    para "But would you"
    line "like to have a"
    cont "special bonus"
    cont "round?"
    done

DBZStopText:
    text "OK we will leave"
    line "it there then."

    para "Maybe we can do"
    line "the whole story"
    cont "next time."
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
	object_event  6, 25, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, YunaScript, EVENT_BEAT_ELITE_FOUR
	object_event 18,  7, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMP_EVENT_1
	object_event 10, 22, SPRITE_WILL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, DBZRolePlayScript, -1
