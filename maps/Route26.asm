	object_const_def
	const ROUTE26_COOLTRAINER_M1
	const ROUTE26_COOLTRAINER_M2
	const ROUTE26_COOLTRAINER_F1
	const ROUTE26_COOLTRAINER_F2
	const ROUTE26_YOUNGSTER
	const ROUTE26_FISHER
	const ROUTE26_FRUIT_TREE
	;const ROUTE26_POKE_BALL
    const ROUTE26_FIELDMON_1
    const ROUTE26_FIELDMON_2
    const ROUTE26_FIELDMON_3
    const ROUTE26_FIELDMON_4
    const ROUTE26_FIELDMON_5
    const ROUTE26_FIELDMON_6
    const ROUTE26_FIELDMON_7
    const ROUTE26_FIELDMON_8
    const ROUTE26_CRYSTAL

Route26_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Route26FieldMon

.Route26FieldMon:
; Pokemon which always appear
    checkevent EVENT_BEAT_CRYSTAL_5
    iftrue .skipWeather
	setval WEATHER_NONE
	writemem wFieldWeather
.skipWeather
    disappear ROUTE26_CRYSTAL
    appear ROUTE26_FIELDMON_1
    appear ROUTE26_FIELDMON_3
    appear ROUTE26_FIELDMON_4
    appear ROUTE26_FIELDMON_5

; Pokemon that sometimes appear
    random 2
    ifequal 1, .spawn6
    disappear ROUTE26_FIELDMON_6
    sjump .mon7
.spawn6
    appear ROUTE26_FIELDMON_6

.mon7
    random 2
    ifequal 1, .spawn7
    disappear ROUTE26_FIELDMON_7
    sjump .mon8
.spawn7
    appear ROUTE26_FIELDMON_7

.mon8
    random 2 ; shiny
    ifequal 1, .spawn8
    disappear ROUTE26_FIELDMON_8
    sjump .checkNight
.spawn8
    appear ROUTE26_FIELDMON_8

.checkNight
; Pokemon that only appear at night
    checktime NITE
    iffalse .end

    random 2
    ifequal 1, .spawn2
    disappear ROUTE26_FIELDMON_2
    sjump .despawn
.spawn2
    appear ROUTE26_FIELDMON_2

.despawn
; Pokemon that don't appear at night
    disappear ROUTE26_FIELDMON_5

.end
    endcallback

TrainerCooltrainermJake:
	trainer COOLTRAINERM, JAKE, EVENT_BEAT_COOLTRAINERM_JAKE, CooltrainermJakeSeenText, CooltrainermJakeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermJakeAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermGaven3:
	trainer COOLTRAINERM, GAVEN3, EVENT_BEAT_COOLTRAINERM_GAVEN, CooltrainermGaven3SeenText, CooltrainermGaven3BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_COOLTRAINERM_GAVEN
	endifjustbattled
	opentext
	checkflag ENGINE_GAVEN_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_COOLTRAINERM_GAVEN
	iftrue .NumberAccepted
	checkevent EVENT_GAVEN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext CooltrainermGavenAfterText
	promptbutton
	setevent EVENT_GAVEN_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_COOLTRAINERM_GAVEN
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, COOLTRAINERM, GAVEN3
	scall .RegisteredNumber
	sjump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext CooltrainermGaven3BeatenText, 0
	readmem wGavenFightCount
	ifequal 2, .Fight2
	ifequal 1, .Fight1
	ifequal 0, .LoadFight0
.Fight2:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
.Fight1:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
.LoadFight0:
	loadtrainer COOLTRAINERM, GAVEN3
	startbattle
	reloadmapafterbattle
	loadmem wGavenFightCount, 1
	clearflag ENGINE_GAVEN_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer COOLTRAINERM, GAVEN1
	startbattle
	reloadmapafterbattle
	loadmem wGavenFightCount, 2
	clearflag ENGINE_GAVEN_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer COOLTRAINERM, GAVEN2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_GAVEN_READY_FOR_REMATCH
	end

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.Rematch:
	jumpstd RematchMScript
	end

TrainerCooltrainerfJoyce:
	trainer COOLTRAINERF, JOYCE, EVENT_BEAT_COOLTRAINERF_JOYCE, CooltrainerfJoyceSeenText, CooltrainerfJoyceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfJoyceAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfBeth1:
	trainer COOLTRAINERF, BETH1, EVENT_BEAT_COOLTRAINERF_BETH, CooltrainerfBeth1SeenText, CooltrainerfBeth1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_COOLTRAINERF_BETH
	endifjustbattled
	opentext
	checkflag ENGINE_BETH_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_COOLTRAINERF_BETH
	iftrue .NumberAccepted
	checkevent EVENT_BETH_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext CooltrainerfBethAfterText
	promptbutton
	setevent EVENT_BETH_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_COOLTRAINERF_BETH
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, COOLTRAINERF, BETH1
	scall .RegisteredNumber
	sjump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext CooltrainerfBeth1BeatenText, 0
	readmem wBethFightCount
	ifequal 2, .Fight2
	ifequal 1, .Fight1
	ifequal 0, .LoadFight0
.Fight2:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
.Fight1:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
.LoadFight0:
	loadtrainer COOLTRAINERF, BETH1
	startbattle
	reloadmapafterbattle
	loadmem wBethFightCount, 1
	clearflag ENGINE_BETH_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer COOLTRAINERF, BETH2
	startbattle
	reloadmapafterbattle
	loadmem wBethFightCount, 2
	clearflag ENGINE_BETH_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer COOLTRAINERF, BETH3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_BETH_READY_FOR_REMATCH
	end

.AskNumber1:
	jumpstd AskNumber1FScript
	end

.AskNumber2:
	jumpstd AskNumber2FScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberFScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedFScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedFScript
	end

.PhoneFull:
	jumpstd PhoneFullFScript
	end

.Rematch:
	jumpstd RematchFScript
	end

TrainerPsychicRichard:
	trainer PSYCHIC_T, RICHARD, EVENT_BEAT_PSYCHIC_RICHARD, PsychicRichardSeenText, PsychicRichardBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicRichardAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherScott:
	trainer FISHER, SCOTT, EVENT_BEAT_FISHER_SCOTT, FisherScottSeenText, FisherScottBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherScottAfterBattleText
	waitbutton
	closetext
	end

Route26Sign:
	jumptext Route26SignText

Route26FruitTree:
	fruittree FRUITTREE_ROUTE_26

Route26MaxElixer:
	itemball MAX_ELIXER

CooltrainermJakeSeenText:
	text "I'm making my"
	line "final preparations"

	para "for the #MON"
	line "LEAGUE."
	done

CooltrainermJakeBeatenText:
	text "I blew it!"
	done

CooltrainermJakeAfterBattleText:
	text "It's going to be"
	line "tough to win at"
	cont "the LEAGUE."

	para "I need to do some"
	line "more training."

	para "I hear that the"
	line "LEAGUE's ELITE"

	para "FOUR are tougher"
	line "than GYM LEADERS."
	done

CooltrainermGaven3SeenText:
	text "By experiencing"
	line "tough battles, you"
	cont "gain power."
	done

CooltrainermGaven3BeatenText:
	text "Gaah! Life is even"
	line "tougher!"
	done

CooltrainermGavenAfterText:
	text "To get to #MON"
	line "LEAGUE, you have"

	para "to get through"
	line "VICTORY ROAD."

	para "But VICTORY ROAD"
	line "is tough."

	para "Practically nobody"
	line "goes there!"
	done

CooltrainerfJoyceSeenText:
	text "Since you've come"
	line "this far, you must"
	cont "be good."

	para "I'm going to give"
	line "this battle every-"
	cont "thing I've got!"
	done

CooltrainerfJoyceBeatenText:
	text "No! I don't"
	line "believe this!"
	done

CooltrainerfJoyceAfterBattleText:
	text "I've defeated"
	line "eight GYM LEADERS,"

	para "so I was feeling"
	line "confident."

	para "I'll have to try"
	line "harder next time."
	done

CooltrainerfBeth1SeenText:
	text "I lost to a train-"
	line "er named <RIVAL>."

	para "He was really"
	line "strong, but…"

	para "It was as if he"
	line "absolutely had to"
	cont "win at any cost."

	para "I felt sorry for"
	line "his #MON."
	done

CooltrainerfBeth1BeatenText:
	text "#MON aren't"
	line "tools of war."
	done

CooltrainerfBethAfterText:
	text "#MON are in-"
	line "valuable, lifelong"
	cont "partners."
	done

PsychicRichardSeenText:
	text "Wow, look at all"
	line "those BADGES!"
	cont "I'm impressed."

	para "But you're not"
	line "satisfied by just"

	para "collecting them,"
	line "right?"
	done

PsychicRichardBeatenText:
	text "Good battle!"
	done

PsychicRichardAfterBattleText:
	text "People and #MON"
	line "grow from their"
	cont "experiences."

	para "Don't get lazy and"
	line "complacent."
	done

FisherScottSeenText:
	text "I'm feeling great"
	line "today!"

	para "I feel like I"
	line "could boot even"
	cont "the LEAGUE CHAMP!"
	done

FisherScottBeatenText:
	text "No! Not in this"
	line "battle!"
	done

FisherScottAfterBattleText:
	text "Just like in fish-"
	line "ing, it's all over"

	para "in #MON if you"
	line "give up."
	done

Route26SignText:
	text "ROUTE 26"

	para "#MON LEAGUE"
	line "RECEPTION GATE"
	done

Route26FieldMon1Script:
	trainer STARAPTOR, FIELD_MON, EVENT_FIELD_MON_1, Route26PokemonAttacksText, 55, 0, .script
.script
    disappear ROUTE26_FIELDMON_1
    end

Route26FieldMon2Script:
	trainer ARCANINE, FIELD_MON, EVENT_FIELD_MON_2, Route26PokemonAttacksText, 67, 0, .script
.script
    disappear ROUTE26_FIELDMON_2
    end

Route26PokemonAttacksText:
	text "Wild #MON"
	line "attacks!"
	done

Route26FieldMon3Script:
	faceplayer
	cry SKARMORY
	pause 15
	loadwildmon SKARMORY, 51
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_3
	disappear ROUTE26_FIELDMON_3
	end

Route26FieldMon4Script:
	faceplayer
	cry GALVANTULA
	pause 15
	loadwildmon GALVANTULA, 48
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_4
	disappear ROUTE26_FIELDMON_4
	end

Route26FieldMon5Script:
	faceplayer
	cry EXEGGUTOR
	pause 15
	loadwildmon EXEGGUTOR, 48
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_5
	disappear ROUTE26_FIELDMON_5
	end

Route26FieldMon6Script:
	faceplayer
	cry STARMIE
	pause 15
	loadwildmon STARMIE, 47
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_6
	disappear ROUTE26_FIELDMON_6
	end

Route26FieldMon7Script:
	faceplayer
	cry BLISSEY
	pause 15
	loadwildmon BLISSEY, 49
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_7
	disappear ROUTE26_FIELDMON_7
	end

Route26FieldMon8Script:
	faceplayer
	cry VOLCARONA
	pause 15
	loadwildmon VOLCARONA, 66
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_8
	disappear ROUTE26_FIELDMON_8
	end
	
Route26CrystalScript:
    checkevent EVENT_BEAT_CRYSTAL_5
    iftrue .end
    showemote EMOTE_SHOCK, PLAYER, 15
    turnobject PLAYER, DOWN
    playmusic MUSIC_CRYSTAL_ENCOUNTER
    appear ROUTE26_CRYSTAL
    applymovement ROUTE26_CRYSTAL, Route26Movement_CrystalApproaches

    opentext
    writetext Route26CrystalText_Intro
    waitbutton
    closetext

    special FadeOutMusic
    applymovement ROUTE26_CRYSTAL, Route26Movement_CrystalRight
    opentext
    writetext Route26CrystalText_Serious
    waitbutton
    closetext

    applymovement ROUTE26_CRYSTAL, Route26Movement_CrystalLeft
    playmusic MUSIC_INDIGO_PLATEAU
    opentext
    writetext Route26CrystalText_Battle
    waitbutton
    closetext

	winlosstext Crystal5LosesText, Crystal5WinsText
    loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer CRYSTAL, CRYSTAL_5
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CRYSTAL_5

    playmusic MUSIC_INDIGO_PLATEAU
	opentext
	writetext Route26CrystalText_KeepItUp
	waitbutton
	closetext
	turnobject ROUTE26_CRYSTAL, DOWN
	pause 10
	opentext
	writetext Route26CrystalText_IMeanIt
	waitbutton
	closetext
	applymovement ROUTE26_CRYSTAL, Route26Movement_CrystalLeaves
	disappear ROUTE26_CRYSTAL
.end
	end

Route26Movement_CrystalApproaches:
    big_step LEFT
    big_step LEFT
    big_step LEFT
    big_step LEFT
    big_step LEFT
    big_step LEFT
    big_step UP
    step_end

Route26CrystalText_Intro:
    text "You are going to"
    line "challenge the"
    cont "ELITE FOUR."

    para "The final test."

    para "If you win you"
    line "earn the title of"
    cont "CHAMPION."

    para "Then you will"
    line "have to head to"
    cont "KANTO to fight"
    cont "in the war..."
    done

Route26CrystalText_Serious:
    text "It seems so long"
    line "ago we were"
    cont "leaving NEW"
    cont "BARK together."

    para "I didn't think"
    line "it would get this"
    cont "far."

    para "Now that we are"
    line "here."

    para "I don't want to"
    line "go on."

    para "I don't want to"
    line "be on the front"
    cont "line against"
    cont "the HOEN army."

    para "I want us to"
    line "just have fun"
    cont "forever."

    para "But that can't"
    line "happen"
    done

Route26CrystalText_Battle:
    text "I guess we are"
    line "part of the big"
    cont "bad world now."

    para "You know what"
    line "we have to do."
    done

Crystal5LosesText:
    text "You win."
    done

Crystal5WinsText:
    text "Can we just"
    line "go home."
    done

Route26CrystalText_KeepItUp:
    text "Well it seems"
    line "you have won our"
    cont "race."

    para "I can't believe"
    line "how strong you"
    cont "have become."

    para "If anyone can"
    line "win the war. You"
    cont "can."

    para "And I'll be right"
    line "there with you!"

    para "I'm not letting"
    line "you go alone."

    para "But I need more"
    line "training first."

    para "Now you march in"
    line "there and wipe"
    cont "the floor with"
    cont "the ELITE FOUR."

    para "Good luck"
    line "<PLAYER>."
    done

Route26CrystalText_IMeanIt:
    text "I really mean"
    line "that."
    done

Route26Movement_CrystalLeaves:
    step DOWN
    step RIGHT
    step RIGHT
    step RIGHT
    step RIGHT
    step RIGHT
    step RIGHT
    step_end

Route26Movement_CrystalRight:
    slow_step RIGHT
    step_end

Route26Movement_CrystalLeft:
    slow_step LEFT
    turn_head UP
    step_end

Route26_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  5, VICTORY_ROAD_GATE, 3
	warp_event 15, 57, ROUTE_26_HEAL_HOUSE, 1
	warp_event  5, 71, DAY_OF_WEEK_SIBLINGS_HOUSE, 1

	def_coord_events
	coord_event 7,  6, SCENE_ALWAYS, Route26CrystalScript

	def_bg_events
	bg_event  8,  6, BGEVENT_READ, Route26Sign

	def_object_events
	object_event 14, 24, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainermJake, -1
	object_event  9, 38, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermGaven3, -1
	object_event 10, 56, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfJoyce, -1
	object_event  5,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerCooltrainerfBeth1, -1
	object_event 13, 79, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPsychicRichard, -1
	object_event 10, 92, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerFisherScott, -1
	object_event 14, 54, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route26FruitTree, -1
	;object_event  9, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route26MaxElixer, EVENT_ROUTE_26_MAX_ELIXER

	object_event  8, 51, SPRITE_BIRD, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, Route26FieldMon1Script, EVENT_FIELD_MON_1
	object_event 15, 18, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, NITE, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, Route26FieldMon2Script, EVENT_FIELD_MON_2
	object_event  6, 26, SPRITE_BIRD, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route26FieldMon3Script, EVENT_FIELD_MON_3
	object_event 15, 67, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route26FieldMon4Script, EVENT_FIELD_MON_4
	object_event  3, 95, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, DAY, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route26FieldMon5Script, EVENT_FIELD_MON_5
	object_event  9, 101, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route26FieldMon6Script, EVENT_FIELD_MON_6
	object_event  7, 68, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route26FieldMon7Script, EVENT_FIELD_MON_7
	object_event 13, 11, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route26FieldMon8Script, EVENT_FIELD_MON_8

	object_event 13,  8, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMP_EVENT_1

	