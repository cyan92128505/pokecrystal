    object_const_def
    const DESTINYELITEFOUR_SABRINA
    const DESTINYELITEFOUR_BRUNO
    const DESTINYELITEFOUR_KAREN
    const DESTINYELITEFOUR_GIOVANNI

DestinyEliteFour_MapScripts:
	def_scene_scripts

	def_callbacks

MasterSabrinaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_SABRINA
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDEF
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDEF, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer SABRINA, MASTER_SABRINA
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_SABRINA
	;opentext
	;writetext DefaultAfterBattleTextDEF
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDEF
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyEliteFour
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyEliteFour
	waitbutton
	closetext
	end

MasterBrunoScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_BRUNO
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDEF
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDEF, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer BRUNO, MASTER_BRUNO
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_BRUNO
	;opentext
	;writetext DefaultAfterBattleTextDEF
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDEF
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyEliteFour
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyEliteFour
	waitbutton
	closetext
	end

MasterKarenScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_KAREN
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDEF
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDEF, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer KAREN, MASTER_KAREN
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_KAREN
	;opentext
	;writetext DefaultAfterBattleTextDEF
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDEF
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyEliteFour
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyEliteFour
	waitbutton
	closetext
	end

MasterGiovanniScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_GIOVANNI
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDEF
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDEF, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer GRUNTM, MASTER_GIOVANNI
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_GIOVANNI
	;opentext
	;writetext DefaultAfterBattleTextDEF
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDEF
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyEliteFour
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyEliteFour
	waitbutton
	closetext
	end

DefaultSeenTextDEF:
    text "Let's fight!"
    done

DefaultBeatenTextDEF:
    text "Well done!"
    done

DefaultAfterBattleTextDEF:
    text "You done well!"
    done

RematchTextDestinyEliteFour:
    text "Shall we have"
    line "another match?"
    done

RematchRefuseTextDestinyEliteFour:
    text "I will always"
    line "be here."
    done

Movement_DestinyEliteFourTurnBack:
	step DOWN
	step_end

DestinyEliteFour_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, DESTINY_FRONTIER, 15
	warp_event  5, 17, DESTINY_FRONTIER, 16

	warp_event  4, 2, DESTINY_ELITE_FOUR, 5
	warp_event  5, 2, DESTINY_ELITE_FOUR, 6
	warp_event  18, 17, DESTINY_ELITE_FOUR, 3
	warp_event  19, 17, DESTINY_ELITE_FOUR, 4

	warp_event  18, 2, DESTINY_ELITE_FOUR, 9
	warp_event  19, 2, DESTINY_ELITE_FOUR, 10
	warp_event  4, 39, DESTINY_ELITE_FOUR, 7
	warp_event  5, 39, DESTINY_ELITE_FOUR, 8

	warp_event  4, 24, DESTINY_ELITE_FOUR, 13
	warp_event  5, 24, DESTINY_ELITE_FOUR, 14
	warp_event  18, 39, DESTINY_ELITE_FOUR, 11
	warp_event  19, 39, DESTINY_ELITE_FOUR, 12

	warp_event  18, 24, DESTINY_SQUARE, 1
	warp_event  19, 24, DESTINY_SQUARE, 2

	def_coord_events
	;coord_event  6,  6, SCENE_ALWAYS, FightAdamScript

	def_bg_events

	def_object_events
	object_event 19,  7, SPRITE_SABRINA, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterSabrinaScript, -1
	object_event  5, 29, SPRITE_BRUNO, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterBrunoScript, -1
	object_event  5,  7, SPRITE_KAREN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterKarenScript, -1
	object_event 19, 29, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterRivalScript, -1
