	object_const_def
	const NEWBARKTOWN_TEACHER
	const NEWBARKTOWN_FISHER
	const NEWBARKTOWN_SILVER
	;const NEWBARKTOWN_FIELDMON_1
	const NEWBARKTOWN_FIELDMON_2
	const NEWBARKTOWN_FIELDMON_4
	const NEWBARKTOWN_FIELDMON_5
	const NEWBARKTOWN_FIELDMON_6
	const NEWBARKTOWN_REPEL_WOMAN

NewBarkTown_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .NewBarkTownFieldMon
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_NEW_BARK
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	endcallback

.NewBarkTownFieldMon:
    appear NEWBARKTOWN_FIELDMON_4
    appear NEWBARKTOWN_FIELDMON_5
    appear NEWBARKTOWN_FIELDMON_6
    endcallback

NewBarkTown_TeacherStopsYouScene1:
	playmusic MUSIC_MOM
	turnobject NEWBARKTOWN_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement NEWBARKTOWN_TEACHER, NewBarkTown_TeacherRunsToYouMovement1
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow NEWBARKTOWN_TEACHER, PLAYER
	applymovement NEWBARKTOWN_TEACHER, NewBarkTown_TeacherBringsYouBackMovement1
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

NewBarkTown_TeacherStopsYouScene2:
	playmusic MUSIC_MOM
	turnobject NEWBARKTOWN_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement NEWBARKTOWN_TEACHER, NewBarkTown_TeacherRunsToYouMovement2
	turnobject PLAYER, UP
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow NEWBARKTOWN_TEACHER, PLAYER
	applymovement NEWBARKTOWN_TEACHER, NewBarkTown_TeacherBringsYouBackMovement2
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

NewBarkTownTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .CallMom
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .TellMomYoureLeaving
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .MonIsAdorable
	writetext Text_GearIsImpressive
	waitbutton
	closetext
	end

.MonIsAdorable:
	writetext Text_YourMonIsAdorable
	waitbutton
	closetext
	end

.TellMomYoureLeaving:
	writetext Text_TellMomIfLeaving
	waitbutton
	closetext
	end

.CallMom:
	writetext Text_CallMomOnGear
	waitbutton
	closetext
	end

NewBarkTownFisherScript:
	jumptextfaceplayer Text_ElmDiscoveredNewMon

NewBarkTownSilverScript:
	opentext
	writetext NewBarkTownRivalText1
	waitbutton
	closetext
	turnobject NEWBARKTOWN_SILVER, LEFT
	opentext
	writetext NewBarkTownRivalText2
	waitbutton
	closetext
	follow PLAYER, NEWBARKTOWN_SILVER
	applymovement PLAYER, NewBarkTown_SilverPushesYouAwayMovement
	stopfollow
	pause 5
	turnobject NEWBARKTOWN_SILVER, DOWN
	pause 5
	playsound SFX_TACKLE
	applymovement PLAYER, NewBarkTown_SilverShovesYouOutMovement
	applymovement NEWBARKTOWN_SILVER, NewBarkTown_SilverReturnsToTheShadowsMovement
	end

NewBarkTownSign:
	jumptext NewBarkTownSignText

NewBarkTownPlayersHouseSign:
	jumptext NewBarkTownPlayersHouseSignText

NewBarkTownElmsLabSign:
	jumptext NewBarkTownElmsLabSignText

NewBarkTownElmsHouseSign:
	jumptext NewBarkTownElmsHouseSignText

NewBarkTown_TeacherRunsToYouMovement1:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

NewBarkTown_TeacherRunsToYouMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

NewBarkTown_TeacherBringsYouBackMovement1:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

NewBarkTown_TeacherBringsYouBackMovement2:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

NewBarkTown_SilverPushesYouAwayMovement:
	turn_head UP
	step DOWN
	step_end

NewBarkTown_SilverShovesYouOutMovement:
	turn_head UP
	fix_facing
	jump_step DOWN
	remove_fixed_facing
	step_end

NewBarkTown_SilverReturnsToTheShadowsMovement:
	step RIGHT
	step_end

Text_GearIsImpressive:
	text "Wow, your #GEAR"
	line "is impressive!"

	para "Did your mom get"
	line "it for you?"
	done

Text_WaitPlayer:
	text "Wait, <PLAY_G>!"
	done

Text_WhatDoYouThinkYoureDoing:
	text "What do you think"
	line "you're doing?"
	done

Text_ItsDangerousToGoAlone:
	text "It's dangerous to"
	line "go out without a"
	cont "#MON!"

	para "Wild #MON"
	line "jump out of the"

	para "grass on the way"
	line "to the next town."
	done

Text_YourMonIsAdorable:
	text "Oh! Your #MON"
	line "is adorable!"
	cont "I wish I had one!"
	done

Text_TellMomIfLeaving:
	text "Hi, <PLAY_G>!"
	line "Leaving again?"

	para "You should tell"
	line "your mom if you"
	cont "are leaving."
	done

Text_CallMomOnGear:
	text "Call your mom on"
	line "your #GEAR to"

	para "let her know how"
	line "you're doing."
	done

Text_ElmDiscoveredNewMon:
	text "Yo, <PLAYER>!"

	para "I hear PROF.ELM"
	line "discovered some"
	cont "new #MON."
	done

NewBarkTownRivalText1:
	text "<……>"

	para "So this is the"
	line "famous ELM #MON"
	cont "LAB…"
	done

NewBarkTownRivalText2:
	text "…What are you"
	line "staring at?"
	done

NewBarkTownSignText:
	text "NEW BARK TOWN"

	para "The Town Where the"
	line "Winds of a New"
	cont "Beginning Blow"
	done

NewBarkTownPlayersHouseSignText:
	text "<PLAYER>'s House"
	done

NewBarkTownElmsLabSignText:
	text "ELM #MON LAB"
	done

NewBarkTownElmsHouseSignText:
	text "ELM'S HOUSE"
	done

;NewBarkFieldMon1Script:
;	trainer HOUNDOUR, FIELD_MON, EVENT_FIELD_MON_1, PokemonAttacksText, 22, 0, .script
;.script
;    disappear NEWBARKTOWN_FIELDMON_1
;    end

NewBarkFieldMon2Script:
	trainer PERSIAN, FIELD_MON, EVENT_FIELD_MON_2, PokemonAttacksText, 21, 0, .script
.script
    disappear NEWBARKTOWN_FIELDMON_2
    end


PokemonAttacksText:
	text "Wild #MON"
	line "attacks!"
	done

NeedToGetAPokemon:
    checkevent EVENT_GOT_A_POKEMON_FROM_ELM
    iffalse .block
    end
.block
    turnobject PLAYER, DOWN
	opentext
	writetext NewBarkTownBlockText
    waitbutton
    closetext
    applymovement PLAYER, Movement_NewBarkTownTurnBack
    end

NewBarkTownBlockText:
    text "I need to get"
    line "a #MON from"
    cont "PROF.ELM!"
    done

Movement_NewBarkTownTurnBack:
	step DOWN
	step_end

NewBarkFieldMon4Script:
	faceplayer
	cry MEOWTH
	pause 15
	loadwildmon MEOWTH, 4
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_4
	disappear NEWBARKTOWN_FIELDMON_4
	end

NewBarkFieldMon5Script:
	faceplayer
	cry JIGGLYPUFF
	pause 15
	loadwildmon JIGGLYPUFF, 3
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_5
	disappear NEWBARKTOWN_FIELDMON_5
	end

NewBarkFieldMon6Script:
	faceplayer
	cry STARLY
	pause 15
	loadwildmon STARLY, 3
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_6
	disappear NEWBARKTOWN_FIELDMON_6
	end

NewBarkTownRepelScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_NEWBARKTOWN_REPEL
	iftrue .GotRepels
	writetext NewBarkTownRepelsText
	promptbutton
	verbosegiveitem REPULSOR
	writetext GotRepelsText
	promptbutton
	iffalse .NoRoom
	setevent EVENT_GOT_NEWBARKTOWN_REPEL
.GotRepels:
	writetext NewBarkTownGotRepelsText
	waitbutton
.NoRoom:
	closetext
	end

GotRepelsText:
    text "<PLAYER>"
    line "got REPULSOR"
    done

NewBarkTownRepelsText:
    text "#MON are"
    line "friends."

    para "They will often"
    line "come up to greet"
    cont "you even if"
    cont "you're in a"
    cont "hurry."

    para "This will"
    line "help with that."
    done

NewBarkTownGotRepelsText:
    text "#MON are"
    line "friends."

    para "But some can be"
    line "dangerous."

    para "You should always"
    line "be prepared."

    para "REPULSOR will"
    line "keep weaker"
    cont "#MON away."

    para "You can turn it"
    line "on or off in the"
    cont "key items menu."
    done

NewBarkTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 15, ELMS_LAB, 1
	warp_event 13, 17, PLAYERS_HOUSE_1F, 1
	warp_event  3, 23, PLAYERS_NEIGHBORS_HOUSE, 1
	warp_event 11, 25, ELMS_HOUSE, 1

	def_coord_events
	coord_event  1, 20, SCENE_DEFAULT, NewBarkTown_TeacherStopsYouScene1
	coord_event  1, 21, SCENE_DEFAULT, NewBarkTown_TeacherStopsYouScene2
	coord_event  10, 11, SCENE_DEFAULT, NeedToGetAPokemon
	coord_event  11, 11, SCENE_DEFAULT, NeedToGetAPokemon

	def_bg_events
	bg_event  8, 20, BGEVENT_READ, NewBarkTownSign
	bg_event 11, 17, BGEVENT_READ, NewBarkTownPlayersHouseSign
	bg_event  3, 15, BGEVENT_READ, NewBarkTownElmsLabSign
	bg_event  9, 25, BGEVENT_READ, NewBarkTownElmsHouseSign

	def_object_events
	object_event  6, 20, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownTeacherScript, -1
	object_event 12, 21, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NewBarkTownFisherScript, -1
	object_event  3, 14, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownSilverScript, EVENT_RIVAL_NEW_BARK_TOWN
	object_event 12,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NewBarkFieldMon4Script, EVENT_FIELD_MON_4
	object_event 7,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, DAY, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NewBarkFieldMon5Script, EVENT_FIELD_MON_5
	object_event 13,  4, SPRITE_BIRD, SPRITEMOVEDATA_WANDER, 2, 2, -1, DAY, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NewBarkFieldMon6Script, EVENT_FIELD_MON_6
	object_event 10,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownRepelScript, -1
