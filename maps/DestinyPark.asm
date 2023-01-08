DestinyPark_MapScripts:
	def_scene_scripts

	def_callbacks

MasterBrockScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_BROCK
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer BROCK, MASTER_BROCK
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_BROCK
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end

MasterMistyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_MISTY
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer MISTY, MASTER_MISTY
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_MISTY
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end

MasterSurgeScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_GREEN
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer LT_SURGE, MASTER_SURGE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_SURGE
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end

MasterErikaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_ERIKA
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer ERIKA, MASTER_ERIKA
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_ERIKA
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end

MasterJanineScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_JANINE
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer JANINE, MASTER_JANINE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_JANINE
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end

MasterWillScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_WILL
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer WILL, MASTER_WILL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_WILL
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end

MasterBlaineScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_BLAINE
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer BLAINE, MASTER_BLAINE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_BLAINE
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end

MasterFalknerScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_FALKNER
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer FALKNER, MASTER_FALKNER
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_FALKNER
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end

MasterBugsyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_BUGSY
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer BUGSY, MASTER_BUGSY
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_BUGSY
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end

MasterWhitneyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_WHITNEY
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer WHITNEY, MASTER_WHITNEY
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_WHITNEY
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end

MasterMortyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_MORTY
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer MORTY, MASTER_MORTY
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_MORTY
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end

MasterChuckScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_CHUCK
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer CHUCK, MASTER_CHUCK
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_CHUCK
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end

MasterJasmineScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_JASMINE
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer JASMINE, MASTER_JASMINE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_JASMINE
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end

MasterPryceScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_PRYCE
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer PRYCE, MASTER_PRYCE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_PRYCE
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end

MasterClairScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_CLAIR
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer CLAIR, MASTER_CLAIR
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_CLAIR
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end

DefaultSeenText:
    text "Let's fight!"
    done

DefaultBeatenText:
    text "Well done!"
    done

DefaultAfterBattleText:
    text "You done well!"
    done
    
RematchTextDestinyPark:
    text "Shall we have"
    line "another match?"
    done

RematchRefuseTextDestinyPark:
    text "I will always"
    line "be here."
    done

DestinyPark_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 43, SILVER_CAVE_OUTSIDE, 3
	warp_event  6, 43, SILVER_CAVE_OUTSIDE, 3
	warp_event  6,  9, DESTINY_SQUARE, 1
	warp_event  7,  9, DESTINY_SQUARE, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 4, 41, SPRITE_BROCK, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterBrockScript, -1
	object_event 3, 38, SPRITE_MISTY, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterMistyScript, -1
	object_event 2, 34, SPRITE_SURGE, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterSurgeScript, -1
	object_event 0, 30, SPRITE_ERIKA, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterErikaScript, -1
	object_event 3, 26, SPRITE_JANINE, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterJanineScript, -1
	object_event 6, 21, SPRITE_WILL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterSabrinaScript, -1
	object_event 9, 16, SPRITE_BLAINE, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterBlaineScript, -1
	object_event 6, 37, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterFalknerScript, -1
	object_event 11, 40, SPRITE_BUGSY, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterBugsyScript, -1
	object_event 6, 29, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterWhitneyScript, -1
	object_event 12, 32, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterMortyScript, -1
	object_event 11, 22, SPRITE_CHUCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterChuckScript, -1
	object_event 13, 26, SPRITE_JASMINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterJasmineScript, -1
	object_event 2, 15, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterPryceScript, -1
	object_event 6, 12, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MasterClairScript, -1


