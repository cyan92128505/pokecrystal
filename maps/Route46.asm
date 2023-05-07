	object_const_def
	const ROUTE46_POKEFAN_M
	const ROUTE46_YOUNGSTER
	const ROUTE46_LASS
	const ROUTE46_FRUIT_TREE1
	const ROUTE46_FRUIT_TREE2
	const ROUTE46_POKE_BALL
	const ROUTE46_FIELDMON_1

Route46_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .FieldMon

.FieldMon:
    appear ROUTE46_FIELDMON_1
    endcallback

;TrainerCamperTed:
;	trainer CAMPER, TED, EVENT_BEAT_CAMPER_TED, CamperTedSeenText, CamperTedBeatenText, 0, .Script

;.Script:
;	endifjustbattled
;	opentext
;	writetext CamperTedAfterBattleText
;	waitbutton
;	closetext
;	end

TrainerCamperTed:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CAMPER_TED
	iftrue .FightDone
	checkevent EVENT_BEAT_WHITNEY
	iffalse .Mercy
.fight
	writetext CamperTedSeenText
	waitbutton
	closetext
	winlosstext CamperTedBeatenText, 0
	loadtrainer CAMPER, TED
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CAMPER_TED
	end
.FightDone:
	writetext CamperTedAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextRoute46
	yesorno
	iftrue .fight
	writetext RematchRefuseTextRoute46
	waitbutton
	closetext
	end
.Mercy:
    writetext CamperTedMercyText
	waitbutton
	closetext
	end

CamperTedMercyText:
    text "I think you have"
    line "got a bit lost."

    para "My girlfriend and"
    line "I are strong"
    cont "trainers."

    para "I'm not going to"
    line "bully a new kid."

    para "Now please head"
    line "back and leave"
    cont "us alone."
    done

;TrainerPicnickerErin1:
;	trainer PICNICKER, ERIN1, EVENT_BEAT_PICNICKER_ERIN, PicnickerErin1SeenText, PicnickerErin1BeatenText, 0, .Script
;.Script:
;	loadvar VAR_CALLERID, PHONE_PICNICKER_ERIN
;	endifjustbattled
;	opentext
;	checkflag ENGINE_ERIN_READY_FOR_REMATCH
;	iftrue .WantsBattle
;	checkcellnum PHONE_PICNICKER_ERIN
;	iftrue Route46NumberAcceptedF
;	checkevent EVENT_ERIN_ASKED_FOR_PHONE_NUMBER
;	iftrue .AskedAlready
;	writetext PicnickerErinAfterBattleText
;	promptbutton
;	setevent EVENT_ERIN_ASKED_FOR_PHONE_NUMBER
;	scall Route46AskNumber1F
;	sjump .AskForNumber
;.AskedAlready:
;	scall Route46AskNumber2F
;.AskForNumber:
;	askforphonenumber PHONE_PICNICKER_ERIN
;	ifequal PHONE_CONTACTS_FULL, Route46PhoneFullF
;	ifequal PHONE_CONTACT_REFUSED, Route46NumberDeclinedF
;	gettrainername STRING_BUFFER_3, PICNICKER, ERIN1
;	scall Route46RegisteredNumberF
;	sjump Route46NumberAcceptedF
;.WantsBattle:
;	scall Route46RematchF
;	winlosstext PicnickerErin1BeatenText, 0
;	readmem wErinFightCount
;	ifequal 2, .Fight2
;	ifequal 1, .Fight1
;	ifequal 0, .LoadFight0
;.Fight2:
;	checkevent EVENT_RESTORED_POWER_TO_KANTO
;	iftrue .LoadFight2
;.Fight1:
;	checkevent EVENT_BEAT_ELITE_FOUR
;	iftrue .LoadFight1
;.LoadFight0:
;	loadtrainer PICNICKER, ERIN1
;	startbattle
;	reloadmapafterbattle
;	loadmem wErinFightCount, 1
;	clearflag ENGINE_ERIN_READY_FOR_REMATCH
;	end
;.LoadFight1:
;	loadtrainer PICNICKER, ERIN2
;	startbattle
;	reloadmapafterbattle
;	loadmem wErinFightCount, 2
;	clearflag ENGINE_ERIN_READY_FOR_REMATCH
;	end
;.LoadFight2:
;	loadtrainer PICNICKER, ERIN3
;	startbattle
;	reloadmapafterbattle
;	clearflag ENGINE_ERIN_READY_FOR_REMATCH
;	checkevent EVENT_ERIN_CALCIUM
;	iftrue .HasCalcium
;	checkevent EVENT_GOT_CALCIUM_FROM_ERIN
;	iftrue .GotCalciumAlready
;	scall Route46RematchGiftF
;	verbosegiveitem CALCIUM
;	iffalse ErinNoRoomForCalcium
;	setevent EVENT_GOT_CALCIUM_FROM_ERIN
;	sjump Route46NumberAcceptedF
;.GotCalciumAlready:
;	end
;.HasCalcium:
;	opentext
;	writetext PicnickerErin2BeatenText
;	waitbutton
;	verbosegiveitem CALCIUM
;	iffalse ErinNoRoomForCalcium
;	clearevent EVENT_ERIN_CALCIUM
;	setevent EVENT_GOT_CALCIUM_FROM_ERIN
;	sjump Route46NumberAcceptedF
;Route46AskNumber1F:
;	jumpstd AskNumber1FScript
;	end
;Route46AskNumber2F:
;	jumpstd AskNumber2FScript
;	end
;Route46RegisteredNumberF:
;	jumpstd RegisteredNumberFScript
;	end
;Route46NumberAcceptedF:
;	jumpstd NumberAcceptedFScript
;	end
;Route46NumberDeclinedF:
;	jumpstd NumberDeclinedFScript
;	end
;Route46PhoneFullF:
;	jumpstd PhoneFullFScript
;	end
;Route46RematchF:
;	jumpstd RematchFScript
;	end
;ErinNoRoomForCalcium:
;	setevent EVENT_ERIN_CALCIUM
;	jumpstd PackFullFScript
;	end
;Route46RematchGiftF:
;	jumpstd RematchGiftFScript
;	end

TrainerPicnickerErin1:
	faceplayer
	opentext
	checkevent EVENT_BEAT_PICNICKER_ERIN
	iftrue .FightDone
	checkevent EVENT_BEAT_WHITNEY
	iffalse .Mercy
.fight
	writetext PicnickerErin1SeenText
	waitbutton
	closetext
	winlosstext PicnickerErin1SeenText, 0
	loadtrainer PICNICKER, ERIN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_PICNICKER_ERIN
	end
.FightDone:
	writetext PicnickerErinAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextRoute46
	yesorno
	iftrue .fight
	writetext RematchRefuseTextRoute46
	waitbutton
	closetext
	end
.Mercy:
    writetext PicnickerErinMercyText
	waitbutton
	closetext
	end

PicnickerErinMercyText:
    text "My boyfriend and"
    line "I are hotshot"
    cont "trainers."

    para "We each have 7"
    line "badges but have"
    cont "not been able to"
    cont "beat CLAIR for"
    cont "the 8th badge."

    para "You are lucky"
    line "we are nice and"
    cont "wont crush you."

    para "Run along now."
    done

;TrainerHikerBailey:
;	trainer HIKER, BAILEY, EVENT_BEAT_HIKER_BAILEY, HikerBaileySeenText, HikerBaileyBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext HikerBaileyAfterBattleText
;	waitbutton
;	closetext
;	end

TrainerHikerBailey:
	faceplayer
	opentext
	checkevent EVENT_BEAT_HIKER_BAILEY
	iftrue .FightDone
	checkevent EVENT_BEAT_WHITNEY
	iffalse .Mercy
.fight
	writetext HikerBaileySeenText
	waitbutton
	closetext
	winlosstext HikerBaileyBeatenText, 0
	loadtrainer HIKER, BAILEY
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_HIKER_BAILEY
	end
.FightDone:
	writetext HikerBaileyAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextRoute46
	yesorno
	iftrue .fight
	writetext RematchRefuseTextRoute46
	waitbutton
	closetext
	end
.Mercy:
    writetext HikerBaileyMercyText
    yesorno
    iftrue .fight
	closetext
	end

HikerBaileyMercyText:
    text "I got close but"
    line "can't beat CLAIR!"

    para "Oh you should"
    line "not be here!"

    para "This cave is too"
    line "dangerous for"
    cont "you!"

    para "There are scary"
    line "#MON in there."

    para "Even if you get"
    line "through somehow."

    para "Other trainers"
    line "will crush you."

    para "Do you want me"
    line "to show you?"
    done

Route46Sign:
	jumptext Route46SignText

Route46Protein:
	itemball PROTEIN

Route46FruitTree1:
	fruittree FRUITTREE_ROUTE_46_1

Route46FruitTree2:
	fruittree FRUITTREE_ROUTE_46_2

HikerBaileySeenText:
	text "Awright! I'll show"
	line "you the power of"
	cont "mountain #MON!"
	done

HikerBaileyBeatenText:
	text "Mercy! You showed"
	line "me your power!"
	done

HikerBaileyAfterBattleText:
	text "It's over. I don't"
	line "mind. We HIKERS"
	cont "are like that."
	done

CamperTedSeenText:
	text "I'm raising #-"
	line "MON too!"

	para "Will you battle"
	line "with me?"
	done

CamperTedBeatenText:
	text "Wha…?"
	done

CamperTedAfterBattleText:
	text "I did my best but"
	line "came up short."

	para "No excuses--I"
	line "admit I lost."
	done

PicnickerErin1SeenText:
	text "I raise #MON"
	line "too!"

	para "Will you battle"
	line "with me?"
	done

PicnickerErin1BeatenText:
	text "Oh, rats!"
	done

PicnickerErinAfterBattleText:
	text "I've been to many"
	line "GYMS, but the GYM"

	para "in GOLDENROD is my"
	line "favorite."

	para "It's filled with"
	line "pretty flowers!"
	done

PicnickerErin2BeatenText:
	text "Aww… I keep losing"
	line "all the time!"

	para "I'll just have to"
	line "try harder!"

	para "Anyway, thanks for"
	line "battling me again"

	para "and again. Here's"
	line "that present from"
	cont "the other time."
	done

Route46SignText:
	text "ROUTE 46"
	line "MOUNTAIN RD. AHEAD"
	done

RematchTextRoute46:
    text "How about a"
    line "rematch?"
    done

RematchRefuseTextRoute46:
    text "Maybe next time."
    done

Route46FieldMon1Script:
	trainer URSARING, FIELD_MON, EVENT_FIELD_MON_1, Route46PokemonAttacksText, 31, 0, .script
.script
    disappear ROUTE46_FIELDMON_1
    end

Route46PokemonAttacksText:
	text "Wild #MON"
	line "attacks!"
	done

Route46_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 33, ROUTE_29_ROUTE_46_GATE, 1
	warp_event  8, 33, ROUTE_29_ROUTE_46_GATE, 2
	warp_event 14,  5, DARK_CAVE_VIOLET_ENTRANCE, 3

	def_coord_events

	def_bg_events
	bg_event  9, 27, BGEVENT_READ, Route46Sign

	def_object_events
	object_event 15,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 3, TrainerHikerBailey, -1
	object_event  2, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 2, TrainerCamperTed, -1
	object_event  1, 12, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 2, TrainerPicnickerErin1, -1
	object_event  7,  5, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route46FruitTree1, -1
	object_event  8,  6, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route46FruitTree2, -1
	object_event  1, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route46Protein, EVENT_ROUTE_46_PROTEIN
	object_event  7,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, Route46FieldMon1Script, EVENT_FIELD_MON_1
