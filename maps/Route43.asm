	object_const_def
	const ROUTE43_SUPER_NERD1
	const ROUTE43_SUPER_NERD2
	const ROUTE43_INVADER_PATCHES
	const ROUTE43_FISHER
	const ROUTE43_LASS
	const ROUTE43_YOUNGSTER
	const ROUTE43_FRUIT_TREE
	const ROUTE43_POKE_BALL
	const ROUTE43_FIELDMON_1
    const ROUTE43_FIELDMON_2
    const ROUTE43_FIELDMON_3
    const ROUTE43_FIELDMON_4
    const ROUTE43_FIELDMON_5
    const ROUTE43_FIELDMON_6
    const ROUTE43_FIELDMON_7
    const ROUTE43_FIELDMON_8

Route43_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .CheckIfRockets
	callback MAPCALLBACK_OBJECTS, .WeatherAndFieldMon

.WeatherAndFieldMon:
	setval WEATHER_RAIN
	writemem wFieldWeather

    appear ROUTE43_FIELDMON_1
    appear ROUTE43_FIELDMON_3
    appear ROUTE43_FIELDMON_4
    appear ROUTE43_FIELDMON_5
    appear ROUTE43_FIELDMON_6

; Pokemon that sometimes appear
    random 2
    ifequal 1, .spawn7
    disappear ROUTE43_FIELDMON_7
    sjump .mon8
.spawn7
    appear ROUTE43_FIELDMON_7

.mon8
    random 8 ; shiny
    ifequal 1, .spawn8
    disappear ROUTE43_FIELDMON_8
    sjump .checkNight
.spawn8
    appear ROUTE43_FIELDMON_8

.checkNight
; Pokemon that only appear at night
    checktime NITE
    iffalse .end

    appear ROUTE43_FIELDMON_2

; Pokemon that don't appear at night
    disappear ROUTE43_FIELDMON_7

.end
    endcallback

.CheckIfRockets:
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .NoRockets
	setmapscene ROUTE_43_GATE, SCENE_DEFAULT
	endcallback

.NoRockets:
	setmapscene ROUTE_43_GATE, SCENE_FINISHED
	endcallback

TrainerCamperSpencer:
	trainer CAMPER, SPENCER, EVENT_BEAT_CAMPER_SPENCER, CamperSpencerSeenText, CamperSpencerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperSpencerAfterBattleText
	waitbutton
	closetext
	end

TrainerPokemaniacBen:
	trainer POKEMANIAC, BEN, EVENT_BEAT_POKEMANIAC_BEN, PokemaniacBenSeenText, PokemaniacBenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacBenAfterBattleText
	waitbutton
	closetext
	end

TrainerPokemaniacBrent:
	trainer POKEMANIAC, BRENT1, EVENT_BEAT_POKEMANIAC_BRENT, PokemaniacBrentSeenText, PokemaniacBrentBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_POKEMANIAC_BRENT
	endifjustbattled
	opentext
	checkflag ENGINE_BRENT_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_POKEMANIAC_BRENT
	iftrue .NumberAccepted
	checkevent EVENT_BRENT_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext PokemaniacBrentAfterBattleText
	promptbutton
	setevent EVENT_BRENT_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_POKEMANIAC_BRENT
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, POKEMANIAC, BRENT1
	scall .RegisteredNumber
	sjump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext PokemaniacBrentBeatenText, 0
	readmem wBrentFightCount
	ifequal 3, .Fight3
	ifequal 2, .Fight2
	ifequal 1, .Fight1
	ifequal 0, .LoadFight0
.Fight3:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight3
.Fight2:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight2
.Fight1:
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .LoadFight1
.LoadFight0:
	loadtrainer POKEMANIAC, BRENT1
	startbattle
	reloadmapafterbattle
	loadmem wBrentFightCount, 1
	clearflag ENGINE_BRENT_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer POKEMANIAC, BRENT2
	startbattle
	reloadmapafterbattle
	loadmem wBrentFightCount, 2
	clearflag ENGINE_BRENT_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer POKEMANIAC, BRENT3
	startbattle
	reloadmapafterbattle
	loadmem wBrentFightCount, 3
	clearflag ENGINE_BRENT_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer POKEMANIAC, BRENT4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_BRENT_READY_FOR_REMATCH
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

InvaderPatchesScript:
	trainer INVADER, PATCHES, EVENT_BEAT_INVADER_PATCHES, InvaderPatchesSeenText, InvaderPatchesBeatenText, InvaderPatchesVictoryText, .Script

.Script:
	endifjustbattled
	opentext
	writetext InvaderPatchesAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherMarvin:
	trainer FISHER, MARVIN, EVENT_BEAT_FISHER_MARVIN, FisherMarvinSeenText, FisherMarvinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherMarvinAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerTiffany:
	trainer PICNICKER, TIFFANY3, EVENT_BEAT_PICNICKER_TIFFANY, PicnickerTiffanySeenText, PicnickerTiffanyBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_PICNICKER_TIFFANY
	endifjustbattled
	opentext
	checkflag ENGINE_TIFFANY_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkflag ENGINE_TIFFANY_HAS_PINK_BOW
	iftrue .HasPinkBow
	checkcellnum PHONE_PICNICKER_TIFFANY
	iftrue .NumberAccepted
	checkpoke CLEFAIRY
	iffalse .NoClefairy
	checkevent EVENT_TIFFANY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext PicnickerTiffanyWantsPicnicText
	promptbutton
	setevent EVENT_TIFFANY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_PICNICKER_TIFFANY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, PICNICKER, TIFFANY3
	scall .RegisteredNumber
	sjump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext PicnickerTiffanyBeatenText, 0
	readmem wTiffanyFightCount
	ifequal 3, .Fight3
	ifequal 2, .Fight2
	ifequal 1, .Fight1
	ifequal 0, .LoadFight0
.Fight3:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight3
.Fight2:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight2
.Fight1:
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight1
.LoadFight0:
	loadtrainer PICNICKER, TIFFANY3
	startbattle
	reloadmapafterbattle
	loadmem wTiffanyFightCount, 1
	clearflag ENGINE_TIFFANY_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer PICNICKER, TIFFANY1
	startbattle
	reloadmapafterbattle
	loadmem wTiffanyFightCount, 2
	clearflag ENGINE_TIFFANY_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer PICNICKER, TIFFANY2
	startbattle
	reloadmapafterbattle
	loadmem wTiffanyFightCount, 3
	clearflag ENGINE_TIFFANY_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer PICNICKER, TIFFANY4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_TIFFANY_READY_FOR_REMATCH
	end

.HasPinkBow:
	scall .Gift
	verbosegiveitem PINK_BOW
	iffalse .NoRoom
	clearflag ENGINE_TIFFANY_HAS_PINK_BOW
	setevent EVENT_TIFFANY_GAVE_PINK_BOW
	sjump .NumberAccepted

.NoRoom:
	sjump .PackFull

.NoClefairy:
	writetext PicnickerTiffanyClefairyText
	waitbutton
	closetext
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

.Gift:
	jumpstd GiftFScript
	end

.PackFull:
	jumpstd PackFullFScript
	end

Route43Sign1:
	jumptext Route43Sign1Text

Route43Sign2:
	jumptext Route43Sign2Text

Route43TrainerTips:
	jumptext Route43TrainerTipsText

Route43FruitTree:
	fruittree FRUITTREE_ROUTE_43

Route43MaxEther:
	itemball MAX_ETHER

PokemaniacBenSeenText:
	text "I love #MON!"

	para "That's why I"
	line "started--and why"

	para "I'll keep on col-"
	line "lecting #MON!"
	done

PokemaniacBenBeatenText:
	text "How could you do"
	line "this to me?"
	done

PokemaniacBenAfterBattleText:
	text "What else do I"
	line "like besides"
	cont "#MON?"

	para "MARY on the radio."
	line "I bet she's cute!"
	done

PokemaniacBrentSeenText:
	text "Hey! Do you have"
	line "any rare #MON?"
	done

PokemaniacBrentBeatenText:
	text "Oh, my poor #-"
	line "MON! Darlings!"
	done

PokemaniacBrentAfterBattleText:
	text "I'd be happy just"
	line "to own a single"
	cont "rare #MON."
	done

InvaderPatchesSeenText:
	text "Good day!"
	line "You look"
	cont "reasonably sane."

	para "You must be"
	line "looking for"
	cont "treasure!"

	para "The is a rare"
	line "treasure just"
	cont "ahead."

	para "But that's"
	line "nothing."

	para "I've been to"
	line "the core of this"
	cont "world."

	para "A horrible place"
	line "of pure logic."

	para "There I found a"
	line "a treasure hidden"
	cont "away by the maker."

	para "Have a look."

	para "It'll shimmer"
	line "you blind!"
	done

InvaderPatchesBeatenText:
	text "Curses..."
	line "I'm finished.."
	cont "What did I ever.."
	done

InvaderPatchesVictoryText:
	text "Hey, don't blame"
	line "me, old darling."
	done

InvaderPatchesAfterBattleText:
	text "I did you wrong."

	para "But, I didn't"
	line "mean it!"

	para "Please forgive"
	line "me?"

	para "You and me, we're"
	line "jolly adventurers"
	cont "aren't we?"
	done

FisherMarvinSeenText:
	text "I'm in a slump."

	para "Maybe it's the"
	line "gear I'm using."

	para "Let's battle for a"
	line "change of pace!"
	done

FisherMarvinBeatenText:
	text "I lost, but I feel"
	line "better anyway."
	done

FisherMarvinAfterBattleText:
	text "KURT's LURE BALL"
	line "is the best for"

	para "catching hooked"
	line "#MON."

	para "It's much more"
	line "effective than a"
	cont "ULTRA BALL."
	done

CamperSpencerSeenText:
	text "I can do so much"
	line "with my #MON--"
	cont "it's super-fun!"
	done

CamperSpencerBeatenText:
	text "Losing isn't fun"
	line "at all…"
	done

CamperSpencerAfterBattleText:
	text "What is going on"
	line "at LAKE OF RAGE?"

	para "We were planning"
	line "to camp there."
	done

PicnickerTiffanySeenText:
	text "Are you going to"
	line "LAKE OF RAGE too?"

	para "Let's play for a "
	line "little while!"
	done

PicnickerTiffanyBeatenText:
	text "I played too much!"
	done

PicnickerTiffanyWantsPicnicText:
	text "I'm having a pic-"
	line "nic with #MON."

	para "Won't you join us?"
	done

PicnickerTiffanyClefairyText:
	text "Isn't my CLEFAIRY"
	line "just the most"
	cont "adorable thing?"
	done

Route43Sign1Text:
	text "ROUTE 43"

	para "LAKE OF RAGE -"
	line "MAHOGANY TOWN"
	done

Route43Sign2Text:
	text "ROUTE 43"

	para "LAKE OF RAGE -"
	line "MAHOGANY TOWN"
	done

Route43TrainerTipsText:
	text "TRAINER TIPS"

	para "All #MON have"
	line "pros and cons"

	para "depending on their"
	line "types."

	para "If their types"
	line "differ, a higher-"

	para "level #MON may"
	line "lose in battle."

	para "Learn which types"
	line "are strong and"

	para "weak against your"
	line "#MON's type."
	done

Route43FieldMon1Script:
	trainer STARAPTOR, FIELD_MON, EVENT_FIELD_MON_1, Route43PokemonAttacksText, 53, 0, .script
.script
    disappear ROUTE43_FIELDMON_1
    end

Route43FieldMon2Script:
	trainer HONCHKROW, FIELD_MON, EVENT_FIELD_MON_2, Route43PokemonAttacksText, 51, 0, .script
.script
    disappear ROUTE43_FIELDMON_2
    end

Route43PokemonAttacksText:
	text "Wild #MON"
	line "attacks!"
	done

Route43FieldMon3Script:
	faceplayer
	cry GOLDUCK
	pause 15
	loadwildmon GOLDUCK, 31
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_3
	disappear ROUTE43_FIELDMON_3
	end

Route43FieldMon4Script:
	faceplayer
	cry AMPHAROS
	pause 15
	loadwildmon AMPHAROS, 32
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_4
	disappear ROUTE43_FIELDMON_4
	end

Route43FieldMon5Script:
	faceplayer
	cry QUAGSIRE
	pause 15
	loadwildmon QUAGSIRE, 33
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_5
	disappear ROUTE43_FIELDMON_5
	end

Route43FieldMon6Script:
	faceplayer
	cry POLITOED
	pause 15
	loadwildmon POLITOED, 32
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_6
	disappear ROUTE43_FIELDMON_6
	end

Route43FieldMon7Script:
	faceplayer
	cry EXEGGUTOR
	pause 15
	loadwildmon EXEGGUTOR, 34
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_7
	disappear ROUTE43_FIELDMON_7
	end

Route43FieldMon8Script:
	faceplayer
	cry SHELGON
	pause 15
	loadwildmon SHELGON, 30
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_8
	disappear ROUTE43_FIELDMON_8
	end

Route43_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 51, ROUTE_43_MAHOGANY_GATE, 1
	warp_event 10, 51, ROUTE_43_MAHOGANY_GATE, 2
	warp_event 17, 35, ROUTE_43_GATE, 3
	warp_event 17, 31, ROUTE_43_GATE, 1
	warp_event 18, 31, ROUTE_43_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 13,  3, BGEVENT_READ, Route43Sign1
	bg_event 11, 49, BGEVENT_READ, Route43Sign2
	bg_event 16, 38, BGEVENT_READ, Route43TrainerTips

	def_object_events
	object_event 14,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPokemaniacBen, -1
	object_event 13, 20, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacBrent, -1
	object_event 11,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 3, InvaderPatchesScript, -1
	object_event  4, 16, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerFisherMarvin, -1
	object_event  9, 25, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPicnickerTiffany, -1
	object_event 13, 40, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperSpencer, -1
	object_event  1, 26, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route43FruitTree, -1
	object_event 12, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route43MaxEther, EVENT_ROUTE_43_MAX_ETHER
	object_event 11, 8, SPRITE_BIRD, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, Route43FieldMon1Script, EVENT_FIELD_MON_1
	object_event 10, 7, SPRITE_BIRD, SPRITEMOVEDATA_WANDER, 2, 2, -1, NITE, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, Route43FieldMon2Script, EVENT_FIELD_MON_2
	object_event 3,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route43FieldMon3Script, EVENT_FIELD_MON_3
	object_event 19,  28, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route43FieldMon4Script, EVENT_FIELD_MON_4
	object_event 13,  18, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route43FieldMon5Script, EVENT_FIELD_MON_5
	object_event 21,  9, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route43FieldMon6Script, EVENT_FIELD_MON_6
	object_event 24, 44, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, DAY, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route43FieldMon7Script, EVENT_FIELD_MON_7
	object_event 24,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, Route43FieldMon8Script, EVENT_FIELD_MON_8
