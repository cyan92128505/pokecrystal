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
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
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
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
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
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
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

MasterExecutiveMScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_EXECUTIVEM
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDF
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDF, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer EXECUTIVEM, MASTER_EXECUTIVEM
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_EXECUTIVEM
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
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
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
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
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
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
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
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
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
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
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
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
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
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
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

DestinyFrontier_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  30, 59, SILVER_CAVE_OUTSIDE, 3
	warp_event  31, 59, SILVER_CAVE_OUTSIDE, 3
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
	;coord_event 0, 0, SCENE_ALWAYS, HoohLugiaBlockScript
	;coord_event 0, 0, SCENE_ALWAYS, GroudonKyogreBlockScript
	;coord_event 0, 0, SCENE_ALWAYS, PalkiaDialgaBlockScript
	;coord_event 0, 0, SCENE_ALWAYS, RayquazaGiratinaBlockScript
	;coord_event 0, 0, SCENE_ALWAYS, GiovanniBlockScript
	;coord_event 0, 0, SCENE_ALWAYS, XerneasYveltalBlockScript

	def_bg_events

	def_object_events
	object_event 53, 50, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MasterChrisChanScript, -1
	object_event 50, 14, SPRITE_RED, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterYamiScript, -1
	object_event  4,  4, SPRITE_BLUE, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MasterSetoScript, -1
	object_event  9, 52, SPRITE_ROCKET, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterExecutiveMScript, -1
	object_event 14, 44, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterExecutiveFScript, -1
	object_event 29, 20, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MasterTobiasScript, -1
	object_event  6, 18, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MasterYunaScript, -1
	object_event 48, 35, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterAizenScript, -1
	object_event 55, 14, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterXehanortScript, -1
	object_event 28, 46, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterAerithScript, -1
	object_event 31, 32, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterJoeyScript, -1
	object_event 29, 42, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NurseScript, -1
	object_event 32, 42, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MartScript, -1


