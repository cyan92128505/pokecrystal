    object_const_def
    const SILVERCAVEOUTSIDE_SILVER
    const SILVERCAVEOUTSIDE_CRYSTAL
    const SILVERCAVEOUTSIDE_FIELDMON_1
    const SILVERCAVEOUTSIDE_FIELDMON_2
    const SILVERCAVEOUTSIDE_FIELDMON_3
    const SILVERCAVEOUTSIDE_FIELDMON_4
    const SILVERCAVEOUTSIDE_FIELDMON_5
    const SILVERCAVEOUTSIDE_FIELDMON_6
    const SILVERCAVEOUTSIDE_FIELDMON_7
    const SILVERCAVEOUTSIDE_FIELDMON_8
    const SILVERCAVEOUTSIDE_FIELDMON_9
    const SILVERCAVEOUTSIDE_FIELDMON_10

SilverCaveOutside_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	callback MAPCALLBACK_OBJECTS, .Objects

.FlyPoint:
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	endcallback

.Objects:
    checkevent EVENT_BEAT_CRYSTAL_7
    iftrue .skipWeather
	setval WEATHER_NONE
	writemem wFieldWeather
.skipWeather
    disappear SILVERCAVEOUTSIDE_SILVER
    disappear SILVERCAVEOUTSIDE_CRYSTAL
	appear SILVERCAVEOUTSIDE_FIELDMON_1
	appear SILVERCAVEOUTSIDE_FIELDMON_2
	appear SILVERCAVEOUTSIDE_FIELDMON_3
	appear SILVERCAVEOUTSIDE_FIELDMON_4
	appear SILVERCAVEOUTSIDE_FIELDMON_5
	appear SILVERCAVEOUTSIDE_FIELDMON_6
	appear SILVERCAVEOUTSIDE_FIELDMON_7
	appear SILVERCAVEOUTSIDE_FIELDMON_8
	appear SILVERCAVEOUTSIDE_FIELDMON_9
	appear SILVERCAVEOUTSIDE_FIELDMON_10
	endcallback

SilverCaveOutsideFieldMon1Script:
	faceplayer
	cry INFERNAPE
	pause 15
	loadwildmon INFERNAPE, 70
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT_ESCAPE
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_1
	disappear SILVERCAVEOUTSIDE_FIELDMON_1
	end

SilverCaveOutsideFieldMon2Script:
	faceplayer
	cry SCEPTILE
	pause 15
	loadwildmon SCEPTILE, 70
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT_ESCAPE
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_2
	disappear SILVERCAVEOUTSIDE_FIELDMON_2
	end

SilverCaveOutsideFieldMon3Script:
	faceplayer
	cry GRENINJA
	pause 15
	loadwildmon GRENINJA, 70
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT_ESCAPE
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_3
	disappear SILVERCAVEOUTSIDE_FIELDMON_3
	end

SilverCaveOutsideFieldMon4Script:
	faceplayer
	cry STARAPTOR
	pause 15
	loadwildmon STARAPTOR, 70
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT_ESCAPE
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_4
	disappear SILVERCAVEOUTSIDE_FIELDMON_4
	end

SilverCaveOutsideFieldMon5Script:
	faceplayer
	cry GALVANTULA
	pause 15
	loadwildmon GALVANTULA, 70
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT_ESCAPE
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_5
	disappear SILVERCAVEOUTSIDE_FIELDMON_5
	end

SilverCaveOutsideFieldMon6Script:
	faceplayer
	cry VOLCARONA
	pause 15
	loadwildmon VOLCARONA, 70
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT_ESCAPE
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_6
	disappear SILVERCAVEOUTSIDE_FIELDMON_6
	end

SilverCaveOutsideFieldMon7Script:
	faceplayer
	cry EXEGGUTOR
	pause 15
	loadwildmon EXEGGUTOR, 70
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT_ESCAPE
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_7
	disappear SILVERCAVEOUTSIDE_FIELDMON_7
	end

SilverCaveOutsideFieldMon8Script:
	faceplayer
	cry STARMIE
	pause 15
	loadwildmon STARMIE, 70
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT_ESCAPE
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_8
	disappear SILVERCAVEOUTSIDE_FIELDMON_8
	end

SilverCaveOutsideFieldMon9Script:
	faceplayer
	cry POLITOED
	pause 15
	loadwildmon POLITOED, 70
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT_ESCAPE
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_9
	disappear SILVERCAVEOUTSIDE_FIELDMON_9
	end

SilverCaveOutsideFieldMon10Script:
	faceplayer
	cry AMPHAROS
	pause 15
	loadwildmon AMPHAROS, 70
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT_ESCAPE
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_10
	disappear SILVERCAVEOUTSIDE_FIELDMON_10
	end

MtSilverPokecenterSign:
	jumpstd PokecenterSignScript

MtSilverSign:
	jumptext MtSilverSignText

SilverCaveOutsideHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_SILVER_CAVE_OUTSIDE_HIDDEN_FULL_RESTORE

MtSilverSignText:
	text "MT.SILVER"
	done

;SilverCaveRival:
;	opentext
;	checkevent EVENT_BEAT_SILVER_CAVE_RIVAL
;	iftrue .FightDone
;.fight
;	writetext SilverCaveRivalSeenText
;	waitbutton
;	closetext
;	winlosstext SilverCaveRivalBeatenText, SilverCaveRivalBeatenText
;	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
;	loadtrainer RIVAL2, RIVAL2_SILVER_CAVE
;	startbattle
;	reloadmapafterbattle
;	setevent EVENT_BEAT_SILVER_CAVE_RIVAL
;	special HealParty
;	end
;.FightDone:
;	writetext SilverCaveRivalAfterBattleText
;	waitbutton
;   closetext
;	opentext
;	writetext RematchTextSilverCave
;	yesorno
;	iftrue .fight
;	writetext RematchRefuseTextSilverCave
;	waitbutton
;	closetext
;	end

;RematchTextSilverCave:
;    text "Shall we fight?"
;    done

;RematchRefuseTextSilverCave:
;    text "Anytime."
;    done

;SilverCaveRivalSeenText:
;    text "Hello <PLAYER>"

;    para "We have been"
;    line "through a lot"
;    cont "together."

;    para "Haven't we..."

;    para "My #MON"
;    line "and I are now"
;    cont "united with a"
;    cont "single purpose."

;    para "To become all"
;    line "that we can be."

;    para "We want to thank"
;    line "you."

;    para "In the only way"
;    line "we can."
;    done

;SilverCaveRivalBeatenText:
;    text "We have a lot"
;    line "further to"
;    cont "go."
;    done

;SilverCaveRivalAfterBattleText:
;    text "I always wanted"
;    line "to prove myself"
;    cont "to my father."

 ;   para "I don't care"
 ;   line "about that"
 ;   cont "anymore."

;    para "I am surrounded"
;    line "by friends who"
;    cont "I respect far"
;    cont "more."

;    para "I consider you"
;    line "one of them."
;    done

;SilverCaveEusine:
;	trainer MYSTICALMAN, EUSINE_SILVER_CAVE, EVENT_BEAT_SILVER_CAVE_EUSINE, SilverCaveEusineSeenText, SilverCaveEusineBeatenText, 0, .Script

;.Script:
;	endifjustbattled
;	opentext
;	writetext SilverCaveEusineAfterBattleText
;	waitbutton
;	closetext
;	end

;SilverCaveEusineSeenText:
;    text "I have been"
;    line "chosen!"

;    para "Thanks to you."

;    para "SUICUNE has seen"
;    line "my true value."

;    para "Our bond grows"
;    line "stronger through"
;    cont "battle."

;    para "Help me fortify"
;    line "our bond further!"
;    done

;SilverCaveEusineBeatenText:
;    text "We learn more"
;    line "from defeat."
;    done

;SilverCaveEusineAfterBattleText:
;    text "There is a"
;    line "trainer in the"
;    cont "cave."

;    para "He defeated me"
;    line "with just one"
;    cont "#MON!"

;    para "A PIKACHU of"
;    line "all things."

;    para "Be careful my"
;    line "friend."
;    done

SilverCaveOutsideBlockScript:
    checkevent EVENT_BEAT_RED
    iffalse .block
    checkevent EVENT_BEAT_ASH
    iffalse .block
    end
.block
    turnobject PLAYER, UP
	opentext
	writetext SilverCaveOutsideBlockText
    waitbutton
    closetext
    applymovement PLAYER, Movement_SilverCaveOutsideTurnBack
    end

SilverCaveOutsideBlockText:
    text "A voice speaks!"

    para "Only #MON"
    line "MASTERS may enter."

    para "And become the"
    line "GRAND MASTER."
    done

Movement_SilverCaveOutsideTurnBack:
	step DOWN
	step_end

Movement_SilverCaveOutsideTurnBackSlow:
	slow_step DOWN
	step_end

SilverCaveRivalsScript:
    checkevent EVENT_BEAT_SILVER_CAVE_RIVAL
    iffalse .fight
    checkevent EVENT_BEAT_CRYSTAL_7
    iffalse .fight
    end
.fight
    showemote EMOTE_SHOCK, PLAYER, 15
    applymovement PLAYER, Movement_SilverCaveOutsideTurnBack
    playmusic MUSIC_RIVAL_ENCOUNTER
    appear SILVERCAVEOUTSIDE_SILVER
    applymovement SILVERCAVEOUTSIDE_SILVER, SilverCaveOutsideMovement_SilverApproaches
    turnobject PLAYER, LEFT
    opentext
    writetext SilverCaveSilverIntroText
    waitbutton
    closetext

    appear SILVERCAVEOUTSIDE_CRYSTAL
    applymovement SILVERCAVEOUTSIDE_CRYSTAL, SilverCaveOutsideMovement_CrystalApproaches
    playmusic MUSIC_CRYSTAL_ENCOUNTER
    turnobject PLAYER, RIGHT
    opentext
    writetext SilverCaveCrystalIntroText
    waitbutton
    closetext

    turnobject PLAYER, LEFT
    playmusic MUSIC_RIVAL_ENCOUNTER
    opentext
    writetext SilverCaveSilverBattleText
    waitbutton
    closetext
	winlosstext Silver7LosesText, Silver7WinsText
    loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer RIVAL2, RIVAL2_SILVER_CAVE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SILVER_CAVE_RIVAL
    opentext
    writetext SilverCaveSilverAfterBattleText
    waitbutton
    closetext
    special HealParty

    turnobject PLAYER, RIGHT
    opentext
    writetext SilverCaveCrystalBattleText
    waitbutton
    closetext
	winlosstext Crystal7LosesText, Crystal7WinsText
    loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer CRYSTAL, CRYSTAL_7
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CRYSTAL_7
    opentext
    writetext SilverCaveCrystalAfterBattleText
    waitbutton
    closetext

    special FadeOutMusic
    applymovement SILVERCAVEOUTSIDE_CRYSTAL, Movement_SilverCaveOutsideTurnBackSlow
    turnobject PLAYER, DOWN
    turnobject SILVERCAVEOUTSIDE_SILVER, DOWN
    pause 10
    opentext
    writetext SilverCaveCrystalSitDownText
    waitbutton
    closetext
    pause 10
    applymovement PLAYER, Movement_SilverCaveOutsideTurnBackSlow
    applymovement SILVERCAVEOUTSIDE_SILVER, Movement_SilverCaveOutsideTurnBackSlow

    playmusic MUSIC_ECRUTEAK_CITY
    opentext
    writetext SilverCaveCrystalFriendshipText
    waitbutton
    closetext
    turnobject SILVERCAVEOUTSIDE_SILVER, RIGHT
    opentext
    writetext SilverCaveSilverFriendshipText
    waitbutton
    closetext

    applymovement SILVERCAVEOUTSIDE_CRYSTAL, Movement_SilverCaveOutsideTurnBack
    turnobject SILVERCAVEOUTSIDE_SILVER, DOWN
    opentext
    writetext SilverCaveCrystalShouldGoText
    waitbutton
    closetext
    turnobject SILVERCAVEOUTSIDE_CRYSTAL, LEFT
    opentext
    writetext SilverCaveCrystalSilverComeTooText
    waitbutton
    closetext
    applymovement SILVERCAVEOUTSIDE_SILVER, Movement_SilverCaveOutsideTurnBack
    turnobject SILVERCAVEOUTSIDE_SILVER, RIGHT
    opentext
    writetext SilverCaveSilverWhatYouMeanText
    waitbutton
    closetext
    opentext
    writetext SilverCaveCrystalYouStoleText
    waitbutton
    closetext
    turnobject SILVERCAVEOUTSIDE_SILVER, DOWN
    opentext
    writetext SilverCaveSilverYouRightText
    waitbutton
    closetext

    turnobject SILVERCAVEOUTSIDE_SILVER, UP
    opentext
    writetext SilverCaveSilverGoodbyeText
    waitbutton
    closetext
    applymovement SILVERCAVEOUTSIDE_SILVER, SilverCaveOutsideMovement_SilverLeaves
    disappear SILVERCAVEOUTSIDE_SILVER
    applymovement SILVERCAVEOUTSIDE_CRYSTAL, SilverCaveOutsideMovement_CrystalGoodbye
    opentext
    writetext SilverCaveCrystalGoodbyeText
    waitbutton
    closetext
    turnobject SILVERCAVEOUTSIDE_CRYSTAL, DOWN
    opentext
    writetext SilverCaveCrystalForgetText
    waitbutton
    closetext
    applymovement SILVERCAVEOUTSIDE_CRYSTAL, SilverCaveOutsideMovement_CrystalLeaves
    disappear SILVERCAVEOUTSIDE_CRYSTAL
    end

SilverCaveOutsideMovement_SilverApproaches:
    step UP
    step UP
    step UP
    step UP
    step UP
    turn_head RIGHT
    step_end

SilverCaveOutsideMovement_CrystalApproaches:
    step UP
    step UP
    step UP
    step UP
    step UP
    turn_head LEFT
    step_end

SilverCaveOutsideMovement_SilverLeaves:
    step DOWN
    step DOWN
    step DOWN
    step DOWN
    step DOWN
    step_end

SilverCaveOutsideMovement_CrystalLeaves:
    step DOWN
    step DOWN
    step DOWN
    step DOWN
    step DOWN
    step_end

SilverCaveOutsideMovement_CrystalGoodbye:
    step LEFT
    turn_head UP
    step_end

SilverCaveSilverIntroText:
    text "Wait up Hero."

    para "Everyone's talking"
    line "about the saviour"
    cont "who defeated the"
    cont "HOEN army."

    para "All of those"
    line "pretentious"
    cont "CHAMPIONS who"
    cont "did nothing to"
    cont "help."

    para "You made them all"
    line "look like cowards."

    para "OAK told us you"
    line "would be coming"
    cont "here."
    done

SilverCaveCrystalIntroText:
    text "Hi <PLAYER>!"

    para "So now that you"
    line "have saved us"
    cont "all you are here"
    cont "to fight some guy"
    cont "called RED."

    para "To see if you are"
    line "the strongest"
    cont "trainer in the"
    cont "world."

    para "And you didn't"
    line "invite me along!"
    done

SilverCaveSilverBattleText:
    text "Hmph!"

    para "Strongest in"
    line "the world."

    para "Where was he"
    line "when the world"
    cont "needed him."

    para "Hiding away here."

    para "You are stronger"
    line "than anyone!"

    para "But we have"
    line "become much"
    cont "stronger too on"
    cont "our travels."

    para "I'm sure you are"
    line "still stronger."

    para "Indulge me one"
    line "last fight."
    done

Silver7LosesText:
    text "Of course."
    done

Silver7WinsText:
    text "I am only this"
    line "strong because"
    cont "of you."
    done

SilverCaveSilverAfterBattleText:
    text "I would be"
    line "surprised if it"
    cont "ended any other"
    cont "way."
    done

SilverCaveCrystalBattleText:
    text "Well of course"
    line "<PLAYER> won."

    para "But like <RIVAL>"
    line "said."

    para "We have both got"
    line "much stronger."

    para "Now before you"
    line "go off and beat"
    cont "whoever awaits"
    cont "you in there."

    para "How about giving"
    line "me one last"
    cont "lesson."

    para "I'll heal your"
    line "#MON first of"
    cont "course."
    done

Crystal7LosesText:
    text "I've learnt"
    line "a lot from you."
    done

Crystal7WinsText:
    text "I've learnt"
    line "a lot from you."
    done

SilverCaveCrystalAfterBattleText:
    text "Haha.."

    para "That was fun."

    para "We have come such"
    line "a long way since"
    cont "we left home."

    para "It all seemed"
    line "to go by so"
    cont "fast..."
    done

SilverCaveCrystalSitDownText:
    text "It's calm here."

    para "Maybe we can just"
    line "sit here a while."

    para "Before life"
    line "races us along"
    cont "again."
    done

SilverCaveCrystalFriendshipText:
    text "Remember the first"
    line "time all three of"
    cont "us met?"

    para "It was at OLIVINE."

    para "<RIVAL> was"
    line "expressing his"
    cont "appreciation for"
    cont "you in his"
    cont "usual charismatic"
    cont "way."

    para "Then I got right"
    line "up in his face"
    cont "and I could see"
    cont "he was secretly"
    cont "terrified of me!"

    para "I should have"
    line "just let you two"
    cont "fight and taken"
    cont "the credit after"
    cont "<PLAYER> thrashed"
    cont "you."

    para "I guess once"
    line "you're a #MON"
    cont "MASTER I wont"
    cont "see you so much"
    cont "anymore"
    done

SilverCaveSilverFriendshipText:
    text "<PLAYER> would"
    line "not have thrashed"
    cont "me..."

    para "OK you probably"
    line "would have."

    para "I nearly got"
    line "thrashed by"
    cont "CRYSTAL because"
    cont "I didn't want"
    cont "to invoke her"
    cont "wrath by easily"
    cont "winning."

    para "Which I could"
    line "have..."

    para "I hear you found"
    line "your lost father."

    para "I was also"
    line "looking for mine."

    para "I found him and"
    line "was intent on"
    cont "telling him I"
    cont "hated him."

    para "But I didn't."

    para "To my surprise"
    line "we were really"
    cont "happy to see"
    cont "each other."

    para "I think it was"
    line "because of you"
    cont "that I have"
    cont "changed so much."
    done

SilverCaveCrystalShouldGoText:
    text "Well..."

    para "I think I'm going"
    line "back home now."

    para "All this fighting"
    line "has made me"
    cont "really home sick."
    done

SilverCaveCrystalSilverComeTooText:
    text "You're coming too"
    line "<RIVAL>."
    done

SilverCaveSilverWhatYouMeanText:
    text "Why would I"
    line "go!"

    para "NEW BARK town"
    line "isn't my home."

    para "Would you miss"
    line "me that much!"
    done

SilverCaveCrystalYouStoleText:
    text "Yeah I really"
    line "couldn't bear"
    cont "to be apart"
    cont "from you...."

    para "No, you are"
    line "coming back to"
    cont "make up for"
    cont "what you done."

    para "You stole #MON"
    line "from PROF.ELM."

    para "The least you can"
    line "do is apologise."
    done

SilverCaveSilverYouRightText:
    text "I did do that."

    para "...."

    para "You are right."

    para "I need to clear"
    line "my name if I"
    cont "can."
    done

SilverCaveSilverGoodbyeText:
    text "You should go"
    line "back too and see"
    cont "your mum and dad."

    para "But not before"
    line "you waltz in there"
    cont "and crush that"
    cont "RED the same way"
    cont "you have done with"
    cont "me everytime we"
    cont "have fought."

    para "Good luck Mr"
    line "#MON MASTER."
    done

SilverCaveCrystalGoodbyeText:
    text "RED wont stand"
    line "a chance against"
    cont "you."

    para "<PLAYER>..."

    para "I want to thank"
    line "you for saving"
    cont "me."

    para "And my family."

    para "And everyone else."
    done

SilverCaveCrystalForgetText:
    text "I wont forget it."
    done
    
HoenWarRolePlayScript:
    faceplayer
    opentext
    writetext HoenWarIntroText
    yesorno
    iffalse .refused
    special TryQuickSave
    iffalse .refused
	setval WEATHER_NONE
	writemem wFieldWeather
    writetext HoenWarHeroOrVillainChoiceText
	loadmenu .HoenWarHeroOrVillainMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Hero
	ifequal 2, .Villain
	closetext
	end
.HoenWarHeroOrVillainMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, 5
	dw .HoenWarHeroOrVillainMenuData
	db 1 ; default option
.HoenWarHeroOrVillainMenuData:
	db STATICMENU_CURSOR ; flags
	dn 2, 1 ; rows, columns
	db 5 ; spacing
	dba .HoenWarHeroOrVillainText
	dbw BANK(@), NULL
.HoenWarHeroOrVillainText:
	db "HEROES@"
	db "VILLAINS@"

.Hero
    opentext
    writetext HoenWarCh1HeroText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval HOEN_WAR_KOGA
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_HOEN_GRUNT
	writemem wBattleMusicOverride
	winlosstext HoenWarVictoryText, HoenWarDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, HOEN_WAR_DRAKE
	startbattle
	reloadmap

    opentext
    writetext HoenWarCh3HeroText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval HOEN_WAR_JANINE
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_HOEN_CHAMPION
	writemem wBattleMusicOverride
	winlosstext HoenWarVictoryText, HoenWarDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, HOEN_WAR_WALLACE
	startbattle
	reloadmap

	opentext
	writetext HoenWarTakeActionText
	waitbutton
	closetext

.choice
	opentext
    writetext HoenWarActionText
	loadmenu .HoenWarActionMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Beg
	ifequal 2, .Fight
	ifequal 3, .Pray
	closetext
	end
.HoenWarActionMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, 7
	dw .HoenWarActionMenuData
	db 1 ; default option
.HoenWarActionMenuData:
	db STATICMENU_CURSOR ; flags
	dn 3, 1 ; rows, columns
	db 5 ; spacing
	dba .HoenWarActionMenuText
	dbw BANK(@), NULL
.HoenWarActionMenuText:
	db "TALK@"
	db "FIGHT@"
	db "PRAY@"

.Beg
    opentext
    writetext HoenWarTalkText
    waitbutton
    closetext
    sjump .choice

.Fight
    opentext
    writetext HoenWarAttackText
    waitbutton
    closetext
    sjump .choice

.Pray
    opentext
    writetext HoenWarCh4HeroText
    waitbutton
    closetext
	setval ROLE_PLAYER_SHINY
	writemem wOtherTrainerClass
	setval HOEN_WAR_ARCEUS
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_LUGIA_SONG
	writemem wBattleMusicOverride
	winlosstext HoenWarVictoryText, HoenWarDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_WEAK_BATTLE
	loadtrainer ROLE_PLAYER_NORMAL, HOEN_WAR_WALLACE
	startbattle
	reloadmap

	sjump .end

.Villain
    opentext
    writetext HoenWarCh1VillainText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval HOEN_WAR_DRAKE
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_HOEN_GRUNT
	writemem wBattleMusicOverride
	winlosstext HoenWarVictoryText, HoenWarDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, HOEN_WAR_KOGA
	startbattle
	reloadmap

    opentext
    writetext HoenWarCh3VillainText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval HOEN_WAR_WALLACE
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_HOEN_CHAMPION
	writemem wBattleMusicOverride
	winlosstext HoenWarVictoryText, HoenWarDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, HOEN_WAR_JANINE
	startbattle
	reloadmap

	opentext
    writetext HoenWarJanineDefeatText
	loadmenu .HoenWarMercyMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Kill
	ifequal 2, .Spare
	closetext
	end
.HoenWarMercyMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, 5
	dw .HoenWarMercyMenuData
	db 1 ; default option
.HoenWarMercyMenuData:
	db STATICMENU_CURSOR ; flags
	dn 2, 1 ; rows, columns
	db 5 ; spacing
	dba .HoenWarMercyMenuText
	dbw BANK(@), NULL
.HoenWarMercyMenuText:
	db "KILL@"
	db "SPARE@"

.Kill
    opentext
    writetext HoenWarKillText
    waitbutton
    closetext
    sjump .villainEnd

.Spare
    opentext
    writetext HoenWarSpareText
    waitbutton
    closetext

.villainEnd
    opentext
    writetext HoenWarCh4VillainText
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval HOEN_WAR_WALLACE
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_LUGIA_SONG
	writemem wBattleMusicOverride
	winlosstext HoenWarVictoryText, HoenWarDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_SHINY, HOEN_WAR_ARCEUS
	startbattle
	reloadmap

.end
	opentext
	writetext HoenWarRolePlayEndText
	waitbutton
	closetext

    checkevent EVENT_BEAT_ROLEPLAY_6
    iftrue .skipPrize
    opentext
    writetext RolePlay6PrizeText
    waitbutton
    verbosegiveitem AMBROSIA
    writetext GoldDicePrizeText
    waitbutton
    verbosegiveitem GOLD_DICE
    closetext
    setevent EVENT_BEAT_ROLEPLAY_6
.skipPrize

	opentext
	writetext HoenWarRolePlayFinalText
	waitbutton
	closetext
	special LoadPokemonData
	special HealParty
	end

.refused
    opentext
    writetext HoenWarRolePlayRefusedText
    waitbutton
    closetext
    end

RolePlay6PrizeText:
    text "Thank you so"
    line "much for playing"
    cont "all these games"
    cont "with me."

    para "You are my best"
    line "gaming buddy."

    para "Here take this."
    done

HoenWarIntroText:
    text "You are the"
    line "CHAMPION that"
    cont "defeated WALLACE"
    cont "and saved us all."

    para "It is a story"
    line "that needs to"
    cont "be told."

    para "With a little"
    line "artistic license"
    cont "of course."

    para "Would you like to"
    line "play?"

    para "You'll need to"
    line "Save your game?"
    done

HoenWarHeroOrVillainChoiceText:
    text "Would you like to"
    line "play as the Heroes"
    cont "or the Villains?"
    done

HoenWarCh1HeroText:
    text "You have made it"
    line "across unnoticed."

    para "Swiftly you move"
    line "through the shadow"
    cont "and enter the"
    cont "night air of"
    cont "HOEN."

    para "You alone know"
    line "that STEVEN is"
    cont "about to be"
    cont "overthrown."

    para "And war will"
    line "soon follow."

    para "And you know"
    line "the man behind it."

    para "WALLACE."

    para "Your mission is"
    line "to assassinate"
    cont "WALLACE."

    para "You have a life"
    line "of experience in"
    cont "such work."

    para "You are KOGA."

    para "One of the most"
    line "powerful GYM"
    cont "LEADERS of"
    cont "KANTO."

    para "Like a frozen"
    line "breeze on a still"
    cont "night you move"
    cont "silently."

    para "Across the"
    line "harbour."

    para "Over the wall."

    para "Into the tunnel."

    para "Into the shaft."

    para "Now you are into"
    line "the lower floor"
    cont "of the palace."

    para "You cross the"
    line "room in a flash."

    para "Your senses"
    line "flare."

    para "You look back"
    line "to see a man"
    cont "standing with"
    cont "confidence in"
    cont "center of the"
    cont "dark room."

    para "Nobody has ever"
    line "taken you unaware"
    cont "before."

    para "You can tell he"
    line "is a soldier of"
    cont "vast experience."

    para "There is only one"
    line "course of action."

    para "You must kill him."

    para "You can see he"
    line "has faced death"
    cont "before."

    para "He has not a"
    line "hint of fear."
    done

HoenWarCh3HeroText:
   text "This is no mere"
    line "soldier."

    para "He is ADMIRAL"
    line "DRAKE."

    para "The most feared"
    line "soldier in all"
    cont "of HOEN."

    para "His LATIOS readies"
    line "a final attack."

    para "Your life is at"
    line "its end."

    para "But your CROBAT"
    line "has escaped and"
    cont "through your bond"
    cont "you know STEVEN"
    cont "has been warned."

    para "You cast one last"
    line "thought to your"
    cont "daughter JANINE."

    para "A light and a"
    line "moment of pain."

    para "...."

    para "Years pass."

    para "You get the news"
    line "you always knew"
    cont "would come."

    para "HOEN are invading."

    para "BLAINE has been"
    line "defeated."

    para "A rush of"
    line "adrenaline shoots"
    cont "through your body."

    para "You will finally"
    line "get the chance to"
    cont "kill the man who"
    cont "took your father"
    cont "from you."

    para "You are the GYM"
    line "LEADER of FUCHSIA."

    para "JANINE."

    para "You mobilise your"
    line "strongest trainers"
    cont "to defend your"
    cont "home."

    para "You see something."

    para "Out to sea."

    para "A huge wave!"

    para "Like the sea"
    line "itself is moving"
    cont "toward you."

    para "Above it the"
    line "clouds part."

    para "Your battle ships"
    line "are swallowed in"
    cont "an instant."

    para "How many have"
    line "died already!"

    para "The wave crashes"
    line "upon the shore."

    para "As it does so"
    line "you stumble."

    para "The ground is"
    line "tore apart."

    para "ripping right"
    line "through your"
    cont "defenses and"
    cont "forming a lava"
    cont "filled crater"
    cont "that encircles"
    cont "the whole city."

    para "There is no more"
    line "escape."

    para "The sky darkens"
    line "unnaturally."

    para "A huge figure"
    line "appears in the"
    cont "sky."

    para "A #MON."

    para "It draws near"
    line "and sweeps houses"
    cont "aside as it lands."

    para "A man stands atop"
    line "its terrifying"
    cont "head."

    para "Is that WALLACE!"

    para "Two more giant"
    line "#MON take their"
    cont "place at his"
    cont "side."

    para "You immediately"
    line "understand why a"
    cont "country of people"
    cont "believe and obey"
    cont "this man."

    para "Looking down on"
    line "you from his"
    cont "living throne he"
    cont "seems more a God"
    cont "than a man."

    para "You have to will"
    line "your legs to move."

    para "You declare that"
    line "this city is under"
    cont "your protection."

    para "You know you can"
    line "not win."

    para "You know why your"
    line "father could not"
    cont "win."

    para "No matter."

    para "You will defend"
    line "your people with"
    cont "your last breath."
    done

HoenWarActionText:
    text "What will you do?"
    done

HoenWarTakeActionText:
    text "JANINE is swatted"
    line "down with ease."

    para "An old woman"
    line "stands in the"
    cont "crowd."

    para "You look on"
    line "helpless."

    para "You are about to"
    line "lose your grand-"
    cont "daughter."

    para "Just as you lost"
    line "your son."

    para "There is a"
    line "horrible silence."

    para "Everyone looks on"
    line "as WALLACE stands"
    cont "over the beaten"
    cont "JANINE."

    para "Nobody dares to"
    line "do anything after"
    cont "witnessing the"
    cont "horror of FUHRER"
    cont "WALLACE."

    para "But you can not"
    line "let this happen!"

    para "You can't let her"
    line "die."
    done

HoenWarTalkText:
    text "You step forward."

    para "The monstrous"
    line "#MON of WALLACE"
    cont "look at you but"
    cont "do not try to"
    cont "stop you."

    para "You kneel low"
    line "and proclaim"
    cont "WALLACE as your"
    cont "leader."

    para "And ask him please"
    line "spare the life of"
    cont "your grand-"
    cont "daughter."

    para "WALLACE says he"
    line "will show everyone"
    cont "how merciful he"
    cont "can be."

    para "You are knocked"
    line "back."

    para "A flash of light"
    line "and heat overcomes"
    cont "you."

    para "You look to see"
    line "no more than"
    cont "scorched earth"
    cont "where there was"
    cont "once JANINE."

    para "The huge red"
    line "#MON now turns"
    cont "toward you."

    para "A flash of light!"

    para "...."

    para "That's what you"
    line "know would happen"
    cont "if you done that."

    para "So instead."
    done


HoenWarAttackText:
    text "You rush at"
    line "WALLACE."

    para "You reveal a"
    line "small knife you"
    cont "have concealed."

    para "WALLACE sees you"
    line "and is unafraid."

    para "You crash to the"
    line "ground."

    para "In intense pain!"

    para "The huge dragon"
    line "#MON has swept"
    cont "your legs and"
    cont "tore them off."

    para "JANINE rushes"
    line "to you."

    para "She begs WALLACE"
    line "to spare you."

    para "WALLACE looks"
    line "away in contempt."

    para "JANINE holds you"
    line "as you see the"
    cont "dragons mouth"
    cont "open wide."

    para "Then you are"
    line "engulfed in"
    cont "darkness."

    para "...."

    para "That's what you"
    line "know would happen"
    cont "if you done that."

    para "So instead."
    done

HoenWarCh4HeroText:
    text "You have always"
    line "prayed when in"
    cont "times of pain."

    para "It has never"
    line "made a difference."

    para "But right now it"
    line "is the only thing"
    cont "you can do."

    para "You kneel and"
    line "clasp your hands."

    para "With an open"
    line "heart you plea"
    cont "for anyone who is"
    cont "listening to make"
    cont "this stop."

    para "All the noise"
    line "abruptly ends."

    para "You feel warmth"
    line "on your face."

    para "You open your"
    line "eyes."

    para "In front of you"
    line "a bright light!"

    para "It takes shape."

    para "A perfect symmetry"
    line "of light."

    para "You can tell"
    line "WALLACE and his"
    cont "#MON have"
    cont "noticed it."

    para "Your vision swims."

    para "Has your prayer"
    line "been answered."
    done

HoenWarCh1VillainText:
    text "You look out over"
    line "the night sea."

    para "You allow your"
    line "mind to wonder."

    para "All the battles"
    line "play in your"
    cont "head."

    para "Faces of your"
    line "victims bubble"
    cont "up but your"
    cont "disciplined mind"
    cont "buries them again"
    cont "deep."

    para "You are ADMIRAL of"
    line "the HOEN army."

    para "You are DRAKE the"
    line "strongest soldier."

    para "Tonight you do"
    line "the unthinkable."

    para "You plan to ambush"
    line "and kill STEVEN"
    cont "the CHAMPION."

    para "He is weak and is"
    line "weakening your"
    cont "country."

    para "Your #MON alert"
    line "you to a presence"
    cont "that shouldn't be"
    cont "here."

    para "You head down to"
    line "the palace lower"
    cont "levels."

    para "You see him now."

    para "An assassin."

    para "He must not"
    line "interfere."

    para "Your #MON"
    line "lower you into"
    cont "the room."

    para "He sees you."

    para "You can tell he"
    line "is a man of vast"
    cont "experience who"
    cont "has faced death"
    cont "many times."

    para "But to you he"
    line "just another face."
    done

HoenWarCh3VillainText:
    text "It is clear this"
    line "is no normal"
    cont "assassin."

    para "No matter."

    para "With one last"
    line "blast LATIOS"
    cont "removes the"
    cont "intruder."

    para "You make your"
    line "way to STEVENS"
    cont "chamber."

    para "You have planned"
    line "this so he wont"
    cont "have his #MON."

    para "He is gone."

    para "The room is"
    line "littered with"
    cont "beaten soldiers."

    para "The intruder must"
    line "have warned him"
    cont "somehow."

    para "...."

    para "Years pass."

    para "You were free"
    line "to move into"
    cont "power in the"
    cont "absence of STEVEN."

    para "You are WALLACE."

    para "And today is the"
    line "day you attack"
    cont "KANTO."

    para "You look out"
    line "upon the sea."

    para "You could cover"
    line "the whole thing"
    cont "with your noble"
    cont "ambitions."

    para "You fly atop"
    line "AIR WEAPON."

    para "One of your three"
    line "legendary weapons."

    para "Within hours you"
    line "approach the"
    cont "shore."

    para "A GYM LEADER"
    line "of FIRE tries to"
    cont "impede you."

    para "SEA WEAPON makes"
    line "swift work of him."

    para "A tsunami crashes"
    line "on the shore."

    para "GEO WEAPON splits"
    line "the earth and"
    cont "destroys any"
    cont "ground defenses."

    para "You land and stand"
    line "with your three"
    cont "great weapons."

    para "You have stamped"
    line "your authority"
    cont "upon the land."

    para "The whole city is"
    line "watching."

    para "A girl walks up"
    line "to you."

    para "She shows no"
    line "fear."

    para "The people seem"
    line "to cheer for her."

    para "You see she is"
    line "in fact the GYM"
    cont "LEADER of the"
    cont "city."

    para "Perfect."

    para "Let KANTO see the"
    line "beauty of HOEN."

    para "Let this girl be"
    line "an example."
    done

HoenWarJanineDefeatText:
    text "All too easy."

    para "The girl is"
    line "broken."

    para "She slumps to the"
    line "ground as you"
    cont "approach."

    para "Voices lower and"
    line "a silence falls."

    para "You see an old"
    line "woman who seems"
    cont "to be praying."

    para "The only God"
    line "here is you!"

    para "You look upon"
    line "the beaten GYM"
    cont "LEADER."

    para "You are surprised"
    line "at how young she"
    cont "is."

    para "Clearly still a"
    line "teenager."

    para "What will you do?"
    done

HoenWarKillText:
    text "You decide you"
    line "must demonstrate"
    cont "the price of"
    cont "resistance."

    para "She must pay"
    line "with her life."

    para "But you will do"
    line "her the mercy of"
    cont "making it fast."

    para "A blast of fire"
    line "from GEO WEAPON"
    cont "will do it."
    done

HoenWarSpareText:
    text "You decide that"
    line "killing a child"
    cont "may not be the"
    cont "best way to make"
    cont "an introduction."

    para "You will spare"
    line "her for now."
    done

HoenWarCh4VillainText:
    text "All the voices"
    line "suddenly go"
    cont "silent."

    para "The crowd appears"
    line "frozen."

    para "You look up at"
    line "the monstrous face"
    cont "of GEO WEAPON."

    para "It is contorted"
    line "in a way which..."

    para "If you didn't"
    line "know better..."

    para "You would say"
    line "looks like fear."

    para "You turn to see"
    line "a light."

    para "No it's a being"
    line "of some sort."

    para "An otherworldly"
    line "perfection."

    para "You have never"
    line "seen it before"
    cont "but it feels"
    cont "so familiar."

    para "Its appearance"
    line "strikes at a"
    cont "primal fear"
    cont "within you."

    para "You feel like a"
    line "child."

    para "It draws near!"
    done

HoenWarRolePlayEndText:
    text "WALLACE collapses"
    line "to the ground."

    para "He looks up at"
    line "ARCEUS towering"
    cont "above him."

    para "WALLACE pleas"
    line "for mercy."

    para "ARCEUS disappears."

    para "Everything returns"
    line "to as it was."

    para "Like it never"
    line "happened."

    para "But WALLACE knows"
    line "it did."

    para "ARCEUS was letting"
    line "people know their"
    cont "prayers had been"
    cont "heard."

    para "...."

    para "Nearby a stranger"
    line "enters the city."

    para "A CHAMPION."

    para "CHAMPION <PLAYER>!"

    para "The rest is"
    line "history."
    done

GoldDicePrizeText:
    text "I also want you"
    line "to have this."

    para "I only give it"
    line "to my closest"
    cont "friends."
    done

HoenWarRolePlayFinalText:
    text "You can use the"
    line "GOLD DICE to"
    cont "meet up with and"
    cont "play games with"
    cont "me anytime."

    para "I look forward"
    line "to playing games"
    cont "again with you."
    done

HoenWarVictoryText:
    text "Victory!"
    done

HoenWarDefeatText:
    text "Defeat!"
    done

HoenWarRolePlayRefusedText:
    text "It'll be fun."

    para "I promise."
    done

SilverCaveOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 19, SILVER_CAVE_POKECENTER_1F, 1
	warp_event 18,  9, SILVER_CAVE_ROOM_1, 1
	warp_event 31, 6, DESTINY_FRONTIER, 1
	warp_event 32, 6, DESTINY_FRONTIER, 2
	warp_event 8, 19, ANCIENT_TEMPLE, 1

	def_coord_events
	coord_event 31,  6, SCENE_ALWAYS, SilverCaveOutsideBlockScript
	coord_event 32,  6, SCENE_ALWAYS, SilverCaveOutsideBlockScript
	coord_event 18, 10, SCENE_ALWAYS, SilverCaveRivalsScript

	def_bg_events
	bg_event 24, 19, BGEVENT_READ, MtSilverPokecenterSign
	bg_event 16, 10, BGEVENT_READ, MtSilverSign
	bg_event  4, 23, BGEVENT_ITEM, SilverCaveOutsideHiddenFullRestore

	def_object_events
	object_event 17, 16, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMP_EVENT_1
	object_event 19, 16, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMP_EVENT_2
	;object_event 16, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, ObjectEvent, EVENT_TEMP_EVENT_3
	object_event 27, 26, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon1Script, EVENT_FIELD_MON_1
	object_event 17, 19, SPRITE_DRAGON, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon2Script, EVENT_FIELD_MON_2
	object_event 18, 25, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon3Script, EVENT_FIELD_MON_3
	object_event 10, 19, SPRITE_BIRD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon4Script, EVENT_FIELD_MON_4
	object_event 30, 32, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon5Script, EVENT_FIELD_MON_5
	object_event 32, 23, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon6Script, EVENT_FIELD_MON_6
	object_event 32, 29, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon7Script, EVENT_FIELD_MON_7
	object_event  8, 24, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon8Script, EVENT_FIELD_MON_8
	object_event 13, 25, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon9Script, EVENT_FIELD_MON_9
	object_event  5, 20, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon10Script, EVENT_FIELD_MON_10
	object_event 26, 19, SPRITE_WILL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, HoenWarRolePlayScript, -1

