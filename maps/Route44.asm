	object_const_def
	const ROUTE44_FISHER1
	const ROUTE44_FISHER2
	const ROUTE44_YOUNGSTER1
	const ROUTE44_POKEBALL
	const ROUTE44_YOUNGSTER2
	const ROUTE44_COOLTRAINER_M
	const ROUTE44_COOLTRAINER_F
	const ROUTE44_FRUIT_TREE
	const ROUTE44_FIELDMON_1
    const ROUTE44_FIELDMON_2
    const ROUTE44_FIELDMON_3
    const ROUTE44_FIELDMON_4
    const ROUTE44_FIELDMON_5
    const ROUTE44_FIELDMON_6
    const ROUTE44_FIELDMON_7
    const ROUTE44_FIELDMON_8

Route44_MapScripts:
	def_scene_scripts

	def_callbacks
    callback MAPCALLBACK_OBJECTS, .Route44FieldMon

.Route44FieldMon:
; Pokemon which always appear
    appear ROUTE44_FIELDMON_1
    appear ROUTE44_FIELDMON_6
    appear ROUTE44_FIELDMON_4
    appear ROUTE44_FIELDMON_7

; Pokemon that sometimes appear
    random 2
    ifequal 1, .spawn6
    disappear ROUTE44_FIELDMON_5
    sjump .mon7
.spawn6
    appear ROUTE44_FIELDMON_5

.mon7
    random 2
    ifequal 1, .spawn7
    disappear ROUTE44_FIELDMON_3
    sjump .mon8
.spawn7
    appear ROUTE44_FIELDMON_3

.mon8
    random 2 ; shiny
    ifequal 1, .spawn8
    disappear ROUTE44_FIELDMON_8
    sjump .checkNight
.spawn8
    appear ROUTE44_FIELDMON_8

.checkNight
; Pokemon that only appear at night
    checktime NITE
    iffalse .end

    appear ROUTE44_FIELDMON_2

; Pokemon that don't appear at night
    disappear ROUTE44_FIELDMON_7
    disappear ROUTE44_FIELDMON_8

.end
    endcallback

;TrainerBirdKeeperVance1:
;	trainer BIRD_KEEPER, VANCE1, EVENT_BEAT_BIRD_KEEPER_VANCE, BirdKeeperVance1SeenText, BirdKeeperVance1BeatenText, 0, .Script
;.Script:
;	loadvar VAR_CALLERID, PHONE_BIRDKEEPER_VANCE
;	endifjustbattled
;	opentext
;	checkflag ENGINE_VANCE_READY_FOR_REMATCH
;	iftrue .WantsBattle
;	checkcellnum PHONE_BIRDKEEPER_VANCE
;	iftrue Route44NumberAcceptedM
;	checkevent EVENT_VANCE_ASKED_FOR_PHONE_NUMBER
;	iftrue .AskedAlready
;	writetext BirdKeeperVanceLegendaryBirdsText
;	promptbutton
;	setevent EVENT_VANCE_ASKED_FOR_PHONE_NUMBER
;	scall Route44AskNumber1M
;	sjump .AskForNumber
;.AskedAlready:
;	scall Route44AskNumber2M
;.AskForNumber:
;	askforphonenumber PHONE_BIRDKEEPER_VANCE
;	ifequal PHONE_CONTACTS_FULL, Route44PhoneFullM
;	ifequal PHONE_CONTACT_REFUSED, Route44NumberDeclinedM
;	gettrainername STRING_BUFFER_3, BIRD_KEEPER, VANCE1
;	scall Route44RegisteredNumberM
;	sjump Route44NumberAcceptedM
;.WantsBattle:
;	scall Route44RematchM
;	winlosstext BirdKeeperVance1BeatenText, 0
;	readmem wVanceFightCount
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
;	loadtrainer BIRD_KEEPER, VANCE1
;	startbattle
;	reloadmapafterbattle
;	loadmem wVanceFightCount, 1
;	clearflag ENGINE_VANCE_READY_FOR_REMATCH
;	end
;.LoadFight1:
;	loadtrainer BIRD_KEEPER, VANCE2
;	startbattle
;	reloadmapafterbattle
;	loadmem wVanceFightCount, 2
;	clearflag ENGINE_VANCE_READY_FOR_REMATCH
;	end
;.LoadFight2:
;	loadtrainer BIRD_KEEPER, VANCE3
;	startbattle
;	reloadmapafterbattle
;	clearflag ENGINE_VANCE_READY_FOR_REMATCH
;	checkevent EVENT_VANCE_CARBOS
;	iftrue .Carbos
;	checkevent EVENT_GOT_CARBOS_FROM_VANCE
;	iftrue .ReceivedCarbosBefore
;	scall Route44RematchGiftM
;	verbosegiveitem CARBOS
;	iffalse VancePackFull
;	setevent EVENT_GOT_CARBOS_FROM_VANCE
;	sjump Route44NumberAcceptedM
;.ReceivedCarbosBefore:
;	end
;.Carbos:
;	opentext
;	writetext BirdKeeperVance2BeatenText
;	waitbutton
;	verbosegiveitem CARBOS
;	iffalse VancePackFull
;	clearevent EVENT_VANCE_CARBOS
;	setevent EVENT_GOT_CARBOS_FROM_VANCE
;	sjump Route44NumberAcceptedM
Route44AskNumber1M:
	jumpstd AskNumber1MScript
	end
Route44AskNumber2M:
	jumpstd AskNumber2MScript
	end
Route44RegisteredNumberM:
	jumpstd RegisteredNumberMScript
	end
Route44NumberAcceptedM:
	jumpstd NumberAcceptedMScript
	end
Route44NumberDeclinedM:
	jumpstd NumberDeclinedMScript
	end
Route44PhoneFullM:
	jumpstd PhoneFullMScript
	end
Route44RematchM:
	jumpstd RematchMScript
	end
Route44GiftM:
	jumpstd GiftMScript
	end
Route44PackFullM:
	jumpstd PackFullMScript
	end
;VancePackFull:
;	setevent EVENT_VANCE_CARBOS
;	jumpstd PackFullMScript
;	end
;Route44RematchGiftM:
;	jumpstd RematchGiftMScript
;	end

TrainerBirdKeeperVance1:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BIRD_KEEPER_VANCE
	iftrue .FightDone
	checkevent EVENT_GOT_HM04_STRENGTH
	iffalse .Mercy
.fight
	writetext BirdKeeperVance1SeenText
	waitbutton
	closetext
	winlosstext BirdKeeperVance1BeatenText, 0
	loadtrainer BIRD_KEEPER, VANCE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_HIKER_BAILEY
	end
.FightDone:
	writetext BirdKeeperVanceLegendaryBirdsText
	waitbutton
    closetext
	opentext
	writetext RematchTextRoute44
	yesorno
	iftrue .fight
	writetext RematchRefuseTextRoute44
	waitbutton
	closetext
	end
.Mercy:
    writetext BirdKeeperVance1MercyText
    waitbutton
	closetext
	end

BirdKeeperVance1MercyText:
    text "You came through"
    line "from BLACKTHORN."

    para "Oh I don't think"
    line "you will be able"
    cont "to get back"
    cont "without STRENGTH."

    para "You're in quite"
    line "the pickle."

    para "West of here is"
    line "MAHOGANY town."

    para "West of that is"
    line "ECRUTEAK."

    para "There is a man"
    line "there who can"
    cont "send you home."

    para "It is possible"
    line "to get there and"
    cont "avoid other"
    cont "trainers and"
    cont "#MON."

    para "But it will be"
    line "difficult."

    para "good luck!"
    done

RematchTextRoute44:
    text "How about a"
    line "rematch?"
    done

RematchRefuseTextRoute44:
    text "Maybe next time."
    done

TrainerPsychicPhil:
	trainer PSYCHIC_T, PHIL, EVENT_BEAT_PSYCHIC_PHIL, PsychicPhilSeenText, PsychicPhilBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicPhilAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherWilton1:
	trainer FISHER, WILTON1, EVENT_BEAT_FISHER_WILTON, FisherWilton1SeenText, FisherWilton1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_FISHER_WILTON
	endifjustbattled
	opentext
	checkflag ENGINE_WILTON_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkflag ENGINE_WILTON_HAS_ITEM
	iftrue .HasItem
	checkcellnum PHONE_FISHER_WILTON
	iftrue Route44NumberAcceptedM
	checkevent EVENT_WILTON_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext FisherWiltonHugePoliwagText
	promptbutton
	setevent EVENT_WILTON_ASKED_FOR_PHONE_NUMBER
	scall Route44AskNumber1M
	sjump .AskForNumber

.AskedAlready:
	scall Route44AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_FISHER_WILTON
	ifequal PHONE_CONTACTS_FULL, Route44PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route44NumberDeclinedM
	gettrainername STRING_BUFFER_3, FISHER, WILTON1
	scall Route44RegisteredNumberM
	sjump Route44NumberAcceptedM

.WantsBattle:
	scall Route44RematchM
	winlosstext FisherWilton1BeatenText, 0
	readmem wWiltonFightCount
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
	loadtrainer FISHER, WILTON1
	startbattle
	reloadmapafterbattle
	loadmem wWiltonFightCount, 1
	clearflag ENGINE_WILTON_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer FISHER, WILTON2
	startbattle
	reloadmapafterbattle
	loadmem wWiltonFightCount, 2
	clearflag ENGINE_WILTON_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer FISHER, WILTON3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WILTON_READY_FOR_REMATCH
	end

.HasItem:
	scall Route44GiftM
	checkevent EVENT_WILTON_HAS_ULTRA_BALL
	iftrue .UltraBall
	checkevent EVENT_WILTON_HAS_GREAT_BALL
	iftrue .GreatBall
	checkevent EVENT_WILTON_HAS_POKE_BALL
	iftrue .PokeBall
.UltraBall:
	verbosegiveitem ULTRA_BALL
	iffalse .Route44PackFullM
	sjump .ItemReceived

.GreatBall:
	verbosegiveitem GREAT_BALL
	iffalse .Route44PackFullM
	sjump .ItemReceived

.PokeBall:
	verbosegiveitem POKE_BALL
	iffalse .Route44PackFullM
.ItemReceived:
	clearflag ENGINE_WILTON_HAS_ITEM
	sjump Route44NumberAcceptedM

.Route44PackFullM:
	sjump Route44PackFullM

TrainerFisherEdgar:
	trainer FISHER, EDGAR, EVENT_BEAT_FISHER_EDGAR, FisherEdgarSeenText, FisherEdgarBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherEdgarAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfCybil:
	trainer COOLTRAINERF, CYBIL, EVENT_BEAT_COOLTRAINERF_CYBIL, CooltrainerfCybilSeenText, CooltrainerfCybilBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfCybilAfterBattleText
	waitbutton
	closetext
	end

TrainerPokemaniacZach:
	trainer POKEMANIAC, ZACH, EVENT_BEAT_POKEMANIAC_ZACH, PokemaniacZachSeenText, PokemaniacZachBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacZachAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermAllen:
	trainer COOLTRAINERM, ALLEN, EVENT_BEAT_COOLTRAINERM_ALLEN, CooltrainermAllenSeenText, CooltrainermAllenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermAllenAfterBattleText
	waitbutton
	closetext
	end

Route44Sign1:
	jumptext Route44Sign1Text

Route44Sign2:
	jumptext Route44Sign2Text

Route44FruitTree:
	fruittree FRUITTREE_ROUTE_44

Route44LifeOrb:
	itemball LIFE_ORB

Route44HiddenAmbrosia:
	hiddenitem LUCKY_EGG, EVENT_ROUTE_44_HIDDEN_LUCKY_EGG

FisherWilton1SeenText:
	text "Aack! You made me"
	line "lose a POLIWAG!"

	para "What are you going"
	line "to do about it?"
	done

FisherWilton1BeatenText:
	text "Just forget about"
	line "it."
	done

FisherWiltonHugePoliwagText:
	text "That POLIWAG that"
	line "got away…"
	cont "It was huge."

	para "I swear it must've"
	line "been 16 feet long!"
	done

FisherEdgarSeenText:
	text "I fish until I"
	line "can't anymore."

	para "I also battle"
	line "until I drop."

	para "That's my"
	line "relationship"
	cont "with my #MON."
	done

FisherEdgarBeatenText:
	text "Hmmmm… "
	line "This isn't right."
	done

FisherEdgarAfterBattleText:
	text "That's 100 wins"
	line "to 101 losses."

	para "I won't battle"
	line "again for a while."
	done

BirdKeeperVance1SeenText:
	text "Do you know about"
	line "the legendary bird"
	cont "#MON?"
	done

BirdKeeperVance1BeatenText:
	text "Whew! You're hot"
	line "stuff."
	done

BirdKeeperVanceLegendaryBirdsText:
	text "ARTICUNO, ZAPDOS"
	line "and MOLTRES are"

	para "the three legend-"
	line "ary bird #MON."

	para "I heard there are"
	line "other legendary"
	cont "birds, though."
	done

BirdKeeperVance2BeatenText:
	text "Why can't I ever"
	line "beat you?"

	para "Oh yeah, here you"
	line "go. It's that gift"

	para "I couldn't give"
	line "you last time."
	done

PsychicPhilSeenText:
	text "I'm gonna win,"
	line "for sure!"
	done

PsychicPhilBeatenText:
	text "Arrgh… That's a"
	line "shocking loss…"
	done

PsychicPhilAfterBattleText:
	text "It's important to"
	line "have conviction"
	cont "on your side."
	done

PokemaniacZachSeenText:
	text "I'll do anything"
	line "to get my hands on"
	cont "rare #MON!"
	done

PokemaniacZachBeatenText:
	text "Oooh, your #MON"
	line "are so appealing."
	done

PokemaniacZachAfterBattleText:
	text "If a #MON has"
	line "different colors"

	para "from usual, it's"
	line "more valuable."

	para "What? You mean"
	line "that's not true?"
	done

CooltrainermAllenSeenText:
	text "I can tell you're"
	line "a good trainer by"
	cont "looking at you."

	para "I'm good at #-"
	line "MON, and I can see"
	cont "that you are too."
	done

CooltrainermAllenBeatenText:
	text "Tch! It's a total"
	line "loss on my part."
	done

CooltrainermAllenAfterBattleText:
	text "Wow. You have a"
	line "lot of BADGES."

	para "No wonder you're"
	line "so tough."

	para "I wonder if"
	line "ECRUTEAK GYM's"

	para "MORTY is still in"
	line "training?"

	para "He really hammered"
	line "me."
	done

CooltrainerfCybilSeenText:
	text "You look strong."

	para "Good trainers seek"
	line "tough opponents"
	cont "instinctively."
	done

CooltrainerfCybilBeatenText:
	text "Nope! This won't"
	line "do at all."
	done

CooltrainerfCybilAfterBattleText:
	text "We all get better"
	line "by experiencing"
	cont "many battles."

	para "I battled a lot to"
	line "become what I am"
	cont "today--an elite."
	done

Route44Sign1Text:
	text "ROUTE 44"
	line "ICE PATH AHEAD"
	done

Route44Sign2Text:
	text "ROUTE 44"

	para "MAHOGANY TOWN -"
	line "BLACKTHORN CITY"
	done

Route44FieldMon1Script:
	trainer ARBOK, FIELD_MON, EVENT_FIELD_MON_1, Route44PokemonAttacksText, 55, 0, .script
.script
    disappear ROUTE44_FIELDMON_1
    end

Route44FieldMon2Script:
	trainer WEAVILE, FIELD_MON, EVENT_FIELD_MON_2, Route44PokemonAttacksText, 44, 0, .script
.script
    disappear ROUTE44_FIELDMON_2
    end

Route44PokemonAttacksText:
	text "Wild #MON"
	line "attacks!"
	done

Route44FieldMon3Script:
	faceplayer
	cry CHANSEY
	pause 15
	loadwildmon CHANSEY, 35
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_3
	disappear ROUTE44_FIELDMON_3
	end

Route44FieldMon4Script:
	faceplayer
	cry LANTURN
	pause 15
	loadwildmon LANTURN, 38
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_4
	disappear ROUTE44_FIELDMON_4
	end

Route44FieldMon5Script:
	faceplayer
	cry MILOTIC
	pause 15
	loadwildmon MILOTIC, 51
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_5
	disappear ROUTE44_FIELDMON_5
	end

Route44FieldMon6Script:
	faceplayer
	cry TOGEKISS
	pause 15
	loadwildmon TOGEKISS, 65
    loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT_ESCAPE
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_6
	disappear ROUTE44_FIELDMON_6
	end

Route44FieldMon7Script:
	faceplayer
	cry TOGEPI
	pause 15
	loadwildmon TOGEPI, 5
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_7
	disappear ROUTE44_FIELDMON_7
	end

Route44FieldMon8Script:
	faceplayer
	cry TOGEPI
	pause 15
	loadwildmon TOGEPI, 5
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_8
	disappear ROUTE44_FIELDMON_8
	end

VanceEncounterScript:
    checkevent EVENT_GOT_HM04_STRENGTH
    iffalse .talk
    end
.talk
    turnobject PLAYER, RIGHT
    sjump TrainerBirdKeeperVance1

Route44_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 56,  7, ICE_PATH_1F, 1

	def_coord_events
	coord_event 56, 8, SCENE_ALWAYS, VanceEncounterScript

	def_bg_events
	bg_event 53,  7, BGEVENT_READ, Route44Sign1
	bg_event  6, 10, BGEVENT_READ, Route44Sign2
	bg_event 32,  9, BGEVENT_ITEM, Route44HiddenAmbrosia

	def_object_events
	object_event 35,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherWilton1, -1
	object_event 19, 13, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherEdgar, -1
	object_event 10,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPsychicPhil, -1
	object_event 6, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route44LifeOrb, EVENT_ROUTE_44_LIFE_ORB
	object_event 57,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 2, TrainerBirdKeeperVance1, -1
	object_event 41, 18, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerCooltrainermAllen, -1
	object_event 31, 18, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerCooltrainerfCybil, -1
	object_event  9,  5, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route44FruitTree, -1

	object_event 49,  5, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 3, Route44FieldMon1Script, EVENT_FIELD_MON_1
	object_event 48, 16, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, NITE, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 3, Route44FieldMon2Script, EVENT_FIELD_MON_2
	object_event 29,  2, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route44FieldMon3Script, EVENT_FIELD_MON_3
	object_event 27,  16, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route44FieldMon4Script, EVENT_FIELD_MON_4
	object_event 22,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route44FieldMon5Script, EVENT_FIELD_MON_5
	object_event 37,  9, SPRITE_BIRD, SPRITEMOVEDATA_STANDING_LEFT, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route44FieldMon6Script, EVENT_FIELD_MON_6
	object_event 33, 11, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route44FieldMon7Script, EVENT_FIELD_MON_7
	object_event 35,  8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, Route44FieldMon8Script, EVENT_FIELD_MON_8
