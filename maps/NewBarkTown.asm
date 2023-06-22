	object_const_def
	const NEWBARKTOWN_TEACHER
	const NEWBARKTOWN_FISHER
	const NEWBARKTOWN_SILVER
	const NEWBARKTOWN_FIELDMON_4
	const NEWBARKTOWN_FIELDMON_5
	const NEWBARKTOWN_FIELDMON_6
	const NEWBARKTOWN_REPEL_WOMAN
	const NEWBARKTOWN_CRYSTAL
	const NEWBARKTOWN_SILVER_FINAL
	const NEWBARKTOWN_CRYSTAL_FINAL

NewBarkTown_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	callback MAPCALLBACK_OBJECTS, .SilverAndCrystal

.DummyScene0:
	end

.DummyScene1:
	end

.SilverAndCrystal
    disappear NEWBARKTOWN_CRYSTAL
    disappear NEWBARKTOWN_CRYSTAL_FINAL
    disappear NEWBARKTOWN_SILVER_FINAL

    checkevent EVENT_BEAT_CRYSTAL_7
    iffalse .end
    appear NEWBARKTOWN_CRYSTAL_FINAL
    appear NEWBARKTOWN_SILVER_FINAL
.end
    endcallback

.FlyPoint:
    appear NEWBARKTOWN_FIELDMON_4
    appear NEWBARKTOWN_FIELDMON_5
    appear NEWBARKTOWN_FIELDMON_6
	setflag ENGINE_FLYPOINT_NEW_BARK
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
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

;NewBarkFieldMon2Script:
;	trainer PERSIAN, FIELD_MON, EVENT_FIELD_MON_2, PokemonAttacksText, 21, 0, .script
;.script
;    disappear NEWBARKTOWN_FIELDMON_2
;    end


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
	checkitem REPULSOR
	iftrue .GotRepulsor
	writetext NewBarkTownRepulsorText
	promptbutton
	verbosegiveitem REPULSOR
	promptbutton
.GotRepulsor:
	writetext NewBarkTownGotRepelsText
	waitbutton
	closetext
	end

NewBarkTownRepulsorText:
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

CrystalScript1:
    checkevent EVENT_BEAT_CRYSTAL_1
    iftrue .end
    checkevent EVENT_GOT_A_POKEMON_FROM_ELM
    iffalse .end
    showemote EMOTE_SHOCK, PLAYER, 15
    applymovement PLAYER, NewBarkTownMovement_PlayerRight
    sjump CrystalScript
.end
    end

CrystalScript2:
    checkevent EVENT_BEAT_CRYSTAL_1
    iftrue .end
    checkevent EVENT_GOT_A_POKEMON_FROM_ELM
    iffalse .end
    showemote EMOTE_SHOCK, PLAYER, 15
    applymovement PLAYER, NewBarkTownMovement_PlayerUpAndRight
    sjump CrystalScript
.end
    end

CrystalScript:
    playmusic MUSIC_CRYSTAL_ENCOUNTER
    opentext
    writetext Crystal1_WaitUpText
    waitbutton
    closetext
    turnobject PLAYER, RIGHT
    appear NEWBARKTOWN_CRYSTAL
    applymovement NEWBARKTOWN_CRYSTAL, NewBarkTownMovement_CrystalApproaches
    opentext
    writetext Crystal1_ChallengeText
    waitbutton
    closetext

	winlosstext Crystal1LosesText, Crystal1WinsText
    loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	loadtrainer CRYSTAL, CRYSTAL_1
	startbattle
	setevent EVENT_BEAT_CRYSTAL_1
	reloadmap

	opentext
	writetext Crystal1_WellDoneText
	waitbutton
	closetext
	special FadeOutMusic
	turnobject NEWBARKTOWN_CRYSTAL, DOWN
	pause 20
	opentext
	writetext Crystal1_SorryText
	waitbutton
	playmusic MUSIC_NEW_BARK_TOWN
	turnobject NEWBARKTOWN_CRYSTAL, LEFT
	writetext Crystal1_GoodLuckText
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	applymovement NEWBARKTOWN_CRYSTAL, NewBarkTownMovement_CrystalLeaves
	disappear NEWBARKTOWN_CRYSTAL
.end
    end

NewBarkTownMovement_PlayerRight:
    step RIGHT
    step_end

NewBarkTownMovement_PlayerUpAndRight:
    step UP
    step RIGHT
    step_end

Crystal1_WaitUpText:
    text "Hey!"

    para "Wait up."
    done

NewBarkTownMovement_CrystalApproaches:
    big_step LEFT
    big_step LEFT
    big_step LEFT
    big_step UP
    big_step LEFT
    step_end

Crystal1_ChallengeText:
    text "You just got a"
    line "#MON!"

    para "I recently got"
    line "my first #MON"
    cont "too."

    para "My dad gave it"
    line "to me."

    para "Well you know what"
    line "we have to do now."

    para "Let's battle?"
    done

Crystal1LosesText:
    text "Aww you did"
    line "well RIOLU."
    done

Crystal1WinsText:
    text "You did really"
    line "well."
    done

Crystal1_WellDoneText:
    text "That was fun!"

    para "Now we have to"
    line "beat all GYM"
    cont "LEADERS."

    para "Beat all the ELITE"
    line "FOUR and CHAMPION."

    para "Crush the HOEN"
    line "army and save all"
    cont "JOHTO and KANTO!"

    para "Race you!"
    done

Crystal1_SorryText:
    text "I'm sorry."

    para "I didn't mean to"
    line "be flippant."

    para "I know you dad is"
    line "missing."

    para "War is no joke."
    done

Crystal1_GoodLuckText:
    text "I hope you find"
    line "him."

    para "I'm sure I'll see"
    line "you along the way."

    para "I'm serious about"
    line "that race though!"

    para "Good luck!"
    done

NewBarkTownMovement_CrystalLeaves:
    big_step DOWN
    big_step LEFT
    big_step LEFT
    big_step LEFT
    big_step LEFT
    big_step LEFT
    step_end

FinalSilverScript:
    opentext
	writetext SilverFinalGeneralText
	waitbutton
    closetext
	opentext
	writetext RematchTextSilverFinal
	yesorno
	iftrue .fight
	writetext RematchRefuseTextSilverFinal
	waitbutton
	closetext
	end
.fight
	writetext SilverFinalPreBattleText
	waitbutton
	closetext
	winlosstext SilverFinalLossText, SilverFinalWinText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer RIVAL2, RIVAL2_SILVER_CAVE
	startbattle
	reloadmapafterbattle
	special HealParty
	opentext
	writetext SilverFinalAfterBattleText
	waitbutton
	closetext
	end

FinalCrystalScript:
    opentext
	writetext CrystalFinalGeneralText
	waitbutton
    closetext
	opentext
	writetext RematchTextCrystalFinal
	yesorno
	iftrue .fight
	writetext RematchRefuseTextCrystalFinal
	waitbutton
	closetext
	end
.fight
	writetext CrystalFinalPreBattleText
	waitbutton
	closetext
	winlosstext CrystalFinalLossText, CrystalFinalWinText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer CRYSTAL, CRYSTAL_7
	startbattle
	reloadmapafterbattle
	special HealParty
	opentext
	writetext CrystalFinalAfterBattleText
	waitbutton
	closetext
	end

SilverFinalGeneralText:
    text "This place is"
    line "peaceful."

    para "The rest of the"
    line "world is frantic"
    cont "and busy."

    para "Like I used to"
    line "be."

    para "I'm glad CRYSTAL"
    line "insisted I come"
    cont "here and stay a"
    cont "while."

    para "I'm happier than"
    line "I can remember"
    cont "being before."
    done

RematchTextSilverFinal:
    text "However I don't"
    line "want you becoming"
    cont "too complacent."

    para "How about another"
    line "battle?"
    done

RematchRefuseTextSilverFinal:
    text "I guess we both"
    line "know how it would"
    cont "go."
    done

SilverFinalPreBattleText:
    text "Don't you dare"
    line "hold back!"
    done

SilverFinalLossText:
    text "Some things never"
    line "change."
    done

SilverFinalWinText:
    text "You let me win!"
    done

SilverFinalAfterBattleText:
    text "I don't even care"
    line "that I will never"
    cont "beat you."

    para "I am happy with"
    line "who I am and"
    cont "what I have"
    cont "achieved."

    para "Losing to CRYSTAL"
    line "however..."

    para "That would be"
    line "different."
    done

CrystalFinalGeneralText:
    text "Hey <PLAYER>."

    para "It's really good"
    line "to see you again."

    para "I think I've had"
    line "enough"
    cont "adventuring."

    para "I'm happy here"
    line "with my family."

    para "Though I miss"
    line "not seeing our"
    cont "local hero more"
    cont "often!"
    done

RematchTextCrystalFinal:
    text "I can get a"
    line "little boring"
    cont "sometimes though."

    para "I can battle"
    line "<RIVAL> and it's"
    cont "fun but I'd like"
    cont "to battle you."

    para "How about it?"
    done

RematchRefuseTextCrystalFinal:
    text "Ah I see."

    para "You don't want"
    line "to embarrass me."

    para "How gallant of"
    line "you."
    done

CrystalFinalPreBattleText:
    text "Let's have some"
    line "fun!"
    done

CrystalFinalLossText:
    text "What a surprising"
    line "conclusion!"

    para "That was fun!"
    done

CrystalFinalWinText:
    text "You don't have"
    line "let me win."
    done

CrystalFinalAfterBattleText:
    text "You know I am"
    line "still amazed at"
    cont "the adventure we"
    cont "had."

    para "You are the hero"
    line "who saved me and"
    cont "all of us."

    para "But you're also"
    line "my friend."

    para "And I miss you."

    para "Now get out"
    line "there and keep"
    cont "changing the"
    cont "world!"
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
	coord_event  1, 20, SCENE_ALWAYS, CrystalScript1
	coord_event  1, 21, SCENE_ALWAYS, CrystalScript2


	def_bg_events
	bg_event  8, 20, BGEVENT_READ, NewBarkTownSign
	bg_event 11, 17, BGEVENT_READ, NewBarkTownPlayersHouseSign
	bg_event  3, 15, BGEVENT_READ, NewBarkTownElmsLabSign
	bg_event  9, 25, BGEVENT_READ, NewBarkTownElmsHouseSign

	def_object_events
	object_event  6, 20, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NewBarkTownTeacherScript, -1
	object_event 10, 20, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NewBarkTownFisherScript, -1
	object_event  3, 14, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownSilverScript, EVENT_RIVAL_NEW_BARK_TOWN
	object_event 12,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NewBarkFieldMon4Script, EVENT_FIELD_MON_4
	object_event 7,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NewBarkFieldMon5Script, EVENT_FIELD_MON_5
	object_event 13,  4, SPRITE_BIRD, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, NewBarkFieldMon6Script, EVENT_FIELD_MON_6
	object_event 10,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownRepelScript, -1
	object_event  7, 21, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMP_EVENT_1

	object_event 16, 20, SPRITE_SILVER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FinalSilverScript, EVENT_TEMP_EVENT_2
	object_event 14, 22, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FinalCrystalScript, EVENT_TEMP_EVENT_3

