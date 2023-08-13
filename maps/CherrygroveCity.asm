	object_const_def
	const CHERRYGROVECITY_GRAMPS
	const CHERRYGROVECITY_SILVER
	const CHERRYGROVECITY_TEACHER
	const CHERRYGROVECITY_YOUNGSTER
	const CHERRYGROVECITY_FISHER

CherrygroveCity_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_CHERRYGROVECITY_NOTHING
	scene_script .DummyScene1 ; SCENE_CHERRYGROVECITY_MEET_RIVAL

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_CHERRYGROVE
	endcallback

CherrygroveCityGuideGent:
	faceplayer
	opentext
	writetext GuideGentIntroText
	yesorno
	iffalse .No
	sjump .Yes
.Yes:
	writetext GuideGentTourText1
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow CHERRYGROVECITY_GRAMPS, PLAYER
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement1
	opentext
	writetext GuideGentPokecenterText
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement2
	turnobject PLAYER, UP
	opentext
	writetext GuideGentMartText
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement3
	turnobject PLAYER, UP
	opentext
	writetext GuideGentRoute30Text
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement4
	turnobject PLAYER, LEFT
	opentext
	writetext GuideGentSeaText
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement5
	turnobject PLAYER, UP
	pause 60
	turnobject CHERRYGROVECITY_GRAMPS, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext GuideGentGiftText
	promptbutton
	getstring STRING_BUFFER_4, .mapcardname
	scall .JumpstdReceiveItem
	setflag ENGINE_MAP_CARD
	writetext GotMapCardText
	promptbutton
	writetext GuideGentPokegearText
	waitbutton
	closetext
	stopfollow
	special RestartMapMusic
	turnobject PLAYER, UP
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement6
	playsound SFX_ENTER_DOOR
	disappear CHERRYGROVECITY_GRAMPS
	clearevent EVENT_GUIDE_GENT_VISIBLE_IN_CHERRYGROVE
	waitsfx
	end

.JumpstdReceiveItem:
	jumpstd ReceiveItemScript
	end

.mapcardname
	db "MAP CARD@"

.No:
	writetext GuideGentNoText
	waitbutton
	closetext
	end

CherrygroveSilverSceneSouth:
	moveobject CHERRYGROVECITY_SILVER, 39, 7
CherrygroveSilverSceneNorth:
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear CHERRYGROVECITY_SILVER
	applymovement CHERRYGROVECITY_SILVER, CherrygroveCity_RivalWalksToYou
	turnobject PLAYER, RIGHT
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext CherrygroveRivalText_Seen
	waitbutton
	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext SilverCherrygroveWinText, SilverCherrygroveLossText
	setlasttalked CHERRYGROVECITY_SILVER
	loadtrainer RIVAL1, RIVAL1_1_TOTODILE
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Totodile:
	winlosstext SilverCherrygroveWinText, SilverCherrygroveLossText
	setlasttalked CHERRYGROVECITY_SILVER
	loadtrainer RIVAL1, RIVAL1_1_CHIKORITA
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Chikorita:
	winlosstext SilverCherrygroveWinText, SilverCherrygroveLossText
	setlasttalked CHERRYGROVECITY_SILVER
	loadtrainer RIVAL1, RIVAL1_1_CYNDAQUIL
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.AfterVictorious:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext CherrygroveRivalText_YouWon
	waitbutton
	closetext
	sjump .FinishRival

.AfterYourDefeat:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext CherrygroveRivalText_YouLost
	waitbutton
	closetext
.FinishRival:
	playsound SFX_TACKLE
	applymovement PLAYER, CherrygroveCity_RivalPushesYouOutOfTheWay
	turnobject PLAYER, LEFT
	applymovement CHERRYGROVECITY_SILVER, CherrygroveCity_RivalExitsStageLeft
	disappear CHERRYGROVECITY_SILVER
	setscene SCENE_CHERRYGROVECITY_NOTHING
	special HealParty
	playmapmusic
	end

CherrygroveTeacherScript:
	faceplayer
	opentext
	checkflag ENGINE_MAP_CARD
	iftrue .HaveMapCard
	writetext CherrygroveTeacherText_NoMapCard
	waitbutton
	closetext
	end

.HaveMapCard:
	writetext CherrygroveTeacherText_HaveMapCard
	waitbutton
	closetext
	end

CherrygroveYoungsterScript:
	faceplayer
	opentext
	checkflag ENGINE_POKEDEX
	iftrue .HavePokedex
	writetext CherrygroveYoungsterText_NoPokedex
	waitbutton
	closetext
	end

.HavePokedex:
	writetext CherrygroveYoungsterText_HavePokedex
	waitbutton
	closetext
	end

MysticWaterGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_MYSTIC_WATER_IN_CHERRYGROVE
	iftrue .After
	writetext MysticWaterGuyTextBefore
	promptbutton
	verbosegiveitem MYSTIC_WATER
	iffalse .Exit
	setevent EVENT_GOT_MYSTIC_WATER_IN_CHERRYGROVE
.After:
	writetext MysticWaterGuyTextAfter
	waitbutton
.Exit:
	closetext
	end

CherrygroveCitySign:
	jumptext CherrygroveCitySignText

GuideGentsHouseSign:
	jumptext GuideGentsHouseSignText

CherrygroveCityPokecenterSign:
	jumpstd PokecenterSignScript

CherrygroveCityMartSign:
	jumpstd MartSignScript

GuideGentMovement1:
	step LEFT
	step LEFT
	step UP
	step LEFT
	turn_head UP
	step_end

GuideGentMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end

GuideGentMovement3:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end

GuideGentMovement4:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	turn_head LEFT
	step_end

GuideGentMovement5:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

GuideGentMovement6:
	step UP
	step UP
	step_end

CherrygroveCity_RivalWalksToYou:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

CherrygroveCity_RivalPushesYouOutOfTheWay:
	big_step DOWN
	turn_head UP
	step_end

CherrygroveCity_UnusedMovementData: ; unreferenced
	step LEFT
	turn_head DOWN
	step_end

CherrygroveCity_RivalExitsStageLeft:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step UP
	big_step UP
	big_step LEFT
	big_step LEFT
	step_end

GuideGentIntroText:
	text "You're a rookie"
	line "trainer, aren't"
	cont "you? I can tell!"

	para "That's OK! Every-"
	line "one is a rookie"
	cont "at some point!"

	para "If you'd like, I"
	line "can teach you a"
	cont "few things."
	done

GuideGentTourText1:
	text "OK, then!"
	line "Follow me!"
	done

GuideGentPokecenterText:
	text "This is a #MON"
	line "CENTER. They heal"

	para "your #MON in no"
	line "time at all."

	para "You'll be relying"
	line "on them a lot, so"

	para "you better learn"
	line "about them."
	done

GuideGentMartText:
	text "This is a #MON"
	line "MART."

	para "They sell BALLS"
	line "for catching wild"

	para "#MON and other"
	line "useful items."
	done

GuideGentRoute30Text:
	text "ROUTE 30 is out"
	line "this way."

	para "Trainers will be"
	line "battling their"

	para "prized #MON"
	line "there."
	done

GuideGentSeaText:
	text "This is the sea,"
	line "as you can see."

	para "Some #MON are"
	line "found only in"
	cont "water."
	done

GuideGentGiftText:
	text "Here…"

	para "It's my house!"
	line "Thanks for your"
	cont "company."

	para "Let me give you a"
	line "small gift."
	done

GotMapCardText:
	text "<PLAYER>'s #GEAR"
	line "now has a MAP!"
	done

GuideGentPokegearText:
	text "#GEAR becomes"
	line "more useful as you"
	cont "add CARDS."

	para "I wish you luck on"
	line "your journey!"
	done

GuideGentNoText:
	text "Oh… It's something"
	line "I enjoy doing…"

	para "Fine. Come see me"
	line "when you like."
	done

CherrygroveRivalText_Seen:
	text "<……> <……> <……>"

	para "You got a #MON"
	line "at the LAB."

	para "What a waste."
	line "A wimp like you."

	para "<……> <……> <……>"

	para "Don't you get what"
	line "I'm saying?"

	para "Well, I too, have"
	line "a good #MON."

	para "I'll show you"
	line "what I mean!"
	done

SilverCherrygroveWinText:
	text "Humph. Are you"
	line "happy you won?"
	done

CherrygroveRivalText_YouLost:
	text "<……> <……> <……>"

	para "My name's ???."

	para "I'm going to be"
	line "the world's great-"
	cont "est #MON"
	cont "trainer."
	done

SilverCherrygroveLossText:
	text "Humph. That was a"
	line "waste of time."
	done

CherrygroveRivalText_YouWon:
	text "<……> <……> <……>"

	para "My name's ???."

	para "I'm going to be"
	line "the world's great-"
	cont "est #MON"
	cont "trainer."
	done

CherrygroveTeacherText_NoMapCard:
	text "Did you talk to"
	line "the old man by the"
	cont "#MON CENTER?"

	para "He'll put a MAP of"
	line "JOHTO on your"
	cont "#GEAR."
	done

CherrygroveTeacherText_HaveMapCard:
	text "When you're with"
	line "#MON, going"
	cont "anywhere is fun."
	done

CherrygroveYoungsterText_NoPokedex:
	text "MR.#MON's house"
	line "is still farther"
	cont "up ahead."
	done

CherrygroveYoungsterText_HavePokedex:
	text "I battled the"
	line "trainers on the"
	cont "road."

	para "My #MON lost."
	line "They're a mess! I"

	para "must take them to"
	line "a #MON CENTER."
	done

MysticWaterGuyTextBefore:
	text "A #MON I caught"
	line "had an item."

	para "I think it's"
	line "MYSTIC WATER."

	para "I don't need it,"
	line "so do you want it?"
	done

MysticWaterGuyTextAfter:
	text "Back to fishing"
	line "for me, then."
	done

CherrygroveCitySignText:
	text "CHERRYGROVE CITY"

	para "The City of Cute,"
	line "Fragrant Flowers"
	done

GuideGentsHouseSignText:
	text "GUIDE GENT'S HOUSE"
	done

EvilOldManScript:
	faceplayer
	opentext
	checkevent EVENT_DARK_CAVE_RED_EYE_ORB
	iftrue .GotRedEyeOrb
	writetext GoGetRedEyeOrbText
	waitbutton
	closetext
	end
.GotRedEyeOrb:
	writetext GotRedEyeOrbText
	checkevent EVENT_GOT_SCOPE_LENS
	iftrue .finish
	waitbutton
	writetext takeScopeLensText
	verbosegiveitem SCOPE_LENS
.finish
	waitbutton
	closetext
	end

takeScopeLensText:
    text "Here take this for"
    line "your trouble."

    para "Luck will always"
    line "beat skill."

    para "Heh heh heh."
    done

GoGetRedEyeOrbText:
    text "Lovely day isn't"
    line "it."

    para "It is always"
    line "nice here."

    para "I have had"
    line "a fine life."

    para "I have seen"
    line "many things."

    para "But one thing"
    line "eludes me..."

    para "North of here"
    line "there is a cave."

    para "A place of pure"
    line "evil."

    para "In this cave it"
    line "rest."

    para "The RED EYE ORB."

    para "If you could"
    line "bring it to me."

    para "If I could see"
    line "it."

    para "I would be"
    line "complete."
    done

GotRedEyeOrbText:
    text "You have done it!"

    para "That's it, the"
    line "RED EYE ORB!"

    para "Using it makes"
    line "one an invader."

    para "As an invader you"
    line "will take double"
    cont "money from your"
    cont "victims."

    para "But if you lose"
    line "you lose all"
    cont "your money."

    para "Doesn't sound"
    line "fair does it."

    para "But life wouldn't"
    line "be fun if it was"
    cont "fair."

    para "Heh heh heh heh."
    done

JuliusScript:
    faceplayer
	opentext
	checkevent EVENT_BEAT_JULIUS
	iftrue .FightDone
.fight
	writetext JuliusSeenText
	waitbutton
	closetext
	checkevent EVENT_BEAT_JULIUS
	iftrue .dontAsk
	opentext
	writetext JuliusOfferFightText
	waitbutton
	yesorno
	iffalse .refused
	closetext
.dontAsk
	winlosstext JuliusBeatenText, JuliusWinsText
	loadtrainer YOUNGSTER, JULIUS
	startbattle
	ifequal LOSE, .lose
	reloadmapafterbattle
	setevent EVENT_BEAT_JULIUS
	end
.FightDone:
	writetext JuliusAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextJulius
	yesorno
	iftrue .fight
.refused
	writetext RematchRefuseTextJulius
	waitbutton
	closetext
	end
.lose
    special HealParty
    reloadmap
    opentext
    writetext JuliusWinAfterBattleText
    waitbutton
    closetext
    end
JuliusWinAfterBattleText:
    text "Another easy"
    line "victory."

    para "When will you"
    line "people learn"
    cont "your place on"
    cont "the social ladder."
    done
JuliusSeenText:
    text "These peasants are"
    line "easily brushed"
    cont "aside as expected."

    para "My papa is a"
    line "wealthy business"
    cont "man in SAFFRON."

    para "We can afford"
    line "all the best items"
    cont "and #MON."

    para "Training is for"
    line "the poor."
    done
JuliusBeatenText:
    text "Papa I need"
    line "more money!"
    done
JuliusWinsText:
    text "As expected."
    done
JuliusOfferFightText:
    text "You are another"
    line "jealous peasant."

    para "Would you like to"
    line "see the difference"
    cont "between our social"
    cont "classes?"

    para "I won't even take"
    line "your pitiful"
    cont "savings when I"
    cont "win?"
    done
JuliusAfterBattleText:
    text "I misjudged you."

    para "Relish this meager"
    line "victory while you"
    cont "may."

    para "Once I inherit my"
    line "fathers fortune I"
    cont "will simply buy"
    cont "an ELITE FOUR"
    cont "level team from"
    cont "TEAM ROCKET."
    done
RematchTextJulius:
    text "Might you be"
    line "partial to"
    cont "another bout?"
    done
RematchRefuseTextJulius:
    text "Very well."
    done

Peasant1Script:
    checkevent EVENT_BEAT_JULIUS
    iftrue .beaten
    jumptextfaceplayer PeasantHelp1
.beaten
    jumptextfaceplayer PeasantHappy1
PeasantHelp1:
    text "This snobby kid"
    line "has beaten us"
    cont "easily."

    para "I just can't"
    line "stand him."

    para "I wish someone"
    line "was strong enough"
    cont "to beat him."
    done
PeasantHappy1:
    text "You did it!"

    para "Oh it felt so"
    line "good seeing the"
    cont "look on his face"
    cont "when you beat him."

    para "You are really"
    line "strong."

    para "...and cute too."
    done

Peasant2Script:
    checkevent EVENT_BEAT_JULIUS
    iftrue .beaten
    jumptextfaceplayer PeasantHelp2
.beaten
    faceplayer
    opentext
    writetext PeasantHappy2
    waitbutton
    checkevent EVENT_GOT_JULIUS_NUGGET
    iftrue .end
    writetext TakeNuggetText
    waitbutton
    verbosegiveitem NUGGET
    setevent EVENT_GOT_JULIUS_NUGGET
.end
    closetext
    end
PeasantHelp2:
    text "This rich kid has"
    line "beaten us silly"
    cont "and bragged about"
    cont "it all day."

    para "I'd give a special"
    line "gift to anyone who"
    cont "shuts him up!"
    done
PeasantHappy2:
    text "You are the best!"

    para "I hope that kid"
    line "learns not to"
    cont "judge others not"
    cont "as fortunate as"
    cont "him."

    para "But I know he"
    line "wont."
    done
TakeNuggetText:
    text "Here you can have"
    line "this."

    para "I found it in"
    line "that kids backpack"
    cont "when he wasn't"
    cont "looking."

    para "Heh heh."
    done

StarWarsRolePlayScript:
    faceplayer
    opentext
    writetext StarWarsIntroText
    yesorno
    iffalse .refused
    special TryQuickSave
    iffalse .refused
	setval WEATHER_NONE
	writemem wFieldWeather
	special FadeOutMusic
	playmusic MUSIC_MISTY_MOUNTAIN
    writetext StarWarsHeroOrVillainChoiceText
	loadmenu .StarWarsHeroOrVillainMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Hero
	ifequal 2, .Villain
	closetext
	end
.StarWarsHeroOrVillainMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, 5
	dw .StarWarsHeroOrVillainMenuData
	db 1 ; default option
.StarWarsHeroOrVillainMenuData:
	db STATICMENU_CURSOR ; flags
	dn 2, 1 ; rows, columns
	db 5 ; spacing
	dba .StarWarsHeroOrVillainText
	dbw BANK(@), NULL
.StarWarsHeroOrVillainText:
	db "HEROES@"
	db "VILLAINS@"

.Hero
    opentext
    writetext StarWarsCh1HeroText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval SW_CH1_HERO
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_KANTO_GYM_LEADER_BATTLE
	writemem wBattleMusicOverride
	winlosstext StarWarsVictoryText, StarWarsDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, SW_CH1_VILLAIN
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext StarWarsCh2HeroText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval SW_CH2_HERO
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_MAD_WORLD
	writemem wBattleMusicOverride
	winlosstext StarWarsVictoryText, StarWarsDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, SW_CH2_VILLAIN
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext StarWarsCh3HeroText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval SW_CH3_HERO
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_RED_INDIGO_PLATEAU
	writemem wBattleMusicOverride
	winlosstext StarWarsVictoryText, StarWarsDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, SW_CH3_VILLAIN
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext StarWarsBreakText
    yesorno
    closetext
    iffalse .stop

    opentext
    writetext StarWarsCh4HeroText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval SW_CH4_HERO
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_ARCHIE_BATTLE
	writemem wBattleMusicOverride
	winlosstext StarWarsVictoryText, StarWarsDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, SW_CH4_VILLAIN
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext StarWarsCh5HeroText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval SW_CH5_HERO
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_XVZ
	writemem wBattleMusicOverride
	winlosstext StarWarsVictoryText, StarWarsDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, SW_CH5_VILLAIN
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext StarWarsEndText
    waitbutton
    closetext

    opentext
    writetext StarWarsBonusRoundText
    yesorno
    closetext
    iffalse .stop

    opentext
    writetext StarWarsCh6Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval SW_CH6_HERO
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_EPIC_TETRIS
	writemem wBattleMusicOverride
	winlosstext StarWarsVictoryText, StarWarsDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, SW_CH6_VILLAIN
	startbattle
	reloadmap

	sjump .end

.Villain
    opentext
    writetext StarWarsCh1VillainText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval SW_CH1_VILLAIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_KANTO_GYM_LEADER_BATTLE
	writemem wBattleMusicOverride
	winlosstext StarWarsVictoryText, StarWarsDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, SW_CH1_HERO
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext StarWarsCh2VillainText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval SW_CH2_VILLAIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_MAD_WORLD
	writemem wBattleMusicOverride
	winlosstext StarWarsVictoryText, StarWarsDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, SW_CH2_HERO
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext StarWarsCh3VillainText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval SW_CH3_VILLAIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_RED_INDIGO_PLATEAU
	writemem wBattleMusicOverride
	winlosstext StarWarsVictoryText, StarWarsDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, SW_CH3_HERO
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext StarWarsBreakText
    yesorno
    closetext
    iffalse .stop

    opentext
    writetext StarWarsCh4VillainText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval SW_CH4_VILLAIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_ARCHIE_BATTLE
	writemem wBattleMusicOverride
	winlosstext StarWarsVictoryText, StarWarsDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, SW_CH4_HERO
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext StarWarsCh5VillainText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval SW_CH5_VILLAIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_XVZ
	writemem wBattleMusicOverride
	winlosstext StarWarsVictoryText, StarWarsDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, SW_CH5_HERO
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext StarWarsEndText
    waitbutton
    closetext

    opentext
    writetext StarWarsBonusRoundText
    yesorno
    closetext
    iffalse .stop

    opentext
    writetext StarWarsCh6Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval SW_CH6_VILLAIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_EPIC_TETRIS
	writemem wBattleMusicOverride
	winlosstext StarWarsVictoryText, StarWarsDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, SW_CH6_HERO
	startbattle
	reloadmap

.end
    playmusic MUSIC_CHERRYGROVE_CITY
	opentext
	writetext StarWarsRolePlayEndText
	waitbutton
	closetext
	special LoadPokemonData
	special HealParty
	end

.stop
    playmusic MUSIC_CHERRYGROVE_CITY
	opentext
	writetext StarWarsStopText
	waitbutton
	closetext
	special LoadPokemonData
	special HealParty
	end

.refused
    opentext
    writetext StarWarsRolePlayRefusedText
    waitbutton
    closetext
    end

StarWarsIntroText:
    text "Do you like Role"
    line "Play games?!"

    para "I am starting"
    line "a STAR WARS theme"
    cont "RPG."

    para "You can play too."

    para "But you will need"
    line "to Save your game."

    para "Is that OK?"
    done

StarWarsHeroOrVillainChoiceText:
    text "Do you want to"
    line "play as the"
    cont "HEROES or the"
    cont "VILLAINS?"
    done

StarWarsCh1HeroText:
    text "Two Jedi Knights"
    line "have found them-"
    cont "selves stranded"
    cont "on a desert world."

    para "They befriend a"
    line "powerful young"
    cont "boy named ANIKAN."

    para "Could he be the"
    line "one the prophesy"
    cont "speaks of?"

    para "A dark figure"
    line "appears as they"
    cont "head to their"
    cont "ship."

    para "He too can sense"
    line "the boys powers."

    para "He attacks!"

    para "You must defend"
    line "ANIKAN."
    done

StarWarsCh1VillainText:
    text "After years of"
    line "oppression you"
    cont "are finally"
    cont "ready to fight"
    cont "back!"

    para "The Jedi are a"
    line "cult that kidnap"
    cont "and brainwash"
    cont "gifted children."

    para "You alone escaped."

    para "On a desert planet"
    line "two Jedi hunt ano-"
    cont "ther gifted child."

    para "They have found"
    line "and are taking"
    cont "him away."

    para "But you will not"
    line "let that happen!"
    done

StarWarsCh2HeroText:
    text "The battle was"
    line "fierce."

    para "GUI GON falls"
    line "and with his"
    cont "last breath asks"
    cont "OBI WAN to train"
    cont "ANIKAN."

    para "20 years pass."

    para "OBI WANs heart"
    line "sinks when he"
    cont "sees his brother"
    cont "and pupil ANIKAN"
    cont "slaughtering"
    cont "younglings."

    para "He has become a"
    line "Sith."

    para "OBI WAN knows he"
    line "has to stop him!"
    done

StarWarsCh2VillainText:
    text "The battle was"
    line "fierce."

    para "You are killed"
    line "but you manage"
    cont "to send info"
    cont "back to your"
    cont "master."

    para "The master is"
    line "close to the Jedi"
    cont "and protects the"
    cont "boy from their"
    cont "brainwashing."

    para "20 years pass."

    para "Now finally ready"
    line "ANIKAN has seen"
    cont "the evil of the"
    cont "Jedi."

    para "Now he fights to"
    line "stop the Jedi."

    para "Starting with his"
    line "old master"
    cont "OBI WAN."
    done

StarWarsCh3HeroText:
    text "ANIKAN was"
    line "stopped."

    para "But the empire"
    line "grows strong."

    para "They develop a"
    line "super weapon."

    para "The DEATH STAR."

    para "ANIKAN had a"
    line "son, LUKE."

    para "OBI WAN protects"
    line "him over the"
    cont "next 20 years."

    para "LUKE grows into"
    line "a great pilot."

    para "He leads the"
    line "assault on the"
    cont "empire in a"
    cont "violent space"
    cont "battle."
    done

StarWarsCh3VillainText:
    text "ANIKAN was"
    line "defeated but"
    cont "not killed."

    para "He was rebuilt"
    line "as the mighty"
    cont "mechanical"
    cont "warrior, VADER."

    para "20 more years"
    line "pass."

    para "The Empire grows"
    line "strong."

    para "They develop a"
    line "new weapon of"
    cont "peace."

    para "The DEATH STAR."

    para "When the rebels"
    line "attack it is"
    cont "up to VADER to"
    cont "defend the Empire"
    cont "in a violent"
    cont "space battle."
    done

StarWarsCh4HeroText:
    text "The DEATH STAR"
    line "is repeled."

    para "LUKE learns that"
    line "his father ANIKAN"
    cont "is not dead."

    para "He lives as a"
    line "mechanical"
    cont "monster."

    para "VADER."

    para "But LUKE can"
    line "sense there is"
    cont "good in him."

    para "He knows only"
    line "he can save him."

    para "He gives himself"
    line "up to the Empire."

    para "He is taken to see"
    line "VADER and his"
    cont "master."

    para "PALPATINE."

    para "Ruler of the"
    line "galaxy."

    para "He must fight to"
    line "save his father."
    done

StarWarsCh4VillainText:
    text "The Rebels repel"
    line "the DEATH STAR."

    para "VADER learns"
    line "That he has a"
    cont "son from his"
    cont "previous life"
    cont "as ANIKAN."

    para "His son LUKE"
    line "is the rebel"
    cont "who led the"
    cont "assault on the"
    cont "DEATH STAR."

    para "LUKE has given"
    line "himself over to"
    cont "the Empire."

    para "Why?.."

    para "Perhaps he means"
    line "to join us."

    para "Or destroy us."

    para "He is brought"
    line "before VADER"
    cont "and you."

    para "PALPATINE."

    para "Ruler of the"
    line "Galaxy."

    para "You feel something"
    line "stir within VADER."

    para "You don't know"
    line "what it is but"
    cont "you don't like"
    cont "it."
    done

StarWarsCh5HeroText:
    text "You are no match."

    para "PALPATINE is"
    line "slowly draining"
    cont "your life."

    para "The pain is"
    line "unbearable."

    para "You plead with"
    line "your father to"
    cont "help you."

    para "But you know he"
    line "wont."

    para "There is nothing"
    line "left within that"
    cont "metal chest."

    para "The pain fades."

    para "The end comes."

    para "You open your"
    line "eyes."

    para "PALPATINE stands"
    line "looking angry"
    cont "and shocked."

    para "VADER stands"
    line "between him and"
    cont "you."

    para "He tells you.."

    para "Get up my son"

    para "Let us free the"
    line "galaxy as father"
    cont "and son."

    para "You rise for one"
    line "last battle."
    done

StarWarsCh5VillainText:
    text "LUKE is no"
    line "match for the"
    cont "two of you."

    para "You sets"
    line "about slowly"
    cont "killing him as"
    cont "has so many in"
    cont "the past."

    para "LUKE asks for"
    line "VADER to save him."

    para "What a pathetic"
    line "way to die."

    para "He pleas again."

    para "He pleas again."

    para "You become aware"
    line "of an anger."

    para "growing..."

    para "Unexplained and"
    line "uncontrollable."

    para "LUKEs voice fades."

    para "Involuntary VADER"
    line "attacks you!"

    para "You stands between"
    line "you and LUKE."

    para "Get up my son."

    para "Let us free the"
    line "galaxy as father"
    cont "and son."

    para "You have waited"
    line "too long for this."

    para "For VADER to"
    line "finally attempt"
    cont "to overthrow"
    cont "you."

    para "But to do so"
    line "out of love.."

    para "How disgusting."

    para "He must die."

    para "As shall his son."
    done

StarWarsEndText:
    text "PALPATINE was"
    line "defeated."

    para "The galaxy is"
    line "free."

    para "But the battle"
    line "was intense."

    para "VADER now ANIKAN"
    line "once more knows"
    cont "he will die."

    para "In LUKES arms"
    line "his life ends."

    para "Happy for the"
    line "first time in"
    cont "his life."
    done

StarWarsCh6Text:
    text "That was great!"

    para "Now how about"
    line "we just have"
    cont "some fun."

    para "One last game"
    line "with all the"
    cont "Heroes and"
    cont "Villains all"
    cont "powered up to"
    cont "the max in a"
    cont "big fight!"
    done

StarWarsRolePlayEndText:
    text "Thanks for"
    line "playing with us."

    para "We travel about"
    line "playing different"
    cont "games."

    para "We will see you"
    line "around I'm sure."
    done

StarWarsRolePlayRefusedText:
    text "It'll be fun."

    para "I promise."
    done

StarWarsVictoryText:
    text "Victory!"
    done

StarWarsDefeatText:
    text "Defeat!"
    done

StarWarsBreakText:
    text "Do you need to"
    line "go or would you"
    cont "like to continue"
    cont "to the second"
    cont "half of the story?"
    done

StarWarsBonusRoundText:
    text "That's the end"
    line "of the story."

    para "But would you"
    line "like to have a"
    cont "special bonus"
    cont "round?"
    done

StarWarsStopText:
    text "OK we will leave"
    line "it there then."

    para "Maybe we can do"
    line "the whole story"
    cont "next time."
    done


CherrygroveCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23,  3, CHERRYGROVE_MART, 2
	warp_event 29,  3, CHERRYGROVE_POKECENTER_1F, 1
	warp_event 17,  7, CHERRYGROVE_GYM_SPEECH_HOUSE, 1
	warp_event 25,  9, GUIDE_GENTS_HOUSE, 1
	warp_event 31, 11, CHERRYGROVE_EVOLUTION_SPEECH_HOUSE, 1

	def_coord_events
	coord_event 33,  6, SCENE_CHERRYGROVECITY_MEET_RIVAL, CherrygroveSilverSceneNorth
	coord_event 33,  7, SCENE_CHERRYGROVECITY_MEET_RIVAL, CherrygroveSilverSceneSouth

	def_bg_events
	bg_event 30,  8, BGEVENT_READ, CherrygroveCitySign
	bg_event 23,  9, BGEVENT_READ, GuideGentsHouseSign
	bg_event 24,  3, BGEVENT_READ, CherrygroveCityMartSign
	bg_event 30,  3, BGEVENT_READ, CherrygroveCityPokecenterSign

	def_object_events
	object_event 32,  6, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveCityGuideGent, EVENT_GUIDE_GENT_IN_HIS_HOUSE
	object_event 39,  6, SPRITE_SILVER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_CHERRYGROVE_CITY
	object_event 27, 10, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CherrygroveTeacherScript, -1
	object_event 23,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveYoungsterScript, -1
	object_event  5, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MysticWaterGuy, -1
	object_event 7,  21, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, EvilOldManScript, -1
	object_event 32, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, JuliusScript, -1
	object_event 33, 20, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, Peasant1Script, -1
	object_event 30, 22, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, Peasant2Script, -1
	object_event 21, 4, SPRITE_WILL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, StarWarsRolePlayScript, -1


