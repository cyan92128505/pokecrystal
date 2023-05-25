    object_const_def
    const SILVERCAVEOUTSIDE_SILVER
    const SILVERCAVEOUTSIDE_EUSINE
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

.FlyPoint:
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
	setflag ENGINE_FLYPOINT_SILVER_CAVE
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

SilverCaveRival:
	opentext
	checkevent EVENT_BEAT_SILVER_CAVE_RIVAL
	iftrue .FightDone
.fight
	writetext SilverCaveRivalSeenText
	waitbutton
	closetext
	winlosstext SilverCaveRivalBeatenText, SilverCaveRivalBeatenText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer RIVAL2, RIVAL2_SILVER_CAVE
	;loadtrainer BOARDER, SOLDIER_1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SILVER_CAVE_RIVAL
	special HealParty
	end
.FightDone:
	writetext SilverCaveRivalAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextSilverCave
	yesorno
	iftrue .fight
	writetext RematchRefuseTextSilverCave
	waitbutton
	closetext
	end

RematchTextSilverCave:
    text "Shall we fight?"
    done

RematchRefuseTextSilverCave:
    text "Anytime."
    done

SilverCaveRivalSeenText:
    text "Hello <PLAYER>"

    para "We have been"
    line "through a lot"
    cont "together."

    para "Haven't we..."

    para "My #MON"
    line "and I are now"
    cont "united with a"
    cont "single purpose."

    para "To become all"
    line "that we can be."

    para "We want to thank"
    line "you."

    para "In the only way"
    line "we can."
    done

SilverCaveRivalBeatenText:
    text "We have a lot"
    line "further to"
    cont "go."
    done

SilverCaveRivalAfterBattleText:
    text "I always wanted"
    line "to prove myself"
    cont "to my father."

    para "I don't care"
    line "about that"
    cont "anymore."

    para "I am surrounded"
    line "by friends who"
    cont "I respect far"
    cont "more."

    para "I consider you"
    line "one of them."
    done

SilverCaveEusine:
	trainer MYSTICALMAN, EUSINE_SILVER_CAVE, EVENT_BEAT_SILVER_CAVE_EUSINE, SilverCaveEusineSeenText, SilverCaveEusineBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverCaveEusineAfterBattleText
	waitbutton
	closetext
	end

SilverCaveEusineSeenText:
    text "I have been"
    line "chosen!"

    para "Thanks to you."

    para "SUICUNE has seen"
    line "my true value."

    para "Our bond grows"
    line "stronger through"
    cont "battle."

    para "Help me fortify"
    line "our bond further!"
    done

SilverCaveEusineBeatenText:
    text "We learn more"
    line "from defeat."
    done

SilverCaveEusineAfterBattleText:
    text "There is a"
    line "trainer in the"
    cont "cave."

    para "He defeated me"
    line "with just one"
    cont "#MON!"

    para "A PIKACHU of"
    line "all things."

    para "Be careful my"
    line "friend."
    done

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

    para "This is a gateway"
    line "to a tournament"
    cont "for the greatest"
    cont "trainers across"
    cont "time and reality."

    para "Only the"
    line "strongest"
    cont "trainers in the"
    cont "world may pass."
    done

Movement_SilverCaveOutsideTurnBack:
	step DOWN
	step_end

SilverCaveOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 19, SILVER_CAVE_POKECENTER_1F, 1
	warp_event 18, 11, SILVER_CAVE_ROOM_1, 1
	warp_event 31, 6, DESTINY_FRONTIER, 1
	warp_event 32, 6, DESTINY_FRONTIER, 2

	def_coord_events
	coord_event 31, 7, SCENE_ALWAYS, SilverCaveOutsideBlockScript
	coord_event 32, 7, SCENE_ALWAYS, SilverCaveOutsideBlockScript

	def_bg_events
	bg_event 24, 19, BGEVENT_READ, MtSilverPokecenterSign
	bg_event 17, 13, BGEVENT_READ, MtSilverSign
	bg_event  9, 25, BGEVENT_ITEM, SilverCaveOutsideHiddenFullRestore

	def_object_events
	object_event 26, 19, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SilverCaveRival, -1
	object_event 16, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, SilverCaveEusine, -1
	object_event 27, 26, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon1Script, EVENT_FIELD_MON_1
	object_event 17, 19, SPRITE_DRAGON, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon2Script, EVENT_FIELD_MON_2
	object_event 18, 25, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon3Script, EVENT_FIELD_MON_3
	object_event 17, 18, SPRITE_BIRD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon4Script, EVENT_FIELD_MON_4
	object_event 30, 32, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon5Script, EVENT_FIELD_MON_5
	object_event 31, 22, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon6Script, EVENT_FIELD_MON_6
	object_event 32, 29, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon7Script, EVENT_FIELD_MON_7
	object_event 10, 28, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon8Script, EVENT_FIELD_MON_8
	object_event 13, 25, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon9Script, EVENT_FIELD_MON_9
	object_event  8, 24, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, SilverCaveOutsideFieldMon10Script, EVENT_FIELD_MON_10

