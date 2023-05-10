DestinyFrontier_MapScripts:
	def_scene_scripts

	def_callbacks

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
	warp_event  8, 17, DESTINY_PARK, 15

	warp_event  22, 0, DESTINY_FRONTIER, 13
	warp_event  23, 0, DESTINY_FRONTIER, 14

	warp_event  52, 17, DESTINY_FRONTIER, 11
	warp_event  53, 17, DESTINY_FRONTIER, 12

	warp_event  52, 9, DESTINY_SQUARE, 1
	warp_event  53, 9, DESTINY_SQUARE, 2


	def_coord_events
	;coord_event 0, 0, SCENE_ALWAYS, HoohLugiaBlockScript
	;coord_event 0, 0, SCENE_ALWAYS, GroudonKyogreBlockScript
	;coord_event 0, 0, SCENE_ALWAYS, PalkiaDialgaBlockScript
	;coord_event 0, 0, SCENE_ALWAYS, RayquazaGiratinaBlockScript
	;coord_event 0, 0, SCENE_ALWAYS, GiovanniBlockScript
	;coord_event 0, 0, SCENE_ALWAYS, XerneasYveltalBlockScript

	def_bg_events

	def_object_events
