    object_const_def
    const ANCIENTRUINPRESENT_YVELTAL

AncientRuinPresent_MapScripts:
	def_scene_scripts

	def_callbacks

YveltalScript:
	opentext
	writetext YveltalCry
	waitbutton
	cry YVELTAL
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon YVELTAL, 70
	startbattle
	reloadmapafterbattle
    setval YVELTAL
	special MonCheck
	iftrue .caught
	end
.caught
    setevent EVENT_CAUGHT_YVELTAL
	disappear ANCIENTRUINPRESENT_YVELTAL
	pause 15
	special FadeInQuickly
	pause 30
	special HealParty
	refreshscreen
	end

YveltalCry:
    text "Nothing is more"
    line "valuable than"
    cont "time."

    para "You are young."

    para "You have a lot"
    line "of time left.."

    para "For a human."

    para "I shall take"
    line "every second"
    cont "from you."

    para "And add it to"
    line "my own!"
    done

HenshinScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_HENSHIN
	iftrue .FightDone
.fight
	writetext HenshinSeenText
	waitbutton
	closetext
	winlosstext HenshinBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer SAGE, HENSHIN
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_HENSHIN
	;opentext
	;writetext HenshinBeatenText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext HenshinAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextHenshin
	yesorno
	iftrue .fight
	writetext RematchRefuseTextHenshin
	waitbutton
	closetext
	end

HenshinSeenText:
    text "Foolish child!"

    para "The power of"
    line "death shall"
    cont "belong to"
    cont "HENSHIN!"
    done

HenshinBeatenText:
    text "NOOOOOOO!"
    done

HenshinAfterBattleText:
    text "It can not"
    line "be!!"
    done

RematchTextHenshin:
    text "One more"
    line "duel?"
    done

RematchRefuseTextHenshin:
    text "I insist!"
    done

DialgaBlockScript:
    checkevent EVENT_CAUGHT_DIALGA
    iffalse .block
    end
.block
    turnobject PLAYER, UP
	opentext
	writetext DialgaBlockText
    waitbutton
    closetext
    applymovement PLAYER, Movement_AncientRuinsPresentTurnBack
    end

DialgaBlockText:
    text "Only the power of"
    line "the master of time"

    para "DIALGA!"

    para "Can activate this"
    line "doorway."
    done

Movement_AncientRuinsPresentTurnBack:
	step DOWN
	step_end

FightHenshinScript:
    checkevent EVENT_BEAT_HENSHIN
    iffalse .fight
    end
.fight
    turnobject PLAYER, RIGHT
    sjump HenshinScript

AncientRuinPresent_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event   5, 5, RUINS_OF_ALPH_OUTSIDE, 12
	warp_event  33, 5, SPROUT_TOWER_B1F, 1
	warp_event 19,  5, ANCIENT_RUIN_PAST, 1

	def_coord_events
	coord_event 19, 6, SCENE_ALWAYS, DialgaBlockScript
	coord_event 20, 22, SCENE_ALWAYS, FightHenshinScript

	def_bg_events

	def_object_events
	object_event 19, 9, SPRITE_HO_OH, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, YveltalScript, EVENT_CAUGHT_YVELTAL
	object_event 21, 22, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, HenshinScript, -1
