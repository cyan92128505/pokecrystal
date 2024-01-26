    object_const_def
    const DESTINYSQUARE_SILVER
    const DESTINYSQUARE_CRYSTAL
    const DESTINYSQUARE_CYNTHIA
    const DESTINYSQUARE_STEVEN
    const DESTINYSQUARE_DIANTHA
    const DESTINYSQUARE_ALDER
    const DESTINYSQUARE_LEON
    const DESTINYSQUARE_ADAM
    const DESTINYSQUARE_MEWTWO

DestinySquare_MapScripts:
	def_scene_scripts

	def_callbacks
;	callback MAPCALLBACK_OBJECTS, .Oak

;.Oak
;    disappear DESTINYSQUARE_OAK
;    endcallback

MasterRivalScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_RIVAL
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDS
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDS, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer RIVAL2, MASTER_RIVAL
	startbattle
    ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_RIVAL
	;opentext
	;writetext DefaultAfterBattleTextDS
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDS
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinySquare
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinySquare
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleTextDestinySquare
    waitbutton
    closetext
    end

MasterCrystalScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_CRYSTAL
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDS
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDS, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer CRYSTAL, MASTER_CRYSTAL
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_CRYSTAL
	;opentext
	;writetext DefaultAfterBattleTextDS
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDS
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinySquare
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinySquare
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleTextDestinySquare
    waitbutton
    closetext
    end

MasterCynthiaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_CYNTHIA
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDS
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDS, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer CYNTHIA, MASTER_CYNTHIA
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_CYNTHIA
	;opentext
	;writetext DefaultAfterBattleTextDS
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDS
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinySquare
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinySquare
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleTextDestinySquare
    waitbutton
    closetext
    end

MasterStevenScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_STEVEN
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDS
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDS, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer STEVEN, MASTER_STEVEN
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_STEVEN
	;opentext
	;writetext DefaultAfterBattleTextDS
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDS
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinySquare
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinySquare
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleTextDestinySquare
    waitbutton
    closetext
    end

MasterDianthaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_DIANTHA
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDS
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDS, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer BEAUTY, MASTER_DIANTHA
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_DIANTHA
	;opentext
	;writetext DefaultAfterBattleTextDS
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDS
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinySquare
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinySquare
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleTextDestinySquare
    waitbutton
    closetext
    end

MasterAlderScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_ALDER
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDS
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDS, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer HIKER, MASTER_ALDER
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_ALDER
	;opentext
	;writetext DefaultAfterBattleTextDS
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDS
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinySquare
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinySquare
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleTextDestinySquare
    waitbutton
    closetext
    end

MasterLeonScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_LEON
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDS
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDS, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer LEON, MASTER_LEON
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_LEON
	;opentext
	;writetext DefaultAfterBattleTextDS
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDS
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinySquare
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinySquare
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleTextDestinySquare
    waitbutton
    closetext
    end

MasterAdamScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_ADAM
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDS
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDS, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer ADAM, MASTER_ADAM
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_ADAM
	setmapscene DESTINY_SQUARE, SCENE_FINISHED
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDS
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinySquare
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinySquare
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleTextDestinySquare
    waitbutton
    closetext
    end

MewtwoScript:
	opentext
	writetext MewtwoCry
	waitbutton
	cry MEWTWO
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon MEWTWO, 100
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
    setval MEWTWO
	special MonCheck
	iftrue .caught
	end
.caught
    setevent EVENT_CAUGHT_MEWTWO
    special FadeOutMusic
	opentext
	writetext MewtwoAfterText
	waitbutton
	closetext
	disappear DESTINYSQUARE_MEWTWO
	special HealParty
	warp DESTINY_FRONTIER, 30, 50
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleTextDestinySquare
    waitbutton
    closetext
    end

InvaderDLCScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_INVADER_MANUS
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDS
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDS, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer INVADER, MANUS
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_INVADER_MANUS
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleTextDS
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinySquare
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinySquare
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleTextDestinySquare
    waitbutton
    closetext
    end

MewtwoCry:
    text "This world is"
    line "beautiful."

    para "But who am I"
    line "to judge this"
    cont "world and its"
    cont "beauty."

    para "..."

    para "You say I"
    line "am part of this"
    cont "world too."

    para "Perhaps..."

    para "Whether I am"
    line "or not."

    para "I shall use all"
    line "my power..."

    para "to defend it."
    done

MewtwoAfterText:
    text "Life is"
    line "wonderful."

    para "I know you"
    line "understand."

    para "Now go!"

    para "Upon the peak of"
    line "MT SILVER..."

    para "Your destiny"
    line "awaits."
    done

DefaultSeenTextDS:
    text "Let's fight!"
    done

DefaultBeatenTextDS:
    text "Well done!"
    done

DefaultAfterBattleTextDS:
    text "You done well!"
    done

RematchTextDestinySquare:
    text "Shall we have"
    line "another match?"
    done

RematchRefuseTextDestinySquare:
    text "I will always"
    line "be here."
    done

DefaultLoseAfterBattleTextDestinySquare:
    text "Better luck"
    line "next time."
    done

FightAdamScript:
    turnobject PLAYER, LEFT
    sjump MasterAdamScript

ChampionsBlockScript:
    checkevent EVENT_BEAT_MASTER_RIVAL
    iffalse .block
    checkevent EVENT_BEAT_MASTER_CRYSTAL
    iffalse .block
    checkevent EVENT_BEAT_MASTER_STEVEN
    iffalse .block
    checkevent EVENT_BEAT_MASTER_CYNTHIA
    iffalse .block
    checkevent EVENT_BEAT_MASTER_ALDER
    iffalse .block
    checkevent EVENT_BEAT_MASTER_DIANTHA
    iffalse .block
    checkevent EVENT_BEAT_MASTER_LEON
    iffalse .block
    setmapscene DESTINY_SQUARE, SCENE_CUSTOM_1
    end
.block
	opentext
	writetext DefeatChampionsText
    waitbutton
    closetext
    applymovement PLAYER, Movement_DestinySquareTurnBack
    end

DefeatChampionsText:
    text "You must defeat"
    line "all CHAMPIONS"
    cont "to proceed!"
    done

Movement_DestinySquareTurnBack:
	step DOWN
	step_end

DestinySquareMasterBall:
	itemball MASTER_BALL

DestinySquareAmbrosia:
	itemball AMBROSIA

DestinySquare_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 26, DESTINY_ELITE_FOUR, 15
	warp_event  7, 26, DESTINY_ELITE_FOUR, 16

	warp_event  6, 15, DESTINY_SQUARE, 5
	warp_event  7, 15, DESTINY_SQUARE, 6
	warp_event  6, 8, DESTINY_SQUARE, 3
	warp_event  7, 8, DESTINY_SQUARE, 4

	def_coord_events
	coord_event  6,  17, SCENE_DEFAULT, ChampionsBlockScript
	coord_event  7,  17, SCENE_DEFAULT, ChampionsBlockScript
	coord_event  6,  6, SCENE_CUSTOM_1, FightAdamScript

	def_bg_events

	def_object_events
	object_event  5, 18, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterRivalScript, -1
	object_event  8, 18, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MasterCrystalScript, -1
	object_event  8, 21, SPRITE_JASMINE, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MasterCynthiaScript, -1
	object_event  4, 24, SPRITE_FALKNER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MasterStevenScript, -1
	object_event  5, 21, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MasterDianthaScript, -1
	object_event  9, 24, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MasterAlderScript, -1
	object_event  9, 16, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MasterLeonScript, -1
	object_event  7,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MasterAdamScript, -1
	object_event  6,  3, SPRITE_MEWTWO, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, MewtwoScript, EVENT_CAUGHT_MEWTWO

	object_event  5,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DestinySquareMasterBall, EVENT_DESTINY_SQUARE_MASTER_BALL
	object_event  8,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DestinySquareAmbrosia, EVENT_DESTINY_SQUARE_AMBROSIA
	object_event  1, 16, SPRITE_GIOVANNI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_SCRIPT, 0, InvaderDLCScript, -1


