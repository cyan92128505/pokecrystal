	object_const_def
	const AZALEATOWN_AZALEA_ROCKET1
	const AZALEATOWN_GRAMPS
	const AZALEATOWN_TEACHER
	const AZALEATOWN_YOUNGSTER
	const AZALEATOWN_SLOWPOKE1
	const AZALEATOWN_SLOWPOKE2
	const AZALEATOWN_SLOWPOKE3
	const AZALEATOWN_SLOWPOKE4
	const AZALEATOWN_FRUIT_TREE
	const AZALEATOWN_SILVER
	const AZALEATOWN_AZALEA_ROCKET3
	const AZALEATOWN_KURT_OUTSIDE

AzaleaTown_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_AZALEATOWN_NOTHING
	scene_script .DummyScene1 ; SCENE_AZALEATOWN_RIVAL_BATTLE
	scene_script .DummyScene2 ; SCENE_AZALEATOWN_KURT_RETURNS_GS_BALL

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .Flypoint

.DummyScene0:
	end

.DummyScene1:
	end

.DummyScene2:
	end

.Flypoint:
	setflag ENGINE_FLYPOINT_AZALEA
	endcallback

AzaleaTownRivalBattleScene1:
	moveobject AZALEATOWN_SILVER, 11, 11
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear AZALEATOWN_SILVER
	applymovement AZALEATOWN_SILVER, AzaleaTownRivalBattleApproachMovement1
	turnobject PLAYER, DOWN
	sjump AzaleaTownRivalBattleScript

AzaleaTownRivalBattleScene2:
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear AZALEATOWN_SILVER
	applymovement AZALEATOWN_SILVER, AzaleaTownRivalBattleApproachMovement2
	turnobject PLAYER, UP
AzaleaTownRivalBattleScript:
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext AzaleaTownRivalBeforeText
	waitbutton
	closetext
	setevent EVENT_RIVAL_AZALEA_TOWN
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext AzaleaTownRivalWinText, AzaleaTownRivalLossText
	setlasttalked AZALEATOWN_SILVER
	loadtrainer RIVAL1, RIVAL1_2_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Totodile:
	winlosstext AzaleaTownRivalWinText, AzaleaTownRivalLossText
	setlasttalked AZALEATOWN_SILVER
	loadtrainer RIVAL1, RIVAL1_2_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Chikorita:
	winlosstext AzaleaTownRivalWinText, AzaleaTownRivalLossText
	setlasttalked AZALEATOWN_SILVER
	loadtrainer RIVAL1, RIVAL1_2_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.AfterBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext AzaleaTownRivalAfterText
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	applymovement AZALEATOWN_SILVER, AzaleaTownRivalBattleExitMovement
	playsound SFX_EXIT_BUILDING
	disappear AZALEATOWN_SILVER
	setscene SCENE_AZALEATOWN_NOTHING
	waitsfx
	playmapmusic
	end

AzaleaTownRocket1Script:
	jumptextfaceplayer AzaleaTownRocket1Text

AzaleaTownRocket2Script:
	jumptextfaceplayer AzaleaTownRocket2Text

AzaleaTownGrampsScript:
	faceplayer
	opentext
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue .ClearedWell
	writetext AzaleaTownGrampsTextBefore
	waitbutton
	closetext
	end

.ClearedWell:
	writetext AzaleaTownGrampsTextAfter
	waitbutton
	closetext
	end

AzaleaTownTeacherScript:
	jumptextfaceplayer AzaleaTownTeacherText

AzaleaTownYoungsterScript:
	jumptextfaceplayer AzaleaTownYoungsterText

AzaleaTownSlowpokeScript:
	opentext
	writetext AzaleaTownSlowpokeText1
	pause 60
	writetext AzaleaTownSlowpokeText2
	cry SLOWPOKE
	waitbutton
	closetext
	end

UnusedWoosterScript: ; unreferenced
	faceplayer
	opentext
	writetext WoosterText
	cry QUAGSIRE
	waitbutton
	closetext
	end

AzaleaTownCelebiScene:
	applymovement PLAYER, AzaleaTownPlayerLeavesKurtsHouseMovement
	opentext
	writetext AzaleaTownKurtText1
	promptbutton
	turnobject AZALEATOWN_KURT_OUTSIDE, RIGHT
	writetext AzaleaTownKurtText2
	promptbutton
	writetext AzaleaTownKurtText3
	waitbutton
	verbosegiveitem GS_BALL
	turnobject AZALEATOWN_KURT_OUTSIDE, LEFT
	setflag ENGINE_FOREST_IS_RESTLESS
	clearevent EVENT_ILEX_FOREST_LASS
	setevent EVENT_ROUTE_34_ILEX_FOREST_GATE_LASS
	setscene SCENE_AZALEATOWN_NOTHING
	closetext
	end

AzaleaTownKurtScript:
	faceplayer
	opentext
	writetext AzaleaTownKurtText3
	waitbutton
	turnobject AZALEATOWN_KURT_OUTSIDE, LEFT
	closetext
	end

AzaleaTownSign:
	jumptext AzaleaTownSignText

KurtsHouseSign:
	jumptext KurtsHouseSignText

AzaleaGymSign:
	jumptext AzaleaGymSignText

SlowpokeWellSign:
	jumptext SlowpokeWellSignText

CharcoalKilnSign:
	jumptext CharcoalKilnSignText

AzaleaTownIlextForestSign:
	jumptext AzaleaTownIlexForestSignText

AzaleaTownPokecenterSign:
	jumpstd PokecenterSignScript

AzaleaTownMartSign:
	jumpstd MartSignScript

WhiteApricornTree:
	fruittree FRUITTREE_AZALEA_TOWN

AzaleaTownHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_AZALEA_TOWN_HIDDEN_FULL_HEAL

AzaleaTownRivalBattleApproachMovement1:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end

AzaleaTownRivalBattleApproachMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

AzaleaTownRivalBattleExitMovement:
	step LEFT
	step LEFT
	step LEFT
	step_end

AzaleaTownPlayerLeavesKurtsHouseMovement:
	step LEFT
	step LEFT
	step UP
	turn_head LEFT
	step_end

AzaleaTownRivalBeforeText:
	text "…Tell me some-"
	line "thing."

	para "Is it true that"
	line "TEAM ROCKET has"
	cont "returned?"

	para "What? You beat"
	line "them? Hah! Quit"
	cont "lying."

	para "You're not joking?"
	line "Then let's see how"
	cont "good you are."
	done

AzaleaTownRivalWinText:
	text "… Humph! Useless"
	line "#MON!"

	para "Listen, you. You"
	line "only won because"

	para "my #MON were"
	line "weak."
	done

AzaleaTownRivalAfterText:
	text "I hate the weak."

	para "#MON, trainers."
	line "It doesn't matter"
	cont "who or what."

	para "I'm going to be"
	line "strong and wipe"
	cont "out the weak."

	para "That goes for TEAM"
	line "ROCKET too."

	para "They act big and"
	line "tough in a group."

	para "But get them"
	line "alone, and they're"
	cont "weak."

	para "I hate them all."

	para "You stay out of my"
	line "way. A weakling"

	para "like you is only a"
	line "distraction."
	done

AzaleaTownRivalLossText:
	text "…Humph! I knew"
	line "you were lying."
	done

AzaleaTownRocket1Text:
	text "It's unsafe to go"
	line "in there, so I'm"
	cont "standing guard."

	para "Aren't I a good"
	line "Samaritan?"
	done

AzaleaTownRocket2Text:
	text "Do you know about"
	line "SLOWPOKETAIL? I"
	cont "heard it's tasty!"

	para "Aren't you glad I"
	line "told you that?"
	done

AzaleaTownGrampsTextBefore:
	text "The SLOWPOKE have"
	line "disappeared from"
	cont "town…"

	para "I heard their"
	line "TAILS are being"
	cont "sold somewhere."
	done

AzaleaTownGrampsTextAfter:
	text "The SLOWPOKE have"
	line "returned."

	para "Knowing them, they"
	line "could've just been"

	para "goofing off some-"
	line "where."
	done

AzaleaTownTeacherText:
	text "Did you come to"
	line "get KURT to make"
	cont "some BALLS?"

	para "A lot of people do"
	line "just that."
	done

AzaleaTownYoungsterText:
	text "Cut through AZALEA"
	line "and you'll be in"
	cont "ILEX FOREST."

	para "But these skinny"
	line "trees make it"

	para "impossible to get"
	line "through."

	para "The CHARCOAL MAN's"
	line "#MON can CUT"
	cont "down trees."
	done

AzaleaTownSlowpokeText1:
	text "SLOWPOKE: …"

	para "<……> <……> <……>"
	done

AzaleaTownSlowpokeText2:
	text "<……> <……>Yawn?"
	done

WoosterText:
	text "WOOSTER: Gugyoo…"
	done

AzaleaTownKurtText1:
	text "ILEX FOREST is"
	line "restless!"

	para "What is going on?"
	done

AzaleaTownKurtText2:
	text "<PLAYER>, here's"
	line "your GS BALL back!"
	done

AzaleaTownKurtText3:
	text "Could you go see"
	line "why ILEX FOREST is"
	cont "so restless?"
	done

AzaleaTownSignText:
	text "AZALEA TOWN"
	line "Where People and"

	para "#MON Live in"
	line "Happy Harmony"
	done

KurtsHouseSignText:
	text "KURT'S HOUSE"
	done

AzaleaGymSignText:
	text "AZALEA TOWN"
	line "#MON GYM"
	cont "LEADER: BUGSY"

	para "The Walking"
	line "Bug #MON"
	cont "Encyclopedia"
	done

SlowpokeWellSignText:
	text "SLOWPOKE WELL"

	para "Also known as the"
	line "RAINMAKER WELL."

	para "Locals believe"
	line "that a SLOWPOKE's"
	cont "yawn summons rain."

	para "Records show that"
	line "a SLOWPOKE's yawn"

	para "ended a drought"
	line "400 years ago."
	done

CharcoalKilnSignText:
	text "CHARCOAL KILN"
	done

AzaleaTownIlexForestSignText:
	text "ILEX FOREST"

	para "Enter through the"
	line "gate."
	done

YuGiOhRolePlayScript:
    faceplayer
    opentext
    writetext YuGiOhIntroText
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
    writetext YuGiOhCharacterChoiceText
	loadmenu .YuGiOhCharacterMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Henshin
	ifequal 2, .Seto
	ifequal 3, .Yami
	closetext
	end
.YuGiOhCharacterMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, 7
	dw .YuGiOhCharacterMenuData
	db 1 ; default option
.YuGiOhCharacterMenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	dn 3, 1 ; rows, columns
	db 5 ; spacing
	dba .YuGiOhCharacterText
	dbw BANK(@), NULL
.YuGiOhCharacterText:
	db "HENSHIN@"
	db "SETO@"
	db "YAMI@"

.Henshin
    opentext
    writetext YuGiOhHenshin1Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval YGO_HENSHIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_RIVAL_BATTLE
	writemem wBattleMusicOverride
	winlosstext YuGiOhVictoryText, YuGiOhDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, YGO_SETO
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext YuGiOhHenshin2Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval YGO_HENSHIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_GUILE_THEME
	writemem wBattleMusicOverride
	winlosstext YuGiOhVictoryText, YuGiOhDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, YGO_YAMI_WEAK
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext YuGiOhHenshin3Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval YGO_NIGHTMARE
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_ZINNIA_BATTLE
	writemem wBattleMusicOverride
	winlosstext YuGiOhVictoryText, YuGiOhDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, YGO_SETO_YAMI
	startbattle
	reloadmap

	sjump .endYuGiOh

.Seto
    opentext
    writetext YuGiOhSeto1Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval YGO_SETO
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_RIVAL_BATTLE
	writemem wBattleMusicOverride
	winlosstext YuGiOhVictoryText, YuGiOhDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, YGO_HENSHIN
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext YuGiOhSeto2Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval YGO_SETO
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_CHAMPION_BATTLE
	writemem wBattleMusicOverride
	winlosstext YuGiOhVictoryText, YuGiOhDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, YGO_YAMI
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext YuGiOhSeto3Text
    waitbutton
    closetext

    opentext
    writetext YuGiOhRolePlayYamiSetoText
    waitbutton
    closetext

    opentext
    writetext YuGiOhYami3Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval YGO_SETO_YAMI
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_ZINNIA_BATTLE
	writemem wBattleMusicOverride
	winlosstext YuGiOhVictoryText, YuGiOhDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, YGO_NIGHTMARE
	startbattle
	reloadmap

	sjump .endYuGiOh

.Yami
    opentext
    writetext YuGiOhYami1Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval YGO_YAMI
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_CHAMPION_BATTLE
	writemem wBattleMusicOverride
	winlosstext YuGiOhVictoryText, YuGiOhDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, YGO_SETO
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext YuGiOhYami2Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval YGO_YAMI_WEAK
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_GUILE_THEME
	writemem wBattleMusicOverride
	winlosstext YuGiOhVictoryText, YuGiOhDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, YGO_HENSHIN
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext YuGiOhRolePlayYamiSetoText
    waitbutton
    closetext

    opentext
    writetext YuGiOhYami3Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval YGO_SETO_YAMI
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_ZINNIA_BATTLE
	writemem wBattleMusicOverride
	winlosstext YuGiOhVictoryText, YuGiOhDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, YGO_NIGHTMARE
	startbattle
	reloadmap

.endYuGiOh
    playmusic MUSIC_AZALEA_TOWN

    checkevent EVENT_BEAT_ROLEPLAY_2
    iftrue .skipPrize
    opentext
    writetext RolePlay2PrizeText
    waitbutton
    verbosegiveitem WISE_GLASSES
    closetext
    setevent EVENT_BEAT_ROLEPLAY_2
.skipPrize

	opentext
	writetext YuGiOhRolePlayFinalText
	waitbutton
	closetext
	opentext
	writetext YuGiOhRolePlayEndText
	waitbutton
	closetext
	special LoadPokemonData
	special HealParty
	end

.refused
    opentext
    writetext YuGiOhRolePlayRefusedText
    waitbutton
    closetext
    end

RolePlay2PrizeText:
    text "We finished a"
    line "new game."

    para "Here take this"
    line "for playing."
    done

YuGiOhIntroText:
    text "Hey!"

    para "Did you visit"
    line "the RUINS OF ALPH?"

    para "I did and it got"
    line "me in the mood"
    cont "for a YUGIOH"
    cont "roleplay."

    para "Would you like"
    line "to play?"

    para "You'll have to"
    line "Save your game?"
    done

YuGiOhCharacterChoiceText:
    text "Great!"

    para "Which ancient"
    line "character would"
    cont "you like to"
    cont "play as?"
    done

YuGiOhHenshin1Text:
    text "For decades you"
    line "have been the"
    cont "high priest of"
    cont "a great dynasty."

    para "Your master is an"
    line "arrogant young"
    cont "man."

    para "But he has a"
    line "following that"
    cont "might allow him"
    cont "to overthrow"
    cont "the young Pharaoh."

    para "The time has come."

    para "You will now be"
    line "master of your"
    cont "own destiny."

    para "You corner your"
    line "master SETO and"
    cont "tell him he shall"
    cont "control you no"
    cont "longer."

    para "SETO shakes with"
    line "rage."

    para "He takes his"
    line "cards from"
    cont "which he can"
    cont "summon monsters."

    para "You fight back"
    line "with your own"
    cont "cards."

    para "It's a duel."
    done

YuGiOhHenshin2Text:
    text "Having narrowly"
    line "escaped you"
    cont "hide in the"
    cont "palace."

    para "SETO seems full"
    line "of confidence."

    para "You watch as"
    line "he marches into"
    cont "the throne room."

    para "He challenges the"
    line "Pharaoh YAMI."

    para "You are horrified"
    line "by the immense"
    cont "power of YAMIs"
    cont "cards."

    para "His monsters,"
    line "more like Gods,"
    cont "make easy work"
    cont "of SETO."

    para "SETO lies on"
    line "the floor."

    para "Motionless."

    para "This is your"
    line "chance!"

    para "You jump out"
    line "and stab YAMI"
    cont "in the back."

    para "He reels to"
    line "the side and"
    cont "drops his godly"
    cont "cards."

    para "Now you reach"
    line "for your own"
    cont "cards to finish"
    cont "the job."

    para "But YAMI brings"
    line "from his robe"
    cont "some old and"
    cont "shabby looking"
    cont "cards to defend"
    cont "himself with."

    para "You wont be"
    line "denied your"
    cont "rightful place"
    cont "in history."

    para "You attack!"
    done

YuGiOhHenshin3Text:
    text "After a frantic"
    line "battle of life"
    cont "and death."

    para "YAMI triumphs."

    para "YAMIS monsters"
    line "banish HENSHIN"
    cont "to the shadow"
    cont "realm."

    para "Years pass."

    para "A decade passes."

    para "YAMI and SETO"
    line "protect the"
    cont "kingdom and fight"
    cont "many hard battles."

    para "They send many"
    line "duelists to the"
    cont "shadow realm."

    para "PEGASUS."

    para "MARIK."

    para "DARTZ."

    para "BAKURA."

    para "In the shadow"
    line "realm an ancient"
    cont "entity consumes"
    cont "their souls."

    para "Once you are"
    line "strong enough you"
    cont "pull YAMI and"
    cont "SETO into the"
    cont "shadow realm."

    para "You are NIGHTMARE."

    para "The greatest"
    line "duelist."

    para "YAMI and SETO"
    line "belong to you."
    done

YuGiOhSeto1Text:
    text "You are the lord"
    line "of a powerful"
    cont "dynasty."

    para "Only the young"
    line "Pharaoh YAMI"
    cont "holds more"
    cont "power than you."

    para "You plan to"
    line "overthrow him"
    cont "soon."

    para "The cards from"
    line "which you can"
    cont "summon monsters"
    cont "are powerful."

    para "Your high priest"
    line "HENSHIN has asked"
    cont "to speak with you."

    para "As you walk"
    line "into the chamber"
    cont "you see him in"
    cont "the shadows."

    para "He says he shall"
    line "now take your"
    cont "place."

    para "How dare he!"

    para "He reaches for"
    line "his cards."

    para "You must show"
    line "him the price of"
    cont "betrayal."
    done

YuGiOhSeto2Text:
    text "HENSHIN is"
    line "defeated."

    para "He was stronger"
    line "than expected."

    para "You are the"
    line "strongest!"

    para "None can defeat"
    line "you!"

    para "You decide now"
    line "is the time to"
    cont "overthrow YAMI."

    para "You march proudly"
    line "into the throne"
    cont "room and proclaim"
    cont "the kingdom as"
    cont "your own."

    para "YAMI says nothing."

    para "YAMI looks at you"
    line "and through you."

    para "He takes from"
    line "a golden box"
    cont "several cards."

    para "They seem to"
    line "glow with power."

    para "You have no"
    line "fear."

    para "Your kingdom"
    line "awaits."

    para "You ready your"
    line "cards for battle!"
    done

YuGiOhSeto3Text:
    text "You fall to"
    line "the floor."

    para "Every part of"
    line "you numb."

    para "Such power!"

    para "You never had"
    line "a chance."

    para "As your vision"
    line "fades you see..."

    para "HENSHIN jumps"
    line "from the shadows."

    para "He stabs YAMI in"
    line "the back."

    para "YAMI drops his"
    line "cards..."

    para "You lose your"
    line "fight for"
    cont "conciseness."
    done

YuGiOhYami1Text:
    text "You are the"
    line "great and mighty"
    cont "Pharaoh YAMI."

    para "You rule your"
    line "kingdom with"
    cont "peace and"
    cont "kindness."

    para "But you show"
    line "no quarter to"
    cont "those who would"
    cont "seek to hurt"
    cont "you or your"
    cont "people."

    para "You command the"
    line "God cards from"
    cont "which you can"
    cont "summon Gods"
    cont "to fight for"
    cont "you."

    para "Even the mightiest"
    line "God EXODIA is at"
    cont "your command."

    para "None can challenge"
    line "you."

    para "Even the lord of"
    line "the second house"
    cont "SETO."

    para "You know he will"
    line "try to overthrow"
    cont "you."

    para "You have sensed"
    line "it for some time."

    para "Here he comes."

    para "SETO marches in"
    line "and predictably"
    cont "proclaims the"
    cont "throne his own."

    para "You had hoped"
    line "it wouldn't"
    cont "come to this."

    para "But an example"
    line "must be made."

    para "SETO is the next"
    line "most powerful"
    cont "duelist in the"
    cont "kingdom."

    para "But you know the"
    line "gap between you"
    cont "is like that"
    cont "between earth"
    cont "and heaven."

    para "You take out"
    line "your godly cards."

    para "To do what must"
    line "be done."
    done

YuGiOhYami2Text:
    text "SETO falls to"
    line "the floor."

    para "Utterly defeated"
    line "but still alive."

    para "You regret what"
    line "you had to do."

    para "But before you"
    line "can form words"
    cont "in your mouth"
    cont "you feel an"
    cont "intense pain"
    cont "shooting all"
    cont "over your body."

    para "You find yourself"
    line "on the ground."

    para "You have been"
    line "stabbed in the"
    cont "back."

    para "You have dropped"
    line "the God cards."

    para "Standing over you"
    line "is HENSHIN."

    para "The high priest"
    line "of SETOs house."

    para "Was this his"
    line "plan..."

    para "HENSHIN holds"
    line "cards in his"
    cont "hand."

    para "He means to kill"
    line "you."

    para "But he doesn't"
    line "know you."

    para "You didn't always"
    line "command the power"
    cont "of Gods."

    para "From your robes"
    line "you take out"
    cont "several old cards."

    para "Your oldest"
    line "friends."

    para "Its been a long"
    line "time since you"
    cont "used them."

    para "But your bond"
    line "is stronger now"
    cont "than it has ever"
    cont "been."
    done

YuGiOhRolePlayYamiSetoText:
    text "After a frantic"
    line "battle of life"
    cont "and death."

    para "YAMI triumphs."

    para "YAMIS monsters"
    line "banish HENSHIN"
    cont "to the shadow"
    cont "realm."

    para "SETO awakens and"
    line "sees the broken"
    cont "YAMI."

    para "It would be"
    line "trivial to end"
    cont "him is this"
    cont "state."

    para "SETO retrieves"
    line "YAMIs God cards."

    para "The power"
    line "causing his hands"
    cont "to tremble."

    para "SETO uses their"
    line "power to heal"
    cont "YAMI."

    para "SETO realising"
    line "only YAMI can"
    cont "truly protect"
    cont "kingdom, asks"
    cont "for forgiveness."

    para "YAMI in his"
    line "wisdom appoints"
    cont "SETO as his"
    cont "right HAND."
    done

YuGiOhYami3Text:
    text "YAMI and SETO"
    line "protect the"
    cont "kingdom and fight"
    cont "many hard battles."

    para "They send many"
    line "duelists to the"
    cont "shadow realm."

    para "PEGASUS."

    para "MARIK."

    para "DARTZ."

    para "BAKURA."

    para "In the shadow"
    line "realm an ancient"
    cont "entity consumes"
    cont "their souls."

    para "NIGHTMARE is born!"

    para "He pulls you both"
    line "into the shadow"
    cont "realm to consume"
    cont "your souls."

    para "This foe is not"
    line "like any before."

    para "You fight together"
    line "in a desperate"
    cont "struggle."
    done



YuGiOhRolePlayFinalText:
    text "The battle takes"
    line "everything you"
    cont "have."

    para "In the end..."

    para "NIGHTMARE was"
    line "vanquished!"

    para "YAMI and SETO"
    line "return home."

    para "They rule"
    line "together."

    para "Forevermore."
    done

YuGiOhRolePlayEndText:
    text "That was great!"

    para "Thanks for"
    line "playing with me."

    para "I'm sure we will"
    line "meet again for"
    cont "another game."
    done

YuGiOhRolePlayRefusedText:
    text "It'll be fun."

    para "I promise."
    done

YuGiOhVictoryText:
    text "Victory!"
    done

YuGiOhDefeatText:
    text "Defeat!"
    done
    
YuGiOhBreakText:
    text "Do you need to"
    line "go or would you"
    cont "like to continue"
    cont "to the second"
    cont "half of the story?"
    done

YuGiOhBonusRoundText:
    text "That's the end"
    line "of the story."

    para "But would you"
    line "like to have a"
    cont "special bonus"
    cont "round?"
    done

YuGiOhStopText:
    text "OK we will leave"
    line "it there then."

    para "Maybe we can do"
    line "the whole story"
    cont "next time."
    done

AzaleaTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  9, AZALEA_POKECENTER_1F, 1
	warp_event 21, 13, CHARCOAL_KILN, 1
	warp_event 21,  5, AZALEA_MART, 2
	warp_event  9,  5, KURTS_HOUSE, 1
	warp_event 10, 15, AZALEA_GYM, 1
	warp_event 31,  7, SLOWPOKE_WELL_B1F, 1
	warp_event  2, 10, ILEX_FOREST_AZALEA_GATE, 3
	warp_event  2, 11, ILEX_FOREST_AZALEA_GATE, 4

	def_coord_events
	coord_event  5, 10, SCENE_AZALEATOWN_RIVAL_BATTLE, AzaleaTownRivalBattleScene1
	coord_event  5, 11, SCENE_AZALEATOWN_RIVAL_BATTLE, AzaleaTownRivalBattleScene2
	coord_event  9,  6, SCENE_AZALEATOWN_KURT_RETURNS_GS_BALL, AzaleaTownCelebiScene

	def_bg_events
	bg_event 19,  9, BGEVENT_READ, AzaleaTownSign
	bg_event 10,  9, BGEVENT_READ, KurtsHouseSign
	bg_event 14, 15, BGEVENT_READ, AzaleaGymSign
	bg_event 29,  7, BGEVENT_READ, SlowpokeWellSign
	bg_event 19, 13, BGEVENT_READ, CharcoalKilnSign
	bg_event 16,  9, BGEVENT_READ, AzaleaTownPokecenterSign
	bg_event 22,  5, BGEVENT_READ, AzaleaTownMartSign
	bg_event  3,  9, BGEVENT_READ, AzaleaTownIlextForestSign
	bg_event 31,  6, BGEVENT_ITEM, AzaleaTownHiddenFullHeal

	def_object_events
	object_event 31,  9, SPRITE_AZALEA_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownRocket1Script, EVENT_AZALEA_TOWN_SLOWPOKETAIL_ROCKET
	object_event 21,  9, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownGrampsScript, -1
	object_event 15, 13, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AzaleaTownTeacherScript, -1
	object_event  7, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AzaleaTownYoungsterScript, -1
	object_event  8, 17, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, EVENT_AZALEA_TOWN_SLOWPOKES
	object_event 18,  9, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, EVENT_AZALEA_TOWN_SLOWPOKES
	object_event 29,  9, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, EVENT_AZALEA_TOWN_SLOWPOKES
	object_event 15, 15, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, EVENT_AZALEA_TOWN_SLOWPOKES
	object_event  8,  2, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WhiteApricornTree, -1
	object_event 11, 10, SPRITE_AZALEA_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_AZALEA_TOWN
	object_event 10, 16, SPRITE_AZALEA_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownRocket2Script, EVENT_SLOWPOKE_WELL_ROCKETS
	object_event  6,  5, SPRITE_KURT_OUTSIDE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownKurtScript, EVENT_AZALEA_TOWN_KURT
	object_event 6, 8, SPRITE_WILL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, YuGiOhRolePlayScript, -1
