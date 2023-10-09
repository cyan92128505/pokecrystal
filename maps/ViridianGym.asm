	object_const_def
	const VIRIDIANGYM_BLUE
	const VIRIDIANGYM_GYM_GUIDE
	const VIRIDIANGYM_GREEN

ViridianGym_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Blue

.Blue
    disappear VIRIDIANGYM_GREEN
    checkevent EVENT_RESTORED_POWER_TO_KANTO
    iffalse .gone
    checkevent EVENT_HOEN_INVASION_UNDERWAY
    iftrue .gone
    checkevent EVENT_VIRIDIAN_GYM_BLUE
    iftrue .gone
    appear VIRIDIANGYM_BLUE
    appear VIRIDIANGYM_GYM_GUIDE
    sjump .end
.gone
    disappear VIRIDIANGYM_BLUE
.end
    endcallback

ViridianGymBlueScript:
	faceplayer
	opentext
	checkflag ENGINE_EARTHBADGE
	iftrue .FightDone
	checkevent EVENT_BEAT_HOEN_ARMY
	iftrue .battle

	checkevent EVENT_BEAT_BROCK
	iffalse .mustBeatAllGyms
	checkevent EVENT_BEAT_MISTY
	iffalse .mustBeatAllGyms
	checkevent EVENT_BEAT_LTSURGE
	iffalse .mustBeatAllGyms
	checkevent EVENT_BEAT_ERIKA
	iffalse .mustBeatAllGyms
	checkevent EVENT_BEAT_JANINE
	iffalse .mustBeatAllGyms
	checkevent EVENT_BEAT_WILL
	iffalse .mustBeatAllGyms
	checkevent EVENT_BEAT_BLAINE
	iffalse .mustBeatAllGyms

	setmapscene VIRIDIAN_GYM, SCENE_FINISHED
	writetext FalseIntroText
	special FadeOutMusic
	showemote EMOTE_SHOCK, VIRIDIANGYM_BLUE, 15
	turnobject VIRIDIANGYM_BLUE, DOWN
	writetext GreenIntroText
	waitbutton
	closetext
	appear VIRIDIANGYM_GREEN
	applymovement VIRIDIANGYM_GREEN, Movement_GreenApproaches
	opentext
	writetext GreenTalkText
	waitbutton
	closetext
	turnobject VIRIDIANGYM_GREEN, DOWN
	opentext
	writetext GreenRedText
	waitbutton
	closetext
	applymovement VIRIDIANGYM_GREEN, Movement_BlueLeaves
	disappear VIRIDIANGYM_GREEN
	playmusic MUSIC_RED_INDIGO_PLATEAU
	opentext
	writetext WarHasBegunText
	waitbutton
    closetext
    applymovement VIRIDIANGYM_BLUE, Movement_BlueLeaves
    disappear VIRIDIANGYM_BLUE

	setevent EVENT_HOEN_INVASION_UNDERWAY
	setmapscene ROUTE_22, SCENE_CUSTOM_1
	setmapscene VERMILION_CITY, SCENE_CUSTOM_1
	setval 1
    writemem wHoenInvasionUnderway
    blackoutmod VIRIDIAN_CITY
	end
.battle
	writetext LeaderBlueBeforeText
	waitbutton
	closetext
	winlosstext LeaderBlueWinText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer BLUE, BLUE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BLUE
	loadmem wLevelCap, 100
	opentext
	writetext Text_ReceivedEarthBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_EARTHBADGE
	writetext LeaderBlueAfterText
	waitbutton
	closetext
	end
.rematch
    writetext LeaderBlueBeforeText
	waitbutton
	closetext
	winlosstext LeaderBlueWinText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_REMATCH
	loadtrainer BLUE, BLUE1
	startbattle
	reloadmapafterbattle
	end
.FightDone:
	writetext LeaderBlueEpilogueText
	waitbutton
    closetext
	opentext
	writetext RematchTextBlue
	yesorno
	iftrue .rematch
	writetext RematchRefuseTextBlue
	waitbutton
	closetext
	end
.mustBeatAllGyms
    opentext
    writetext MustBeatAllGymsText
    waitbutton
    closetext
    end

Movement_BlueLeaves:
    step DOWN
    step DOWN
    step DOWN
    step DOWN
    step DOWN
    step_end

Movement_GreenApproaches:
    big_step UP
    big_step UP
    big_step UP
    big_step UP
    step_end

HangOnText:
    text "Hang on there."
    done

ViridianGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BLUE
	iftrue .ViridianGymGuideWinScript
	writetext ViridianGymGuideText
	waitbutton
	closetext
	end

.ViridianGymGuideWinScript:
	writetext ViridianGymGuideWinText
	waitbutton
	closetext
	end

ViridianGymStatue:
	checkflag ENGINE_EARTHBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script

.Beaten:
	gettrainername STRING_BUFFER_4, BLUE, BLUE1
	jumpstd GymStatue2Script


MustBeatAllGymsText:
    text "Prove yourself"
    line "by beating all"
    cont "the KANTO GYMs."

    para "Then I will fight"
    line "you JOHTO CHAMP!"
    done

FalseIntroText:
    text "Yo CHAMPION!"

    para "You finally ready"
    line "for a real test?"

    para "I'm not like the"
    line "weak trainers"
    cont "you have faced"
    cont "so far...."
    prompt

WarHasBegunText:
    text "War has begun..."

    para "The HOEN invasion"
    line "forces have"
    cont "established a"
    cont "bridgehead at"
    cont "VERMILION and more"
    cont "will land at"
    cont "FUCHSIA soon."

    para "You are one of"
    line "the strongest"
    cont "trainers in KANTO."

    para "You must go to"
    line "VERMILION."

    para "I must contact"
    line "the league and"
    cont "convince them that"
    cont "CHAMPIONS must be"
    cont "allowed to take"
    cont "action under these"
    cont "circumstances."

    para "We will need their"
    line "help."

    para "Unless RED decides"
    line "to show."

    para "But we can't count"
    line "on that."

    para "Head now to"
    line "VERMILION."

    para "Good luck."
    done

LeaderBlueBeforeText:
	text "BLUE: Yo! Finally"
	line "got here, huh?"

	para "I wasn't in the"
	line "mood at CINNABAR,"

	para "but now I'm ready"
	line "to battle you."

	para "…"

	para "You're telling me"
	line "you conquered all"
	cont "the GYMS in JOHTO?"

	para "Heh! JOHTO's GYMS"
	line "must be pretty"
	cont "pathetic then."

	para "Hey, don't worry"
	line "about it."

	para "I'll know if you"
	line "are good or not by"

	para "battling you right"
	line "now."

	para "Ready, JOHTO"
	line "CHAMP?"
	done

LeaderBlueWinText:
	text "BLUE: What?"

	para "How the heck did I"
	line "lose to you?"

	para "…"

	para "Tch, all right…"
	line "Here, take this--"
	cont "it's EARTHBADGE."
	done

Text_ReceivedEarthBadge:
	text "<PLAYER> received"
	line "EARTHBADGE."
	done

LeaderBlueAfterText:
	text "BLUE: …"

	para "All right, I was"
	line "wrong. You're the"

	para "real deal. You are"
	line "a good trainer."

	para "But I'm going to"
	line "beat you someday."

	para "Don't you forget"
	line "it!"
	done

LeaderBlueEpilogueText:
	text "BLUE: Listen, you."

	para "You'd better not"
	line "lose until I beat"
	cont "you. Got it?"
	done

GreenIntroText:
    text "BLUE!"
    done

GreenTalkText:
    text "It is happening!"

    para "They've gone"
    line "after SURGE first."

    para "We're going to"
    line "need backup from"
    cont "your #MON"
    cont "LEAGUE friends!"
    done

GreenRedText:
    text "I wish I knew"
    line "where RED is."
    done

ViridianGymGuideText:
	text "Yo, CHAMP in"
	line "making!"

	para "How's it going?"
	line "Looks like you're"
	cont "on a roll."

	para "The GYM LEADER is"
	line "a guy who battled"

	para "the CHAMPION three"
	line "years ago."

	para "He's no pushover."

	para "Give it everything"
	line "you've got!"
	done

ViridianGymGuideWinText:
	text "Man, you are truly"
	line "tough…"

	para "That was a heck of"
	line "an inspirational"

	para "battle. It brought"
	line "tears to my eyes."
	done

RematchTextBlue:
    text "How about a"
    line "rematch?"
    prompt

RematchRefuseTextBlue:
    text "Maybe next time."
    done

ApproachBlueScript1:
    checkevent EVENT_RESTORED_POWER_TO_KANTO
    iffalse .end
    checkevent EVENT_HOEN_INVASION_UNDERWAY
    iftrue .end
    checkevent EVENT_VIRIDIAN_GYM_BLUE
    iftrue .end
    applymovement PLAYER, Movement_ApproachBlue1
    turnobject VIRIDIANGYM_BLUE, LEFT
    sjump ViridianGymBlueScript
.end
    end

ApproachBlueScript2:
    checkevent EVENT_RESTORED_POWER_TO_KANTO
    iffalse .end
    checkevent EVENT_HOEN_INVASION_UNDERWAY
    iftrue .end
    checkevent EVENT_VIRIDIAN_GYM_BLUE
    iftrue .end
    applymovement PLAYER, Movement_ApproachBlue2
    turnobject VIRIDIANGYM_BLUE, LEFT
    sjump ViridianGymBlueScript
.end
    end

Movement_ApproachBlue1:
    step UP
    step UP
    turn_head RIGHT
    step_end

Movement_ApproachBlue2:
    step LEFT
    step UP
    step UP
    turn_head RIGHT
    step_end


ViridianGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, VIRIDIAN_CITY, 1
	warp_event  5, 17, VIRIDIAN_CITY, 1

	def_coord_events
	coord_event 4, 5, SCENE_DEFAULT, ApproachBlueScript1
	coord_event 5, 5, SCENE_DEFAULT, ApproachBlueScript2

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, ViridianGymStatue
	bg_event  6, 13, BGEVENT_READ, ViridianGymStatue

	def_object_events
	object_event  5,  3, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianGymBlueScript, EVENT_FIELD_MON_1
	;object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianGymGuideScript, EVENT_FIELD_MON_2
	object_event  5,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_FIELD_MON_3
