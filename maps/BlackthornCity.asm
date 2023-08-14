	object_const_def
	const BLACKTHORNCITY_SUPER_NERD1
	const BLACKTHORNCITY_SUPER_NERD2
	const BLACKTHORNCITY_GRAMPS1
	const BLACKTHORNCITY_GRAMPS2
	const BLACKTHORNCITY_BLACK_BELT
	const BLACKTHORNCITY_COOLTRAINER_F1
	const BLACKTHORNCITY_YOUNGSTER1
	const BLACKTHORNCITY_SANTOS
	const BLACKTHORNCITY_COOLTRAINER_F2

BlackthornCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	callback MAPCALLBACK_OBJECTS, .Santos

.FlyPoint:
	setflag ENGINE_FLYPOINT_BLACKTHORN
	endcallback

.Santos:
	readvar VAR_WEEKDAY
	ifequal SATURDAY, .SantosAppears
	disappear BLACKTHORNCITY_SANTOS
	endcallback

.SantosAppears:
	appear BLACKTHORNCITY_SANTOS
	endcallback

BlackthornSuperNerdScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CLAIR
	iftrue .BeatClair
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .ClearedRadioTower
	writetext Text_ClairIsOut
	waitbutton
	closetext
	end

.ClearedRadioTower:
	writetext Text_ClairIsIn
	waitbutton
	closetext
	end

.BeatClair:
	writetext Text_ClairIsBeaten
	waitbutton
	closetext
	end

BlackthornGramps1Script:
	jumptextfaceplayer BlackthornGrampsRefusesEntryText

BlackthornGramps2Script:
	jumptextfaceplayer BlackthornGrampsGrantsEntryText

BlackthornBlackBeltScript:
	faceplayer
	opentext
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .ClearedRadioTower
	writetext BlackBeltText_WeirdRadio
	waitbutton
	closetext
	end

.ClearedRadioTower:
	writetext BlackBeltText_VoicesInMyHead
	waitbutton
	closetext
	end

BlackthornCooltrainerF1Script:
	jumptextfaceplayer BlackthornCooltrainerF1Text

BlackthornYoungsterScript:
	jumptextfaceplayer BlackthornYoungsterText

BlackthornCooltrainerF2Script:
	jumptextfaceplayer BlackthornCooltrainerF2Text

SantosScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SPELL_TAG_FROM_SANTOS
	iftrue .Saturday
	readvar VAR_WEEKDAY
	ifnotequal SATURDAY, .NotSaturday
	checkevent EVENT_MET_SANTOS_OF_SATURDAY
	iftrue .MetSantos
	writetext MeetSantosText
	promptbutton
	setevent EVENT_MET_SANTOS_OF_SATURDAY
.MetSantos:
	writetext SantosGivesGiftText
	promptbutton
	verbosegiveitem SPELL_TAG
	iffalse .Done
	setevent EVENT_GOT_SPELL_TAG_FROM_SANTOS
	writetext SantosGaveGiftText
	waitbutton
	closetext
	end

.Saturday:
	writetext SantosSaturdayText
	waitbutton
.Done:
	closetext
	end

.NotSaturday:
	writetext SantosNotSaturdayText
	waitbutton
	closetext
	end

BlackthornCitySign:
	jumptext BlackthornCitySignText

BlackthornGymSign:
	jumptext BlackthornGymSignText

MoveDeletersHouseSign:
	jumptext MoveDeletersHouseSignText

DragonDensSign:
	jumptext DragonDensSignText

BlackthornCityTrainerTips:
	jumptext BlackthornCityTrainerTipsText

BlackthornCityPokecenterSign:
	jumpstd PokecenterSignScript

BlackthornCityMartSign:
	jumpstd MartSignScript

Text_ClairIsOut:
	text "I am sorry."

	para "CLAIR, our GYM"
	line "LEADER, entered"

	para "the DRAGON'S DEN"
	line "behind the GYM."

	para "I have no idea"
	line "when our LEADER"
	cont "will return."
	done

Text_ClairIsIn:
	text "CLAIR, our GYM"
	line "LEADER, is waiting"
	cont "for you."

	para "However, it would"
	line "be impossible for"

	para "a run-of-the-mill"
	line "trainer to win."
	done

Text_ClairIsBeaten:
	text "You defeated"
	line "CLAIR?"

	para "That's amazing!"

	para "I've never heard"
	line "of her losing to"

	para "anyone other than"
	line "LANCE."
	done

BlackthornGrampsRefusesEntryText:
	text "No. Only chosen"
	line "trainers may train"

	para "here."
	line "Please leave."
	done

BlackthornGrampsGrantsEntryText:
	text "If CLAIR allows"
	line "it, her grand-"
	cont "father--our MASTER"
	cont "--will also."

	para "You may enter."
	done

BlackBeltText_WeirdRadio:
	text "My radio's busted?"
	line "Lately, I only get"
	cont "this weird signal."
	done

BlackBeltText_VoicesInMyHead:
	text "Arooo! Voices in"
	line "my head!"

	para "Huh? I'm listening"
	line "to my radio!"
	done

BlackthornCooltrainerF1Text:
	text "Are you going to"
	line "make your #MON"
	cont "forget some moves?"
	done

BlackthornYoungsterText:
	text "Dragon masters all"
	line "come from the city"
	cont "of BLACKTHORN."
	done

MeetSantosText:
	text "SANTOS: …"

	para "It's Saturday…"

	para "I'm SANTOS of"
	line "Saturday…"
	done

SantosGivesGiftText:
	text "You can have this…"
	done

SantosGaveGiftText:
	text "SANTOS: …"

	para "SPELL TAG…"

	para "Ghost-type moves"
	line "get stronger…"

	para "It will frighten"
	line "you…"
	done

SantosSaturdayText:
	text "SANTOS: …"

	para "See you again on"
	line "another Saturday…"

	para "I won't have any"
	line "more gifts…"
	done

SantosNotSaturdayText:
	text "SANTOS: Today's"
	line "not Saturday…"
	done

BlackthornCooltrainerF2Text:
	text "Wow, you came"
	line "through the ICE"
	cont "PATH?"

	para "You must be a real"
	line "hotshot trainer!"
	done

BlackthornCitySignText:
	text "BLACKTHORN CITY"

	para "A Quiet Mountain"
	line "Retreat"
	done

BlackthornGymSignText:
	text "BLACKTHORN CITY"
	line "#MON GYM"
	cont "LEADER: CLAIR"

	para "The Blessed User"
	line "of Dragon #MON"
	done

MoveDeletersHouseSignText:
	text "MOVE DELETER'S"
	line "HOUSE"
	done

DragonDensSignText:
	text "DRAGON'S DEN"
	line "AHEAD"
	done

BlackthornCityTrainerTipsText:
	text "TRAINER TIPS"

	para "A #MON holding"
	line "a MIRACLEBERRY"

	para "will cure itself"
	line "of any status"
	cont "problem."
	done
	
LOTRRolePlayScript:
    faceplayer
    opentext
    writetext LOTRIntroText
    yesorno
    iffalse .refused
    special TryQuickSave
    iffalse .refused
	setval WEATHER_NONE
	writemem wFieldWeather
	special FadeOutMusic
	playmusic MUSIC_MISTY_MOUNTAIN
    writetext LOTRHeroOrVillainChoiceText
	loadmenu .LOTRHeroOrVillainMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Hero
	ifequal 2, .Villain
	closetext
	end
.LOTRHeroOrVillainMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, 5
	dw .LOTRHeroOrVillainMenuData
	db 1 ; default option
.LOTRHeroOrVillainMenuData:
	db STATICMENU_CURSOR ; flags
	dn 2, 1 ; rows, columns
	db 5 ; spacing
	dba .LOTRHeroOrVillainText
	dbw BANK(@), NULL
.LOTRHeroOrVillainText:
	db "HEROES@"
	db "VILLAINS@"

.Hero
    opentext
    writetext LOTRCh1HeroText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval LOTR_CH1_HERO
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_RED_LAVENDER
	writemem wBattleMusicOverride
	winlosstext LOTRVictoryText, LOTRDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, LOTR_CH1_VILLAIN
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext LOTRCh2HeroText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval LOTR_CH2_HERO
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_ARCHIE_BATTLE
	writemem wBattleMusicOverride
	winlosstext LOTRVictoryText, LOTRDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, LOTR_CH2_VILLAIN
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext LOTRHeroConcText
    waitbutton
    closetext

    opentext
    writetext LOTRBreakText
    yesorno
    closetext
    iffalse .stop

    opentext
    writetext LOTRCh3HeroText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval LOTR_CH3_HERO
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_XVZ
	writemem wBattleMusicOverride
	winlosstext LOTRVictoryText, LOTRDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, LOTR_CH3_VILLAIN
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext LOTRCh4HeroText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval LOTR_CH4_HERO
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_HOEN_CHAMPION
	writemem wBattleMusicOverride
	winlosstext LOTRVictoryText, LOTRDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, LOTR_CH4_VILLAIN
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext LOTRCh5HeroText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval LOTR_CH5_HERO
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_RED_DUNGEON
	writemem wBattleMusicOverride
	winlosstext LOTRVictoryText, LOTRDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, LOTR_CH5_VILLAIN
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext LOTREndText
    waitbutton
    closetext

    opentext
    writetext LOTRBonusRoundText
    yesorno
    closetext
    iffalse .stop

    opentext
    writetext LOTRCh6Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval LOTR_CH6_HERO
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_ZINNIA_BATTLE
	writemem wBattleMusicOverride
	winlosstext LOTRVictoryText, LOTRDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, LOTR_CH6_VILLAIN
	startbattle
	reloadmap

	sjump .end

.Villain
    opentext
    writetext LOTRCh1VillainText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval LOTR_CH1_VILLAIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_RED_LAVENDER
	writemem wBattleMusicOverride
	winlosstext LOTRVictoryText, LOTRDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, LOTR_CH1_HERO
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext LOTRCh2VillainText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval LOTR_CH2_VILLAIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_ARCHIE_BATTLE
	writemem wBattleMusicOverride
	winlosstext LOTRVictoryText, LOTRDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, LOTR_CH2_HERO
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext LOTRVillainConcText
    waitbutton
    closetext

    opentext
    writetext LOTRBreakText
    yesorno
    closetext
    iffalse .stop

    opentext
    writetext LOTRCh3VillainText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval LOTR_CH3_VILLAIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_XVZ
	writemem wBattleMusicOverride
	winlosstext LOTRVictoryText, LOTRDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, LOTR_CH3_HERO
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext LOTRCh4VillainText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval LOTR_CH4_VILLAIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_HOEN_CHAMPION
	writemem wBattleMusicOverride
	winlosstext LOTRVictoryText, LOTRDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, LOTR_CH4_HERO
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext LOTRCh5VillainText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval LOTR_CH5_VILLAIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_RED_DUNGEON
	writemem wBattleMusicOverride
	winlosstext LOTRVictoryText, LOTRDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, LOTR_CH5_HERO
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext LOTREndText
    waitbutton
    closetext

    opentext
    writetext LOTRBonusRoundText
    yesorno
    closetext
    iffalse .stop

    opentext
    writetext LOTRCh6Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval LOTR_CH6_VILLAIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_ZINNIA_BATTLE
	writemem wBattleMusicOverride
	winlosstext LOTRVictoryText, LOTRDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, LOTR_CH6_HERO
	startbattle
	reloadmap

.end
    playmusic MUSIC_AZALEA_TOWN
	opentext
	writetext LOTRRolePlayEndText
	waitbutton
	closetext
	special LoadPokemonData
	special HealParty
	end

.stop
    playmusic MUSIC_AZALEA_TOWN
	opentext
	writetext LOTRStopText
	waitbutton
	closetext
	special LoadPokemonData
	special HealParty
	end

.refused
    opentext
    writetext LOTRRolePlayRefusedText
    waitbutton
    closetext
    end

LOTRIntroText:
    text "It was quite a"
    line "journey but I"
    cont "finally got here."

    para "A mountain full"
    line "of dragons!"

    para "Puts me in the"
    line "mood for a"
    cont "LORD OF THE RINGS"
    cont "roleplay."

    para "Would you like to"
    line "play? You'll need"
    cont "to Save your game?"
    done

LOTRHeroOrVillainChoiceText:
    text "Would you like to"
    line "play as the Heroes"
    cont "or the Villains?"
    done

LOTRCh1HeroText:
    text "It's been so long"
    line "since you left"
    cont "the SHIRE."

    para "You rarely think"
    line "of how much you"
    cont "miss home."

    para "Here you are"
    line "hiding atop a"
    cont "stone tower with"
    cont "your friend SAM."

    para "You are being"
    line "hunted by RING"
    cont "WRAITHS."

    para "They seek the ONE"
    line "RING."

    para "The ultimate"
    line "weapon entrusted"
    cont "to you alone."

    para "What was that?"

    para "A screech in"
    line "the night."

    para "Another!"

    para "Closer this time."

    para "He has found us."

    para "The WITCH KING!"
    done

LOTRCh1VillainText:
    text "You seek only"
    line "one thing."

    para "To return to"
    line "your master and"
    cont "creater."

    para "Many have held"
    line "you."

    para "And all have had"
    line "their wills bend"
    cont "to your purpose."

    para "The one who holds"
    line "you now is strong."

    para "But FRODO will"
    line "bend to you"
    cont "eventually."

    para "You are the ONE"
    line "RING."

    para "The ultimate"
    line "weapon."

    para "The RING WRAITHS"
    line "are near."

    para "They will return"
    line "you to your master"
    cont "SAURON."

    para "You call out."

    para "The WITCH KING has"
    line "found you."

    para "Now he will kill"
    line "your kidnappers"
    cont "and return you"
    cont "home."
    done

LOTRCh2HeroText:
    text "FRODO is badly"
    line "injured by the"
    cont "WITCH KING."

    para "A stranger jumps"
    line "in the battle."

    para "He weilds a"
    line "basic sword."

    para "No match for the"
    line "refined weapons"
    cont "of the WITCH KING."

    para "He works the KING"
    line "high and low."

    para "His deft strikes"
    line "finding their mark"
    cont "on every stroke."

    para "The WITCH KING"
    line "disappears into"
    cont "the night."

    para "The stranger"
    line "takes you to a"
    cont "city of elves."

    para "Your wizard friend"
    line "GANDALF is there."

    para "FRODO is healed."

    para "You form a team."

    para "A fellowship."

    para "You and SAM will"
    line "take the ring to"
    cont "MT DOOM to destroy"
    cont "it."

    para "ARAGORN, GANDALF"
    line "and several other"
    cont "warriors will"
    cont "fight the evil"
    cont "forces of SAURON."

    para "They travel deep"
    line "into the mine"
    cont "of MORIA."

    para "It is clear they"
    line "are not alone."

    para "There are swarms"
    line "of ORCS and evil"
    cont "creatures."

    para "GANDALF senses"
    line "something much"
    cont "worse."

    para "A Demon of the"
    line "ancient world"
    cont "awaits us here."
    done

LOTRCh2VillainText:
    text "The WITCH KING"
    line "has struck a"
    cont "mortal blow to"
    cont "this hobbit who"
    cont "dares to claim"
    cont "you."

    para "A stranger has"
    line "appeared."

    para "No this is no"
    line "normal man."

    para "This is ARAGORN"
    line "the true king of"
    cont "GONDOR."

    para "He defeats the"
    line "WITCH KING!"

    para "You are taken to"
    line "an elven city."

    para "You sense the"
    line "presence of the"
    cont "wizard GANDALF."

    para "And even the great"
    line "GALADRIEL."

    para "Such powerful"
    line "potential hosts."

    para "FRODO plans to"
    line "take you to Mt"
    cont "DOOM to destroy"
    cont "you."

    para "This is what you"
    line "want."

    para "For SAURON will"
    line "surly find you"
    cont "at MT DOOM."

    para "FRODO will be"
    line "dead long before"
    cont "he gets there."

    para "GANDALF is going"
    line "to the mine of"
    cont "MORIA."

    para "You reach out"
    line "and take command"
    cont "of an ancient"
    cont "demon that lies"
    cont "deep within MORIA."

    para "Your body is a"
    line "towering inferno."

    para "You are a BALROG."

    para "Lord of fire!"

    para "GANDALF comes."

    para "The poor wizard"
    line "shall die here"
    cont "and now!"
    done

LOTRHeroConcText:
    text "The BALROG is"
    line "too powerful."

    para "It is intent on"
    line "killing all who"
    cont "oppose it."

    para "GANDALF uses all"
    line "his wizardly might"
    cont "to restrain it."

    para "ARAGORN and the"
    line "party escape."

    para "But GANDALF is"
    line "no more."

    para "The party presses"
    line "on through the"
    cont "despair."
    done

LOTRCh3HeroText:
    text "But GANDALFs valor"
    line "has not gone"
    cont "unnoticed."

    para "GALARIEL revives"
    line "him as GANDALF THE"
    cont "WHITE."

    para "The highest order"
    line "of wizard."

    para "He must make"
    line "haste to catch"
    cont "up with the party."

    para "SARUMAN the former"
    line "high wizard makes"
    cont "sure GANDALF is"
    cont "killed."

    para "There can be only"
    line "one WHITE wizard!"

    para "GANDALF knows"
    line "this."

    para "But is not"
    line "concerned."

    para "His new powers are"
    line "great."
    done

LOTRVillainConcText:
    text "You lash out"
    line "with your sword"
    cont "of flame."

    para "Only GANDALF has"
    line "the power to hold"
    cont "you off."

    para "But you sense him"
    line "weakening."

    para "One last full"
    line "power swing!"

    para "GANDALFS shield"
    line "is gone."

    para "All that remains"
    line "of him are chard"
    cont "remnants of cloth."

    para "Finally GANDALF"
    line "is dead!"

    para "The rest of the"
    line "party escape but"
    cont "the damage is"
    cont "done."
    done

LOTRCh3VillainText:
    text "Now to kill FRODO."

    para "What is that."

    para "A distant magic."

    para "GANDALF?!"

    para "It can't be."

    para "He has returned"
    line "as GANDALF THE"
    cont "WHITE."

    para "The highest order"
    line "of wizard."

    para "On a distant tower"
    line "SARUMAN the former"
    cont "head of the wizard"
    cont "order senses this."

    para "You are most"
    line "displeased."

    para "You are SARUMAN"
    line "THE WHITE."

    para "You have been"
    line "head of the order"
    cont "for centuries."

    para "You will not allow"
    line "this insult!"

    para "You gather your"
    line "forces."

    para "You must kill"
    line "GANDALF!"

    para "There can be only"
    line "one WHITE wizard!"
    done

LOTRCh4HeroText:
    text "GANDALFs new"
    line "power is more"
    cont "than enough to"
    cont "defeat SARUMAN."

    para "But ARAGORN faces"
    line "enemies he can"
    cont "not defeat."

    para "GANDALF can not"
    line "offer assistance"
    cont "in time."

    para "You sit on the"
    line "eve of another"
    cont "battle."

    para "You know you don't"
    line "have the strength"
    cont "to win."

    para "An elf ELROND"
    line "enters."

    para "He has something"
    line "concealed in a"
    cont "cloth."

    para "It can not be."

    para "The ancient sword"
    line "of kings."

    para "It was destroyed"
    line "centuries ago."

    para "ELROND puts the"
    line "sword in your"
    cont "hand."

    para "It is reforged."

    para "For the one true"
    line "king."

    para "You feel the power"
    line "and legacy of the"
    cont "sword in hand."

    para "The battle horn"
    line "sounds."

    para "You feel nothing."

    para "There is only"
    line "purpose."

    para "You fight for"
    line "FRODO."

    para "You fight for"
    line "hope."

    para "A wave of Orcs"
    line "rush you."

    para "One slash sends"
    line "limbs strewn"
    cont "across the sky."

    para "You will show no"
    line "quarter."
    done

LOTRCh4VillainText:
    text "GANDALF is too"
    line "strong!"

    para "SARUMAN and his"
    line "forces are swept"
    cont "aside."

    para "But you know the"
    line "real battle is"
    cont "already won."

    para "Your forces have"
    line "surrounded the"
    cont "camp of ARAGORN."

    para "He is exhausted."

    para "As are his men."

    para "With him gone"
    line "SAROMANS forces"
    cont "will be free to"
    cont "move."

    para "And you will be"
    line "reunited with"
    cont "your master."

    para "You take command"
    line "of GOTHMOG the"
    cont "commander of the"
    cont "ORC forces."

    para "The attack begins!"

    para "There is ARAGORN."

    para "Alone he walks"
    line "towards us."

    para "Fool, there will"
    line "be no mercy."

    para "First wave attack!"

    para "With a flash"
    line "a dozen Orcs and"
    cont "their limbs rain"
    cont "from the sky."

    para "Did ARAGORN do"
    line "that!"

    para "That sword!"

    para "I know it."

    para "The sword of"
    line "the great king!"

    para "ARAGORN must die!"

    para "Attack at will!"
    done

LOTRCh5HeroText:
    text "Between GANDALF"
    line "and ARAGORN all"
    cont "SAURONS forces"
    cont "are defeated."

    para "FRODO is at"
    line "MT DOOM!"

    para "You take the RING."

    para "Finally you will"
    line "cast it into the"
    cont "fire and be rid"
    cont "of it!"

    para "But why not keep"
    line "it..."

    para "What!"

    para "I must destroy it!"

    para "But it is mine."

    para "SAM shouts for me"
    line "to do it."

    para "The RING..."

    para "Where is it?"

    para "A huge figure"
    line "appears."

    para "You feel the life"
    line "leave you."

    para "It is SAURON!"

    para "He has the RING!"

    para "But you and SAM"
    line "wont give up."

    para "You have grown"
    line "so much."

    para "Here at the end"
    line "all things."

    para "You will make a"
    line "final stand."
    done

LOTRCh5VillainText:
    text "Between GANDALF"
    line "and ARAGORN all"
    cont "SAURONS forces"
    cont "are defeated."

    para "FRODO means to"
    line "cast you into"
    cont "the fires of"
    cont "MT DOOM."

    para "You will be"
    line "destroyed!"

    para "You plead for"
    line "your life."

    para "You can help"
    line "FRODO."

    para "You can make him"
    line "immortal."

    para "Where am I?"

    para "This finger."

    para "I am home."

    para "SAURON."

    para "You awaken."

    para "The world seem to"
    line "warp and kneel"
    cont "about you as you"
    cont "rise."

    para "Overflowing with"
    line "power!"

    para "You are whole"
    line "again."

    para "Look upon those"
    line "two pitiful"
    cont "hobbits."

    para "The fear in their"
    line "faces delights"
    cont "you."

    para "They look ready"
    line "to battle you."

    para "Futile."

    para "You are the lord"
    line "of all things."

    para "You are evil"
    line "itself."
    done

LOTRCh6Text:
    text "That was great."

    para "Let's have one"
    line "last bonus game."

    para "All the heroes and"
    line "all the villains"
    cont "powered up to"
    cont "their max in one"
    cont "giant battle!"
    done

LOTRRolePlayEndText:
    text "Thanks for"
    line "playing with me."

    para "We will see you"
    line "around I'm sure."
    done

LOTRRolePlayRefusedText:
    text "It'll be fun."

    para "I promise."
    done

LOTRVictoryText:
    text "Victory!"
    done

LOTRDefeatText:
    text "Defeat!"
    done

LOTREndText:
    text "Though SAURON"
    line "seemed unbeatable"
    cont "FRODO and SAM"
    cont "fought to the"
    cont "end."

    para "SAURON fell into"
    line "MT DOOM and the"
    cont "RING was finally"
    cont "destroyed."

    para "SAURON was"
    line "defeated."

    para "FRODO and SAM"
    line "found themselves"
    cont "sitting on a rock."

    para "Lava flowing about"
    line "them from the"
    cont "falling mountain."

    para "You are content."

    para "You gave your life"
    line "to save everyone."

    para "You await the end."

    para "A light from the"
    line "sky comes."

    para "It is GANDALF!"

    para "He takes you away."

    para "The world is safe."

    para "You welcome your"
    line "boring life in"
    cont "SHIRE."

    para "For the rest of"
    line "your days."
    done
    
LOTRBreakText:
    text "Do you need to"
    line "go or would you"
    cont "like to continue"
    cont "to the second"
    cont "half of the story?"
    done

LOTRBonusRoundText:
    text "That's the end"
    line "of the story."

    para "But would you"
    line "like to have a"
    cont "special bonus"
    cont "round?"
    done

LOTRStopText:
    text "OK we will leave"
    line "it there then."

    para "Maybe we can do"
    line "the whole story"
    cont "next time."
    done

BlackthornCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18, 11, BLACKTHORN_GYM_1F, 1
	warp_event 13, 21, BLACKTHORN_DRAGON_SPEECH_HOUSE, 1
	warp_event 29, 23, BLACKTHORN_EMYS_HOUSE, 1
	warp_event 15, 29, BLACKTHORN_MART, 2
	warp_event 21, 29, BLACKTHORN_POKECENTER_1F, 1
	warp_event  9, 31, MOVE_DELETERS_HOUSE, 1
	warp_event 36,  9, ICE_PATH_1F, 2
	warp_event 20,  1, DRAGONS_DEN_1F, 1

	def_coord_events

	def_bg_events
	bg_event 34, 24, BGEVENT_READ, BlackthornCitySign
	bg_event 17, 13, BGEVENT_READ, BlackthornGymSign
	bg_event  7, 31, BGEVENT_READ, MoveDeletersHouseSign
	bg_event 21,  3, BGEVENT_READ, DragonDensSign
	bg_event  5, 25, BGEVENT_READ, BlackthornCityTrainerTips
	bg_event 16, 29, BGEVENT_READ, BlackthornCityMartSign
	bg_event 22, 29, BGEVENT_READ, BlackthornCityPokecenterSign

	def_object_events
	object_event 18, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornSuperNerdScript, EVENT_BLACKTHORN_CITY_SUPER_NERD_BLOCKS_GYM
	object_event 19, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornSuperNerdScript, EVENT_BLACKTHORN_CITY_SUPER_NERD_DOES_NOT_BLOCK_GYM
	object_event 20,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGramps1Script, EVENT_BLACKTHORN_CITY_GRAMPS_BLOCKS_DRAGONS_DEN
	object_event 21,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGramps2Script, EVENT_BLACKTHORN_CITY_GRAMPS_NOT_BLOCKING_DRAGONS_DEN
	object_event 24, 31, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornBlackBeltScript, -1
	object_event  9, 25, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornCooltrainerF1Script, -1
	object_event 13, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornYoungsterScript, -1
	object_event 22, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantosScript, EVENT_BLACKTHORN_CITY_SANTOS_OF_SATURDAY
	object_event 35, 19, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BlackthornCooltrainerF2Script, -1
	object_event 26, 28, SPRITE_WILL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, LOTRRolePlayScript, -1
