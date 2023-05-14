    object_const_def
    const DESTINYSQUARE_SILVER
    const DESTINYSQUARE_CYNTHIA
    const DESTINYSQUARE_STEVEN
    const DESTINYSQUARE_WALLACE
    const DESTINYSQUARE_ADAM
    const DESTINYSQUARE_MEWTWO

DestinySquare_MapScripts:
	def_scene_scripts

	def_callbacks

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
	loadtrainer JASMINE, CYNTHIA
	startbattle
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
	loadtrainer FALKNER, STEVEN
	startbattle
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

MasterWallaceScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_WALLACE
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDS
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDS, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer MYSTICALMAN, WALLACE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_WALLACE
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

MasterAdamScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_KOGA
	iftrue .FightDone
.fight
	writetext DefaultSeenTextDS
	waitbutton
	closetext
	winlosstext DefaultBeatenTextDS, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer KOGA, MASTER_KOGA
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_KOGA
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
	;special FadeBlackQuickly
	;disappear DESTINYSQUARE_MEWTWO
	;special ReloadSpritesNoPalettes
	;pause 15
	;special FadeInQuickly
	;pause 30
	;special HealParty
	warp DESTINY_PARK, 7, 10
	;refreshscreen
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

FightAdamScript:
    checkevent EVENT_BEAT_MASTER_KOGA
    iffalse .fight
    end
.fight
    turnobject PLAYER, LEFT
    sjump MasterAdamScript

Movement_DestinySquareTurnBack:
	step DOWN
	step_end

DestinySquare_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 24, DESTINY_ELITE_FOUR, 15
	warp_event  7, 24, DESTINY_ELITE_FOUR, 16

	warp_event  6, 15, DESTINY_SQUARE, 5
	warp_event  7, 15, DESTINY_SQUARE, 6
	warp_event  6, 8, DESTINY_SQUARE, 3
	warp_event  7, 8, DESTINY_SQUARE, 4

	def_coord_events
	;coord_event  6, 12, SCENE_ALWAYS, XerneasYveltalBlockScript
	coord_event  6,  6, SCENE_ALWAYS, FightAdamScript

	def_bg_events

	def_object_events
	object_event  7, 17, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterRivalScript, -1
	object_event  8, 20, SPRITE_JASMINE, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MasterCynthiaScript, -1
	object_event  5, 22, SPRITE_FALKNER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MasterStevenScript, -1
	object_event  4, 19, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MasterWallaceScript, -1
	object_event  7,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MasterAdamScript, -1
	object_event  6,  3, SPRITE_MEWTWO, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, MewtwoScript, EVENT_CAUGHT_MEWTWO
