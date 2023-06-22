DestinyFrontier_MapScripts:
	def_scene_scripts

	def_callbacks
    callback MAPCALLBACK_OBJECTS, .NoWeather

.NoWeather
	setval WEATHER_NONE
	writemem wFieldWeather
	endcallback

HoohLugiaBlockScript:
    checkevent EVENT_FOUGHT_HO_OH
    iffalse .block
    checkevent EVENT_FOUGHT_LUGIA
    iffalse .block
    checkevent EVENT_BEAT_MASTER_FALKNER
    iffalse .fight
    end
.block
    turnobject PLAYER, LEFT
	opentext
	writetext HoohLugiaBlockText
    waitbutton
    closetext
    applymovement PLAYER, Movement_DestinyFrontierTurnBack
    end
.fight
    turnobject PLAYER, LEFT
    sjump MasterFalknerScript

HoohLugiaBlockText:
    text "Only those who"
    line "who have mastered"
    cont "the powers of"
    cont "fire and wind."

    para "HO OH and"
    line "LUGIA"

    para "May pass."
    done

GroudonKyogreBlockScript:
    checkevent EVENT_CAUGHT_GROUDON
    iffalse .block
    checkevent EVENT_CAUGHT_KYOGRE
    iffalse .block
    checkevent EVENT_BEAT_MASTER_WHITNEY
    iffalse .fight
    end
.block
    turnobject PLAYER, LEFT
	opentext
	writetext GroudonKyogreBlockText
    waitbutton
    closetext
    applymovement PLAYER, Movement_DestinyFrontierTurnBack
    end
.fight
    turnobject PLAYER, LEFT
    sjump MasterWhitneyScript

GroudonKyogreBlockText:
    text "Only those who"
    line "who have mastered"
    cont "the powers of"
    cont "earth and water."

    para "GROUDON and"
    line "KYOGRE"

    para "May pass."
    done

PalkiaDialgaBlockScript:
    checkevent EVENT_CAUGHT_PALKIA
    iffalse .block
    checkevent EVENT_CAUGHT_DIALGA
    iffalse .block
    checkevent EVENT_BEAT_MASTER_WILL
    iffalse .fight
    end
.block
    turnobject PLAYER, LEFT
	opentext
	writetext PalkiaDialgaBlockText
    waitbutton
    closetext
    applymovement PLAYER, Movement_DestinyFrontierTurnBack
    end
.fight
    turnobject PLAYER, LEFT
    sjump MasterWillScript

PalkiaDialgaBlockText:
    text "Only those who"
    line "who have mastered"
    cont "the powers of"
    cont "space and time."

    para "PALKIA and"
    line "DIALGA"

    para "May pass."
    done

RayquazaGiratinaBlockScript:
    checkevent EVENT_CAUGHT_RAYQUAZA
    iffalse .block
    checkevent EVENT_CAUGHT_GIRATINA
    iffalse .block
    checkevent EVENT_BEAT_MASTER_CLAIR
    iffalse .fight
    end
.block
    turnobject PLAYER, LEFT
	opentext
	writetext RayquazaGiratinaBlockText
    waitbutton
    closetext
    applymovement PLAYER, Movement_DestinyFrontierTurnBack
    end
.fight
    turnobject PLAYER, LEFT
    sjump MasterClairScript

RayquazaGiratinaBlockText:
    text "Only those who"
    line "who have mastered"
    cont "the powers of"
    cont "good and evil."

    para "RAYQUAZA and"
    line "GIRATINA"

    para "May pass."
    done

XerneasYveltalBlockScript:
    checkevent EVENT_CAUGHT_YVELTAL
    iffalse .block
    checkevent EVENT_CAUGHT_XERNEAS
    iffalse .block
    checkevent EVENT_BEAT_MASTER_RIVAL
    iffalse .fight
    end
.block
    turnobject PLAYER, LEFT
	opentext
	writetext XerneasYveltalBlockText
    waitbutton
    closetext
    applymovement PLAYER, Movement_DestinyFrontierTurnBack
    end
.fight
    turnobject PLAYER, LEFT
    sjump MasterRivalScript

XerneasYveltalBlockText:
    text "Only those who"
    line "who have mastered"
    cont "the powers of"
    cont "life and death."

    para "XERNEAS and"
    line "YVELTAL"

    para "May pass."
    done

Movement_DestinyFrontierTurnBack:
	step DOWN
	step_end

Movement_DestinyFrontierTurnLeft:
	step LEFT
	step_end

MasterChrisChanScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_CHRIS_CHAN
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDF
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDF, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer POKEFANM, MASTER_CHRIS_CHAN
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_CHRIS_CHAN
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDF
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyFrontier
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyFrontier
	waitbutton
	closetext
	end

MasterYamiScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_YAMI
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDF
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDF, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer RED, MASTER_YAMI
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_YAMI
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDF
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyFrontier
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyFrontier
	waitbutton
	closetext
	end

MasterSetoScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_SETO
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDF
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDF, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer BLUE, MASTER_SETO
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_SETO
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDF
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyFrontier
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyFrontier
	waitbutton
	closetext
	end

MasterDrakeScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_DRAKE
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDF
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDF, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer SOLDIER, MASTER_DRAKE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_DRAKE
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDF
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyFrontier
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyFrontier
	waitbutton
	closetext
	end

MasterExecutiveFScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_EXECUTIVEF
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDF
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDF, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer EXECUTIVEF, MASTER_EXECUTIVEF
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_EXECUTIVEF
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDF
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyFrontier
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyFrontier
	waitbutton
	closetext
	end

MasterTobiasScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_TOBIAS
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDF
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDF, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer COOLTRAINERM, MASTER_TOBIAS
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_TOBIAS
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDF
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyFrontier
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyFrontier
	waitbutton
	closetext
	end

MasterYunaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_YUNA
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDF
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDF, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer KIMONO_GIRL, MASTER_YUNA
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_YUNA
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDF
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyFrontier
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyFrontier
	waitbutton
	closetext
	end

MasterAizenScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_AIZEN
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDF
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDF, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer POKEMANIAC, MASTER_AIZEN
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_AIZEN
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDF
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyFrontier
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyFrontier
	waitbutton
	closetext
	end

MasterXehanortScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_XEHANORT
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDF
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDF, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer SAGE, MASTER_XEHANORT
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_XEHANORT
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDF
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyFrontier
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyFrontier
	waitbutton
	closetext
	end

MasterAerithScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_AERITH
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDF
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDF, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer KIMONO_GIRL, MASTER_AERITH
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_AERITH
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDF
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyFrontier
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyFrontier
	waitbutton
	closetext
	end

MasterJoeyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_JOEY
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDF
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDF, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer YOUNGSTER, MASTER_JOEY
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_JOEY
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDF
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyFrontier
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyFrontier
	waitbutton
	closetext
	end

NurseScript:
    faceplayer
	opentext
	writetext ShouldIHealText
	yesorno
	iffalse .done
	special HealParty
	special FadeOutPalettes
	reloadmap
	writetext HealDoneText
.done
    writetext GoodbyeText
    waitbutton
    closetext
    end

ShouldIHealText:
    text "Would you like me"
    line "to heal your"
    cont "#MON?"
    prompt

HealDoneText:
    text "Your #MON"
    line "are fully healed."
    prompt

GoodbyeText:
    text "Remember your"
    line "#MON heal after"
    cont "every battle here."

    para "Stay safe."
    done

MartScript:
    faceplayer
    opentext
    pokemart MARTTYPE_STANDARD, MART_FRONTIER
    closetext
    end

DefaultSeenTextDF:
    text "Let's fight!"
    done

DefaultBeatenTextDF:
    text "Well done!"
    done

DefaultAfterBattleTextDF:
    text "You done well!"
    done

RematchTextDestinyFrontier:
    text "Shall we have"
    line "another match?"
    done

RematchRefuseTextDestinyFrontier:
    text "I will always"
    line "be here."
    done

GuardScript:
    faceplayer
    opentext
    writetext StrongestText
    waitbutton
    closetext
    end

StrongestText:
    text "Only the strongest"
    line "challenger can"
    cont "conquer the"
    cont "tournament."
    done

Guard1BlockScript:
    checkevent EVENT_BEAT_MASTER_BROCK
    iffalse .block
    checkevent EVENT_BEAT_MASTER_MISTY
    iffalse .block
    checkevent EVENT_BEAT_MASTER_WHITNEY
    iffalse .block
    checkevent EVENT_BEAT_MASTER_ERIKA
    iffalse .block
    checkevent EVENT_BEAT_MASTER_BUGSY
    iffalse .block
    checkevent EVENT_BEAT_MASTER_FALKNER
    iffalse .block
    checkevent EVENT_BEAT_MASTER_MORTY
    iffalse .block
    checkevent EVENT_BEAT_MASTER_JANINE
    iffalse .block
    end
.block
    turnobject PLAYER, RIGHT
	opentext
	writetext Guard1BlockText
    waitbutton
    closetext
    applymovement PLAYER, Movement_DestinyFrontierTurnBack
    end

Guard1BlockText:
    text "Only challengers"
    line "who have conquered"
    cont "4 GYMS may pass."
    done

Guard2BlockScript:
    checkevent EVENT_BEAT_MASTER_CHUCK
    iffalse .block
    checkevent EVENT_BEAT_MASTER_SURGE
    iffalse .block
    checkevent EVENT_BEAT_MASTER_JASMINE
    iffalse .block
    checkevent EVENT_BEAT_MASTER_WILL
    iffalse .block
    checkevent EVENT_BEAT_MASTER_PRYCE
    iffalse .block
    checkevent EVENT_BEAT_MASTER_BLAINE
    iffalse .block
    checkevent EVENT_BEAT_MASTER_CLAIR
    iffalse .block
    checkevent EVENT_BEAT_MASTER_EUSINE
    iffalse .block
    end
.block
    turnobject PLAYER, UP
	opentext
	writetext Guard2BlockText
    waitbutton
    closetext
    applymovement PLAYER, Movement_DestinyFrontierTurnLeft
    end

Guard2BlockText:
    text "Only challengers"
    line "who have conquered"
    cont "8 GYMS may pass."
    done

GuideScript:
    setevent EVENT_FRONTIER_INTRO
    faceplayer
    opentext
    checkevent EVENT_CAUGHT_MEWTWO
    iftrue .congrats
    writetext IntroText
    waitbutton
    closetext
    end
.congrats
    writetext CongratsText
    waitbutton
    closetext
    end

GuideEncounterScript:
    checkevent EVENT_FRONTIER_INTRO
    iffalse .intro
    end
.intro
    turnobject PLAYER, RIGHT
    sjump GuideScript
    end

IntroText:
    text "Welcome trainer!"

    para "This is the great"
    line "tournament!"

    para "The strongest"
    line "trainers from all"
    cont "time and reality"
    cont "are here."

    para "All battling for"
    line "the prize of an"
    cont "audience with the"
    cont "organiser."

    para "You will have to"
    line "beat eight GYMS."

    para "The GYMS have two"
    line "leaders but no"
    cont "trainers."

    para "Some GYMS will"
    line "have restrictions"
    cont "on which trainers"
    cont "may challenge."

    para "Then you can face"
    line "the ELITE FOUR"

    para "If you defeat them"
    line "you move onto the"
    cont "HALL OF CHAMPIONS."

    para "Finally moving on"
    line "to the current"
    cont "winner."

    para "Good luck!"
    done

CongratsText:
    text "I knew you would"
    line "do it!"

    para "Um..."
    line "Master <PLAYER>"
    done

DestinyFrontier_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  30, 59, SILVER_CAVE_OUTSIDE, 3
	warp_event  31, 59, SILVER_CAVE_OUTSIDE, 4
	warp_event 42, 53, DESTINY_PARK, 1
	warp_event  36, 31, DESTINY_PARK, 3
	warp_event 18, 53, DESTINY_PARK, 5
	warp_event   6, 37, DESTINY_PARK, 7
	warp_event  20, 31, DESTINY_PARK, 9
	warp_event  52, 37, DESTINY_PARK, 11
	warp_event  36, 13, DESTINY_PARK, 13
	warp_event  8,  5, DESTINY_PARK, 15

	warp_event 26,  0, DESTINY_FRONTIER, 13
	warp_event 27,  0, DESTINY_FRONTIER, 14

	warp_event 52, 23, DESTINY_FRONTIER, 11
	warp_event 53, 23, DESTINY_FRONTIER, 12

	warp_event 52, 11, DESTINY_ELITE_FOUR, 1
	warp_event 53, 11, DESTINY_ELITE_FOUR, 2


	def_coord_events
	coord_event  6, 38, SCENE_ALWAYS, HoohLugiaBlockScript
	coord_event 42, 54, SCENE_ALWAYS, GroudonKyogreBlockScript
	coord_event 20, 32, SCENE_ALWAYS, PalkiaDialgaBlockScript
	coord_event  8,  6, SCENE_ALWAYS, RayquazaGiratinaBlockScript
	coord_event 26,  1, SCENE_ALWAYS, XerneasYveltalBlockScript
	coord_event 27,  1, SCENE_ALWAYS, XerneasYveltalBlockScript
	coord_event 30, 38, SCENE_ALWAYS, Guard1BlockScript
	coord_event 11,  7, SCENE_ALWAYS, Guard2BlockScript
	coord_event 11,  7, SCENE_ALWAYS, Guard2BlockScript
	coord_event 30, 50, SCENE_ALWAYS, GuideEncounterScript

	def_bg_events

	def_object_events
	object_event 53, 50, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MasterChrisChanScript, -1
	object_event 50, 14, SPRITE_RED, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterYamiScript, -1
	object_event  4,  4, SPRITE_BLUE, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MasterSetoScript, -1
	object_event  9, 52, SPRITE_OFFICER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterDrakeScript, -1
	object_event 14, 44, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterExecutiveFScript, -1
	object_event 29, 20, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MasterTobiasScript, -1
	object_event  6, 18, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MasterYunaScript, -1
	object_event 48, 35, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterAizenScript, -1
	object_event 55, 14, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterXehanortScript, -1
	object_event 28, 46, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterAerithScript, -1
	object_event 31, 32, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterJoeyScript, -1
	object_event 29, 42, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NurseScript, -1
	object_event 32, 42, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MartScript, -1
	object_event 31, 38, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GuardScript, -1
	object_event 11,  6, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GuardScript, -1
	object_event 31, 50, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GuideScript, -1
