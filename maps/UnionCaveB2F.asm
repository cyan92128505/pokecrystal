	object_const_def
	const UNIONCAVEB2F_ROCKER
	const UNIONCAVEB2F_COOLTRAINER_F1
	const UNIONCAVEB2F_COOLTRAINER_F2
	const UNIONCAVEB2F_POKE_BALL1
	const UNIONCAVEB2F_POKE_BALL2
	const UNIONCAVEB2F_LAPRAS
	const UNIONCAVEB2F_FIELDMON_1
	const UNIONCAVEB2F_FIELDMON_2
	const UNIONCAVEB2F_FIELDMON_3
	const UNIONCAVEB2F_FIELDMON_4

UnionCaveB2F_MapScripts:
	def_scene_scripts

	def_callbacks
    callback MAPCALLBACK_OBJECTS, .UnionCaveB2FFieldMon
	callback MAPCALLBACK_OBJECTS, .Lapras

.Lapras:
	checkflag ENGINE_UNION_CAVE_LAPRAS
	iftrue .NoAppear
	readvar VAR_WEEKDAY
	ifequal FRIDAY, .Appear
.NoAppear:
	disappear UNIONCAVEB2F_LAPRAS
	endcallback

.Appear:
	appear UNIONCAVEB2F_LAPRAS
	endcallback
	
.UnionCaveB2FFieldMon:
    appear UNIONCAVEB2F_FIELDMON_4
    appear UNIONCAVEB2F_FIELDMON_2
    appear UNIONCAVEB2F_FIELDMON_3

    random 3
    ifequal 1, .spawn
    disappear UNIONCAVEB2F_FIELDMON_1
    sjump .end
.spawn
    appear UNIONCAVEB2F_FIELDMON_1
.end
    endcallback

UnionCaveLapras:
	faceplayer
	cry LAPRAS
	loadwildmon LAPRAS, 20
	startbattle
	disappear UNIONCAVEB2F_LAPRAS
	setflag ENGINE_UNION_CAVE_LAPRAS
	reloadmapafterbattle
	end

TrainerCooltrainermNick:
	trainer COOLTRAINERM, NICK, EVENT_BEAT_COOLTRAINERM_NICK, CooltrainermNickSeenText, CooltrainermNickBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermNickAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfGwen:
	trainer COOLTRAINERF, GWEN, EVENT_BEAT_COOLTRAINERF_GWEN, CooltrainerfGwenSeenText, CooltrainerfGwenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfGwenAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfEmma:
	trainer COOLTRAINERF, EMMA, EVENT_BEAT_COOLTRAINERF_EMMA, CooltrainerfEmmaSeenText, CooltrainerfEmmaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfEmmaAfterBattleText
	waitbutton
	closetext
	end

UnionCaveB2FElixer:
	itemball ELIXER

UnionCaveB2FHyperPotion:
	itemball HYPER_POTION

CooltrainermNickSeenText:
	text "There are two"
	line "kinds of people."

	para "Those who have"
	line "style, and those"
	cont "who don't."

	para "What kind of"
	line "person are you?"
	done

CooltrainermNickBeatenText:
	text "You've got"
	line "dazzling style!"
	done

CooltrainermNickAfterBattleText:
	text "Your #MON style"
	line "is stunning and"
	cont "colorful, I admit."

	para "You'll just keep"
	line "getting better!"
	done

CooltrainerfGwenSeenText:
	text "I'm in training."
	line "Care for a round?"
	done

CooltrainerfGwenBeatenText:
	text "Aww, no! You're"
	line "too good for me."
	done

CooltrainerfGwenAfterBattleText:
	text "I'm going to train"
	line "by myself until I"
	cont "improve."
	done

CooltrainerfEmmaSeenText:
	text "If the #MON I"
	line "liked were there,"
	cont "I'd go anywhere."

	para "That's what a real"
	line "trainer does."
	done

CooltrainerfEmmaBeatenText:
	text "I'd rather pet my"
	line "babies than this!"
	done

CooltrainerfEmmaAfterBattleText:
	text "Just once a week,"
	line "a #MON comes to"
	cont "the water's edge."

	para "I wanted to see"
	line "that #MON…"
	done
	
UnionCaveB2FFieldMon1Script:
	trainer MILOTIC, FIELD_MON, EVENT_FIELD_MON_1, UnionCaveB2FPokemonAttacksText, 53, 0, .script
.script
    disappear UNIONCAVEB2F_FIELDMON_1
    end
    
UnionCaveB2FFieldMon2Script:
	trainer GYARADOS, FIELD_MON, EVENT_FIELD_MON_2, UnionCaveB2FPokemonAttacksText, 41, 0, .script
.script
    disappear UNIONCAVEB2F_FIELDMON_2
    end
    
UnionCaveB2FPokemonAttacksText:
	text "Wild #MON"
	line "attacks!"
	done
	
UnionCaveB2FFieldMon3Script:
	faceplayer
	cry GABITE
	pause 15
	loadwildmon GABITE, 32
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_3
	disappear UNIONCAVEB2F_FIELDMON_3
    end
	
UnionCaveB2FFieldMon4Script:
	faceplayer
	cry GIBLE
	pause 15
	loadwildmon STEELIX, 42
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_4
	disappear UNIONCAVEB2F_FIELDMON_4
    end

UnionCaveB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  3, UNION_CAVE_B1F, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event 15, 19, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermNick, -1
	object_event  5, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerfGwen, -1
	object_event  3, 30, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfEmma, -1
	object_event 16,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCaveB2FElixer, EVENT_UNION_CAVE_B2F_ELIXER
	object_event 12, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCaveB2FHyperPotion, EVENT_UNION_CAVE_B2F_HYPER_POTION
	object_event 11, 31, SPRITE_SURF, SPRITEMOVEDATA_SWIM_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, UnionCaveLapras, EVENT_UNION_CAVE_B2F_LAPRAS
	
	object_event 15, 29, SPRITE_SURF, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 3, UnionCaveB2FFieldMon1Script, EVENT_FIELD_MON_1
   	object_event  9, 32, SPRITE_SURF, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 3, UnionCaveB2FFieldMon2Script, EVENT_FIELD_MON_2
   	object_event  8, 4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, UnionCaveB2FFieldMon3Script, EVENT_FIELD_MON_3
   	object_event  2, 26, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, UnionCaveB2FFieldMon4Script, EVENT_FIELD_MON_4
