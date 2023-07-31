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

SilverCaveOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 19, SILVER_CAVE_POKECENTER_1F, 1
	warp_event 18,  9, SILVER_CAVE_ROOM_1, 1
	warp_event 31, 6, DESTINY_FRONTIER, 1
	warp_event 32, 6, DESTINY_FRONTIER, 2
	warp_event 8, 19, ANCIENT_TEMPLE, 1

	def_coord_events
	coord_event 31, 7, SCENE_ALWAYS, SilverCaveOutsideBlockScript
	coord_event 32, 7, SCENE_ALWAYS, SilverCaveOutsideBlockScript
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
	object_event 31, 22, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon6Script, EVENT_FIELD_MON_6
	object_event 32, 29, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon7Script, EVENT_FIELD_MON_7
	object_event  8, 24, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon8Script, EVENT_FIELD_MON_8
	object_event 13, 25, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon9Script, EVENT_FIELD_MON_9
	object_event  5, 20, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon10Script, EVENT_FIELD_MON_10
