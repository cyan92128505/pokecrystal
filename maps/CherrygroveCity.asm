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
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow CHERRYGROVECITY_GRAMPS, PLAYER
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovementToPokecenter
	opentext
	writetext GuideGentPokecenterText
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovementToPokemart
	turnobject PLAYER, UP
	opentext
	writetext GuideGentMartText
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovementToRolePlay
	turnobject PLAYER, LEFT
	opentext
	writetext GuideGentRolePlayText
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovementToExit
	turnobject PLAYER, UP
	opentext
	writetext GuideGentExitText
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovementToBilly
	opentext
	writetext GuideGentSeaText
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovementToCrest
	turnobject PLAYER, DOWN
	opentext
	writetext GuideGentCrestText
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovementToPark
	turnobject PLAYER, DOWN
	opentext
	writetext GuideGentParkText
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovementToHome
	turnobject PLAYER, UP
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
	;applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement6
	turnobject CHERRYGROVECITY_GRAMPS, UP
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
	writetext CherrygroveRivalText_YouLost
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
    jumptextfaceplayer CherrygroveTeacherText

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

GuideGentMovementToPokecenter:
	big_step LEFT
	big_step LEFT
	big_step UP
	big_step LEFT
	turn_head UP
	step_end

GuideGentMovementToPokemart:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	turn_head UP
	step_end

GuideGentMovementToRolePlay:
	big_step LEFT
	big_step LEFT
	turn_head UP
	step_end

GuideGentMovementToExit:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	turn_head UP
	step_end

GuideGentMovementToBilly:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
    big_step DOWN
	step_end

GuideGentMovementToCrest:
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step DOWN
	big_step DOWN
	step_end

GuideGentMovementToPark:
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step DOWN
	big_step RIGHT
	turn_head DOWN
	step_end

GuideGentMovementToHome:
	big_step UP
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step UP
	big_step UP
	turn_head DOWN
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
	text "Oh hello there!"

	para "You're starting"
	line "a great adventure"
	cont "aren't you."

	para "I was young"
	line "once too..."

	para "But this is my"
	line "home now."

	para "Let me show you"
	line "around and teach"
	cont "you a few things."

	para "...."

	para "Try to keep up!"
	done

GuideGentPokecenterText:
	text "This is a #MON"
	line "CENTER."

	para "Here you can heal"
	line "your #MON and"
	cont "store them in"
	cont "your PC."
	done

GuideGentMartText:
	text "This is a #MON"
	line "MART."

	para "You can buy stuff"
	line "from here."

	para "But this one"
	line "rarely has much."

	para "The don't even"
	line "have Pokeballs"
	cont "right now."
	done

GuideGentRolePlayText:
	text "This guy likes"
	line "to play games."

	para "He gives out"
	line "prizes to people"
	cont "who sit through"
	cont "his games."

	para "Nobody would"
	line "play the whole"
	cont "things otherwise."
	done

GuideGentExitText:
	text "This path leads"
	line "to VIOLET city."

	para "You will find"
	line "other trainers"
	cont "up there."

	para "Watch out for"
	line "DARK CAVE."

	para "It is a place"
	line "of infectious"
	cont "evil."
	done

GuideGentSeaText:
	text "This is BILLY"

	para "He never stops"
	line "fishing."

	para "I think he is"
	line "looking for"
	cont "meaning on the"
	cont "end of that"
	cont "hook."
	done

GuideGentCrestText:
	text "Old CREST sits"
	line "down here."

	para "He has become"
	line "rather obsessive"
	cont "recently."

	para "You best stay"
	line "away from him."
	done

GuideGentParkText:
	text "The band stand"
	line "is down there."

	para "Some young punks"
	line "are having battles"
	cont "today."
	done

GuideGentGiftText:
	text "It's my house!"
	line "Thanks for your"
	cont "company."

	para "Remember you can"
	line "run by holding"
	cont "B."

	para "You never know"
	line "when you might"
	cont "need to run!"

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

CherrygroveRivalText_Seen:
	text "<……> <……> <……>"

	para "Ah it's you!"

	para "How are you doing"
	line "with your weak"
	cont "#MON?"

	para "Perfectly matched"
	line "I see."

	para "I took care of"
	line "business myself."

	para "I'll show you a"
	line "real #MON!"
	done

SilverCherrygroveWinText:
	text "You've had a"
	line "head start."

	para "I'll crush you"
	line "if we meet again!"
	done

CherrygroveRivalText_YouLost:
	text "<……> <……> <……>"

	para "My name's ???."

	para "I'm going to be"
	line "the world's great-"
	cont "est #MON"
	cont "trainer."

	para "You should go"
	line "back home."

	para "This world has no"
	line "place for the"
	cont "weak."
	done

SilverCherrygroveLossText:
	text "That was a waste"
	line "of my time."
	done

CherrygroveTeacherText:
    text "Some #MON"
    line "appear in the"
    cont "field."

    para "Watch out for the"
    line "dark red ones!"

    para "They will attack"
    line "you if they see"
    cont "you!"

    para "And you can't"
    line "escape from them!"
    done

CherrygroveYoungsterText_NoPokedex:
	text "I saw PROF OAK"
	line "come by earlier."

	para "He went up NORTH."

	para "There are trainers"
	line "up there but I'm"
	cont "sure OAK must have"
	cont "some strong #MON."
	done

CherrygroveYoungsterText_HavePokedex:
	text "I battled the"
	line "trainers on the"
	cont "road."

	para "I knew I couldn't"
	line "win!"

	para "So rather than sit"
	line "through the fight"
	cont "I FORFEITED using"
	cont "the RUN option."
	done

MysticWaterGuyTextBefore:
	text "This is the secret"
	line "of my power."

	para "Take it child!"
	done

MysticWaterGuyTextAfter:
	text "I'll never stop"
	line "fishing."

	para "I'll catch every"
	line "MAGIKARP in the"
	cont "sea."

	para "Then I'll end the"
	line "war with an army"
	cont "of GYARADOS!"
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
	setevent EVENT_GOT_SCOPE_LENS
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
    setval 0
    writemem wHandOfGod
	setval WEATHER_NONE
	writemem wFieldWeather
	special FadeOutMusic
	playmusic MUSIC_MISTY_MOUNTAIN
.HeroOrVillain
    writetext StarWarsHeroOrVillainChoiceText
	loadmenu .StarWarsHeroOrVillainMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Hero
	ifequal 2, .Villain
	sjump .HeroOrVillain
	closetext
	end
.StarWarsHeroOrVillainMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, 5
	dw .StarWarsHeroOrVillainMenuData
	db 1 ; default option
.StarWarsHeroOrVillainMenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
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

    checkevent EVENT_BEAT_ROLEPLAY_1
    iftrue .skipPrize
    opentext
    writetext RolePlay1PrizeText
    waitbutton
    verbosegiveitem MUSCLE_BAND
    closetext
    setevent EVENT_BEAT_ROLEPLAY_1
.skipPrize

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

RolePlay1PrizeText:
    text "We finished a"
    line "new game."

    para "Here take this"
    line "for playing."
    done

StarWarsIntroText:
    text "Do you like Role"
    line "Play games?!"

    para "I am starting"
    line "a STAR WARS theme"
    cont "RPG."

    para "I balance the"
    line "fights so usually"
    cont "either side can"
    cont "win. But it's"
    cont "easier for the"
    cont "side that is"
    cont "meant to win."

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
    line "him."

    para "But you will not"
    line "let them have"
    cont "him."
    done

StarWarsCh2HeroText:
    text "The battle was"
    line "fierce."

    para "QUI GON falls"
    line "and with his"
    cont "last breath asks"
    cont "OBI WAN to train"
    cont "ANIKAN."

    para "15 years pass."

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

    para "15 years pass."

    para "Now finally ready."

    para "ANIKAN has seen"
    line "the evil of the"
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
    line "him."

    para "Over the next 20"
    line "years LUKE grows"
    cont "into a great"
    cont "pilot."

    para "He leads the"
    line "final assault on"
    cont "the DEATH STAR."

    para "Only he can"
    line "save the galaxy."
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
    cont "you don't like it."
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

    para "Get up LUKE!"

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

    para "You set about"
    line "slowly killing"
    cont "him."

    para "You have much"
    line "experience in"
    cont "such slow deaths."

    para "LUKE asks for"
    line "VADER to save him."

    para "What a pathetic"
    line "way to die."

    para "He pleas again."

    para "And again."

    para "You become aware"
    line "of an anger."

    para "Growing..."

    para "Unexplained and"
    line "uncontrollable."

    para "LUKEs voice fades."

    para "Involuntary VADER"
    line "attacks you!"

    para "He stands between"
    line "you and LUKE."

    para "Get up LUKE!"

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
    line "out of love..."

    para "How disgusting."

    para "They must die."
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

    para "Finally content"
    line "that he made the"
    cont "right choice."
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
    cont "their max in a"
    cont "big fight!"
    done

StarWarsRolePlayEndText:
    text "Thanks for"
    line "playing with me."

    para "I travel about"
    line "playing different"
    cont "games."

    para "I will see you"
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

CherrygroveGentScene:
    checkevent EVENT_GUIDE_GENT_IN_HIS_HOUSE
    iftrue .end
    turnobject PLAYER, UP
    sjump CherrygroveCityGuideGent
.end
    end

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
	coord_event 32,  7, SCENE_ALWAYS, CherrygroveGentScene


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


