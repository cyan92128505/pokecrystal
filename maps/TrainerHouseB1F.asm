	object_const_def
	const TRAINERHOUSEB1F_RECEPTIONIST
	;const TRAINERHOUSEB1F_CHRIS

TrainerHouseB1F_MapScripts:
	def_scene_scripts
	scene_script .DummyScene ; SCENE_DEFAULT

	def_callbacks

.DummyScene:
	end

TrainerHouseReceptionistScript:
	turnobject PLAYER, UP
	opentext
	;checkflag ENGINE_FOUGHT_IN_TRAINER_HALL_TODAY
	;iftrue .FoughtTooManyTimes
	writetext TrainerHouseB1FIntroText
	promptbutton
	writetext TrainerHouseB1FYourOpponentIsText
	promptbutton
	writetext TrainerHouseB1FAskWantToBattleText
	yesorno
	iffalse .Declined
	writetext TrainerHouseB1FGoRightInText
	waitbutton
	closetext
	applymovement PLAYER, Movement_EnterTrainerHouseBattleRoom
	winlosstext victoryText, defeatText
    loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE

.sample
    random 30
    ifequal 0, .Brock
    ifequal 1, .Misty
    ifequal 2, .Surge
    ifequal 3, .Erika
    ifequal 4, .Janine
    ifequal 5, .Will
    ifequal 6, .Blaine
    ifequal 7, .Giovanni
    ifequal 8, .Falkner
    ifequal 9, .Bugsy
    ifequal 10, .Whitney
    ifequal 11, .Morty
    ifequal 12, .Chuck
    ifequal 13, .Jasmine
    ifequal 14, .Pryce
    ifequal 15, .Clair
    ifequal 16, .Sabrina
    ifequal 17, .Bruno
    ifequal 18, .Karen
    ifequal 19, .Adam
    ifequal 20, .Drake
    ifequal 21, .Lance
    ifequal 22, .Steven
    ifequal 23, .Wallace
    ifequal 24, .Cynthia
    ifequal 25, .Leon
    ifequal 26, .Blue
    ifequal 27, .Ash
    ifequal 28, .Red
    ifequal 29, .Patches

    ;ifequal 16, .Silver
    ;ifequal 17, .Crystal
    ;ifequal 27, .Arden
    ;ifequal 28, .Diantha
    ;ifequal 33, .Aerith
    ;ifequal 34, .Rocket
    ;ifequal 35, .Yuna
    ;ifequal 36, .Tobias
    ;ifequal 37, .Henshin
    ;ifequal 38, .Seto
    ;ifequal 39, .Yami
    ;ifequal 40, .Aizen
    ;ifequal 41, .Eusine
    ;ifequal 42, .ChrisChan
    ;ifequal 43, .Green
    ;ifequal 45, .RatKing
    ;ifequal 46, .GiantDad
    ;ifequal 47, .Agatha

.finish
	startbattle
	reloadmapafterbattle
	applymovement PLAYER, Movement_ExitTrainerHouseBattleRoom
	end

.Brock
    checkevent EVENT_BEAT_MASTER_BROCK
    iffalse .brock1
    loadtrainer BROCK, MASTER_BROCK
    sjump .finish
.brock1
    checkevent EVENT_BEAT_BROCK
    iffalse .sample
    loadtrainer BROCK, BROCK1
    sjump .finish

.Misty
    checkevent EVENT_BEAT_MASTER_MISTY
    iffalse .misty1
    loadtrainer MISTY, MASTER_MISTY
    sjump .finish
.misty1
    checkevent EVENT_BEAT_MISTY
    iffalse .sample
    loadtrainer MISTY, MISTY1
    sjump .finish

.Surge
    checkevent EVENT_BEAT_MASTER_SURGE
    iffalse .surge1
    loadtrainer LT_SURGE, MASTER_SURGE
    sjump .finish
.surge1
    checkevent EVENT_BEAT_LTSURGE
    iffalse .sample
    loadtrainer LT_SURGE, LT_SURGE1
    sjump .finish

.Erika
    checkevent EVENT_BEAT_MASTER_ERIKA
    iffalse .erika1
    loadtrainer ERIKA, MASTER_ERIKA
    sjump .finish
.erika1
    checkevent EVENT_BEAT_ERIKA
    iffalse .sample
    loadtrainer ERIKA, ERIKA1
    sjump .finish

.Janine
    checkevent EVENT_BEAT_MASTER_JANINE
    iffalse .janine1
    loadtrainer JANINE, MASTER_JANINE
    sjump .finish
.janine1
    checkevent EVENT_BEAT_JANINE
    iffalse .sample
    loadtrainer JANINE, JANINE1
    sjump .finish

.Will
    checkevent EVENT_BEAT_MASTER_WILL
    iffalse .will1
    loadtrainer WILL, MASTER_WILL
    sjump .finish
.will1
    checkevent EVENT_BEAT_WILL
    iffalse .sample
    loadtrainer WILL, WILL1
    sjump .finish

.Blaine
    checkevent EVENT_BEAT_MASTER_BLAINE
    iffalse .blaine1
    loadtrainer BLAINE, MASTER_BLAINE
    sjump .finish
.blaine1
    checkevent EVENT_BEAT_BLAINE
    iffalse .sample
    loadtrainer BLAINE, BLAINE1
    sjump .finish

.Giovanni
    checkevent EVENT_BEAT_MASTER_GIOVANNI
    iffalse .Giovanni1
    loadtrainer GIOVANNI, MASTER_GIOVANNI
    sjump .finish
.Giovanni1
    checkevent EVENT_BEAT_GIOVANNI
    iffalse .sample
    loadtrainer GIOVANNI, LEADER_GIOVANNI
    sjump .finish

.Falkner
    checkevent EVENT_BEAT_MASTER_FALKNER
    iffalse .Falkner1
    loadtrainer FALKNER, MASTER_FALKNER
    sjump .finish
.Falkner1
    checkevent EVENT_BEAT_FALKNER
    iffalse .sample
    loadtrainer FALKNER, FALKNER1
    sjump .finish

.Bugsy
    checkevent EVENT_BEAT_MASTER_BUGSY
    iffalse .Bugsy1
    loadtrainer BUGSY, MASTER_BUGSY
    sjump .finish
.Bugsy1
    checkevent EVENT_BEAT_BUGSY
    iffalse .sample
    loadtrainer BUGSY, BUGSY1
    sjump .finish

.Whitney
    checkevent EVENT_BEAT_MASTER_WHITNEY
    iffalse .Whitney1
    loadtrainer WHITNEY, MASTER_WHITNEY
    sjump .finish
.Whitney1
    checkevent EVENT_BEAT_WHITNEY
    iffalse .sample
    loadtrainer WHITNEY, WHITNEY1
    sjump .finish

.Morty
    checkevent EVENT_BEAT_MASTER_MORTY
    iffalse .Morty1
    loadtrainer MORTY, MASTER_MORTY
    sjump .finish
.Morty1
    checkevent EVENT_BEAT_MORTY
    iffalse .sample
    loadtrainer MORTY, MORTY1
    sjump .finish

.Chuck
    checkevent EVENT_BEAT_MASTER_CHUCK
    iffalse .Chuck1
    loadtrainer CHUCK, MASTER_CHUCK
    sjump .finish
.Chuck1
    checkevent EVENT_BEAT_CHUCK
    iffalse .sample
    loadtrainer CHUCK, CHUCK1
    sjump .finish

.Jasmine
    checkevent EVENT_BEAT_MASTER_JASMINE
    iffalse .Jasmine1
    loadtrainer JASMINE, MASTER_JASMINE
    sjump .finish
.Jasmine1
    checkevent EVENT_BEAT_JASMINE
    iffalse .sample
    loadtrainer JASMINE, JASMINE1
    sjump .finish

.Pryce
    checkevent EVENT_BEAT_MASTER_PRYCE
    iffalse .Pryce1
    loadtrainer PRYCE, MASTER_PRYCE
    sjump .finish
.Pryce1
    checkevent EVENT_BEAT_PRYCE
    iffalse .sample
    loadtrainer PRYCE, PRYCE1
    sjump .finish

.Clair
    checkevent EVENT_BEAT_MASTER_CLAIR
    iffalse .Clair1
    loadtrainer CLAIR, MASTER_CLAIR
    sjump .finish
.Clair1
    checkevent EVENT_BEAT_CLAIR
    iffalse .sample
    loadtrainer CLAIR, CLAIR1
    sjump .finish

.Sabrina
    checkevent EVENT_BEAT_MASTER_SABRINA
    iffalse .Sabrina1
    loadtrainer SABRINA, MASTER_SABRINA
    sjump .finish
.Sabrina1
    checkevent EVENT_BEAT_ELITE_FOUR
    iffalse .sample
    loadtrainer SABRINA, SABRINA1
    sjump .finish

.Bruno
    checkevent EVENT_BEAT_MASTER_BRUNO
    iffalse .Bruno1
    loadtrainer BRUNO, MASTER_BRUNO
    sjump .finish
.Bruno1
    checkevent EVENT_BEAT_ELITE_FOUR
    iffalse .sample
    loadtrainer BRUNO, BRUNO1
    sjump .finish

.Karen
    checkevent EVENT_BEAT_MASTER_KAREN
    iffalse .Karen1
    loadtrainer KAREN, MASTER_KAREN
    sjump .finish
.Karen1
    checkevent EVENT_BEAT_ELITE_FOUR
    iffalse .sample
    loadtrainer KAREN, KAREN1
    sjump .finish

.Adam
    checkevent EVENT_BEAT_MASTER_ADAM
    iffalse .Adam1
    loadtrainer ADAM, MASTER_ADAM
    sjump .finish
.Adam1
    checkevent EVENT_BEAT_ELITE_FOUR
    iffalse .sample
    loadtrainer ADAM, ADAM_ELITE
    sjump .finish

.Drake
    checkevent EVENT_BEAT_MASTER_DRAKE
    iffalse .Drake1
    loadtrainer SOLDIER, MASTER_DRAKE
    sjump .finish
.Drake1
    checkevent EVENT_BEAT_SOLDIER_5
    iffalse .sample
    loadtrainer SOLDIER, SOLDIER_5
    sjump .finish

.Lance
    checkevent EVENT_BEAT_MASTER_LANCE
    iffalse .Lance1
    loadtrainer CHAMPION, MASTER_LANCE
    sjump .finish
.Lance1
    checkevent EVENT_BEAT_ELITE_FOUR
    iffalse .sample
    loadtrainer CHAMPION, LANCE
    sjump .finish

.Red
    checkevent EVENT_BEAT_MASTER_RED
    iffalse .Red1
    loadtrainer RED, MASTER_RED
    sjump .finish
.Red1
    checkevent EVENT_BEAT_RED
    iffalse .sample
    loadtrainer RED, RED1
    sjump .finish

.Blue
    checkevent EVENT_BEAT_MASTER_BLUE
    iffalse .Blue1
    loadtrainer BLUE, MASTER_BLUE
    sjump .finish
.Blue1
    checkevent EVENT_BEAT_BLUE
    iffalse .sample
    loadtrainer BLUE, BLUE1
    sjump .finish

.Ash
    checkevent EVENT_BEAT_ASH
    iffalse .sample
    loadtrainer RED, ASH
    sjump .finish

.Steven
    checkevent EVENT_BEAT_MASTER_STEVEN
    iffalse .Steven1
    loadtrainer STEVEN, MASTER_STEVEN
    sjump .finish
.Steven1
    checkevent EVENT_BEAT_STEVEN
    iffalse .sample
    loadtrainer STEVEN, CHAMP_STEVEN
    sjump .finish

.Cynthia
    checkevent EVENT_BEAT_MASTER_CYNTHIA
    iffalse .Cynthia1
    loadtrainer CYNTHIA, MASTER_CYNTHIA
    sjump .finish
.Cynthia1
    checkevent EVENT_BEAT_CYNTHIA
    iffalse .sample
    loadtrainer CYNTHIA, CHAMP_CYNTHIA
    sjump .finish

.Leon
    checkevent EVENT_BEAT_MASTER_LEON
    iffalse .Leon
    loadtrainer LEON, MASTER_LEON
    sjump .finish
.Leon1
    checkevent EVENT_BEAT_LEON
    iffalse .sample
    loadtrainer LEON, CHAMP_LEON
    sjump .finish

.Wallace
    checkevent EVENT_BEAT_MASTER_WALLACE
    iffalse .Wallace
    loadtrainer WALLACE, MASTER_WALLACE
    sjump .finish
.Wallace1
    checkevent EVENT_BEAT_WALLACE
    iffalse .sample
    loadtrainer WALLACE, FUHRER_WALLACE
    sjump .finish

.Patches
    checkevent EVENT_BEAT_MASTER_PATCHES
    iffalse .Patches
    loadtrainer INVADER, MASTER_PATCHES
    sjump .finish
.Patches1
    checkevent EVENT_BEAT_INVADER_PATCHES
    iffalse .sample
    loadtrainer INVADER, PATCHES
    sjump .finish

.Declined:
	writetext TrainerHouseB1FPleaseComeAgainText
	waitbutton
	closetext
	applymovement PLAYER, Movement_TrainerHouseTurnBack
	end

victoryText:
    text "Victory!"
    done

defeatText:
    text "Defeat!"
    done

Movement_EnterTrainerHouseBattleRoom:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	turn_head RIGHT
	step_end

Movement_ExitTrainerHouseBattleRoom:
	step UP
	step UP
	step UP
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

Movement_TrainerHouseTurnBack:
	step RIGHT
	turn_head LEFT
	step_end

TrainerHouseB1FIntroText:
	text "Hi. Welcome to our"
	line "TRAINING HALL."

	para "You may battle a"
	line "trainer once per"
	cont "day."
	done

TrainerHouseB1FYourOpponentIsText:
	text "Here you face"
	line "a random enemy"
	cont "you have beaten."
	done

TrainerHouseB1FAskWantToBattleText:
	text "Would you like to"
	line "battle?"
	done

TrainerHouseB1FGoRightInText:
	text "Please go right"
	line "through."

	para "You may begin"
	line "right away."
	done

TrainerHouseB1FPleaseComeAgainText:
	text "Sorry. Only those"
	line "trainers who will"

	para "be battling are"
	line "allowed to go in."
	done

TrainerHouseB1FSecondChallengeDeniedText:
	text "I'm sorry."
	line "This would be your"

	para "second time today."
	line "You're permitted"

	para "to enter just once"
	line "a day."
	done

TrainerHouseB1FCalBeatenText:
	text "I lost…"
	line "Darn…"
	done

TrainerHouseB1FCalBeforeText:
	text "I traveled out"
	line "here just so I"
	cont "could battle you."
	done

TrainerHouseB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  4, TRAINER_HOUSE_1F, 3

	def_coord_events
	coord_event  7,  3, SCENE_DEFAULT, TrainerHouseReceptionistScript

	def_bg_events

	def_object_events
	object_event  7,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	;object_event  6, 11, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
