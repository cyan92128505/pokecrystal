	object_const_def
	const ROUTE32_FISHER2
	const ROUTE32_FISHER3
	const ROUTE32_YOUNGSTER2
	const ROUTE32_YOUNGSTER3
	const ROUTE32_LASS1
	const ROUTE32_COOLTRAINER_M
	const ROUTE32_INVADER
	const ROUTE32_FRIEDA
    const ROUTE32_FIELDMON_1
	const ROUTE32_FIELDMON_2
	const ROUTE32_FIELDMON_3
	const ROUTE32_FIELDMON_4
	const ROUTE32_FIELDMON_5
	const ROUTE32_FIELDMON_6
	const ROUTE32_FIELDMON_7
	const ROUTE32_FIELDMON_8
	const ROUTE32_CRYSTAL

Route32_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_ROUTE32_OFFER_SLOWPOKETAIL
	scene_script .DummyScene2 ; SCENE_ROUTE32_NOTHING

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Frieda

.DummyScene0:
	end

.DummyScene1:
	end

.DummyScene2:
	end

.Frieda:
    appear ROUTE32_FIELDMON_1
    appear ROUTE32_FIELDMON_3
    appear ROUTE32_FIELDMON_4
    appear ROUTE32_FIELDMON_5
    appear ROUTE32_FIELDMON_6
    disappear ROUTE32_CRYSTAL

; Pokemon that sometimes appear
    random 2
    ifequal 1, .spawn7
    disappear ROUTE32_FIELDMON_7
    sjump .mon8
.spawn7
    appear ROUTE32_FIELDMON_7

.mon8
    random 4
    ifequal 1, .spawn8
    disappear ROUTE32_FIELDMON_8
    sjump .checkNight
.spawn8
    appear ROUTE32_FIELDMON_8

.checkNight
; Pokemon that only appear at night
    checktime NITE
	iffalse .feieda
    appear ROUTE32_FIELDMON_2
; Pokemon that don't appear at night
    disappear ROUTE32_FIELDMON_7

.feieda
	readvar VAR_WEEKDAY
	ifequal FRIDAY, .FriedaAppears
	disappear ROUTE32_FRIEDA
	endcallback

.FriedaAppears:
	appear ROUTE32_FRIEDA
	endcallback

Route32CooltrainerMScript:
	faceplayer
Route32CooltrainerMContinueScene:
	opentext
	checkevent EVENT_GOT_MIRACLE_SEED_IN_ROUTE_32
	iftrue .GotMiracleSeed
	checkflag ENGINE_ZEPHYRBADGE
	iffalse .DontHaveZephyrBadge
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iftrue .GiveMiracleSeed
	writetext Route32CooltrainerMText_AideIsWaiting
	waitbutton
	closetext
	end

.GoToSproutTower: ; unreferenced
	writetext Route32CooltrainerMText_UnusedSproutTower
	waitbutton
	closetext
	end

.GiveMiracleSeed:
	writetext Route32CooltrainerMText_HaveThisSeed
	promptbutton
	verbosegiveitem MIRACLE_SEED
	iffalse .BagFull
	setevent EVENT_GOT_MIRACLE_SEED_IN_ROUTE_32
	sjump .GotMiracleSeed

.DontHaveZephyrBadge:
	writetext Route32CooltrainerMText_VioletGym
	waitbutton
	closetext
	end

.GotMiracleSeed:
	writetext Route32CooltrainerMText_ExperiencesShouldBeUseful
	waitbutton
.BagFull:
	closetext
	end

Route32CooltrainerMStopsYouScene:
	turnobject ROUTE32_COOLTRAINER_M, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext Route32CooltrainerMText_WhatsTheHurry
	waitbutton
	closetext
	follow PLAYER, ROUTE32_COOLTRAINER_M
	applymovement PLAYER, Movement_Route32CooltrainerMPushesYouBackToViolet
	stopfollow
	turnobject PLAYER, DOWN
	scall Route32CooltrainerMContinueScene
	applymovement ROUTE32_COOLTRAINER_M, Movement_Route32CooltrainerMReset1
	applymovement ROUTE32_COOLTRAINER_M, Movement_Route32CooltrainerMReset2
	end

;Route32RoarTMGuyScript:
;	faceplayer
;	opentext
;	checkevent EVENT_GOT_TM05_ROAR
;	iftrue .AlreadyHaveRoar
;	writetext Text_RoarIntro
;	promptbutton
;	verbosegiveitem TM_ROAR
;	iffalse .Finish
;	setevent EVENT_GOT_TM05_ROAR
;.AlreadyHaveRoar:
;	writetext Text_RoarOutro
;	waitbutton
;.Finish:
;	closetext
;	end

;Route32WannaBuyASlowpokeTailScript:
;	turnobject ROUTE32_FISHER4, DOWN
;	turnobject PLAYER, UP
;	sjump _OfferToSellSlowpokeTail

;SlowpokeTailSalesmanScript:
;	faceplayer
;_OfferToSellSlowpokeTail:
;	setscene SCENE_ROUTE32_NOTHING
;	opentext
;	writetext Text_MillionDollarSlowpokeTail
;	yesorno
;	iffalse .refused
;	writetext Text_ThoughtKidsWereLoaded
;	waitbutton
;	closetext
;	end

;.refused
;	writetext Text_RefusedToBuySlowpokeTail
;	waitbutton
;	closetext
;	end

TrainerCamperRoland:
	trainer CAMPER, ROLAND, EVENT_BEAT_CAMPER_ROLAND, CamperRolandSeenText, CamperRolandBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperRolandAfterText
	waitbutton
	closetext
	end

;TrainerFisherJustin:
;	trainer FISHER, JUSTIN, EVENT_BEAT_FISHER_JUSTIN, FisherJustinSeenText, FisherJustinBeatenText, 0, .Script

;.Script:
;	endifjustbattled
;	opentext
;	writetext FisherJustinAfterText
;	waitbutton
;	closetext
;	end

TrainerFisherRalph1:
	trainer FISHER, RALPH1, EVENT_BEAT_FISHER_RALPH, FisherRalph1SeenText, FisherRalph1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_FISHER_RALPH
	endifjustbattled
	opentext
	checkflag ENGINE_RALPH_READY_FOR_REMATCH
	iftrue .Rematch
	checkflag ENGINE_FISH_SWARM
	iftrue .Swarm
	checkcellnum PHONE_FISHER_RALPH
	iftrue .NumberAccepted
	checkevent EVENT_RALPH_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext FisherRalphAfterText
	promptbutton
	setevent EVENT_RALPH_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskAgain:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_FISHER_RALPH
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, FISHER, RALPH1
	scall .RegisteredNumber
	sjump .NumberAccepted

.Rematch:
	scall .RematchStd
	winlosstext FisherRalph1BeatenText, 0
	readmem wRalphFightCount
	ifequal 4, .Fight4
	ifequal 3, .Fight3
	ifequal 2, .Fight2
	ifequal 1, .Fight1
	ifequal 0, .LoadFight0
.Fight4:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight4
.Fight3:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight3
.Fight2:
	;checkflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	;iftrue .LoadFight2
.Fight1:
	checkflag ENGINE_FLYPOINT_ECRUTEAK
	iftrue .LoadFight1
.LoadFight0:
	loadtrainer FISHER, RALPH1
	startbattle
	reloadmapafterbattle
	loadmem wRalphFightCount, 1
	clearflag ENGINE_RALPH_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer FISHER, RALPH2
	startbattle
	reloadmapafterbattle
	loadmem wRalphFightCount, 2
	clearflag ENGINE_RALPH_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer FISHER, RALPH3
	startbattle
	reloadmapafterbattle
	loadmem wRalphFightCount, 3
	clearflag ENGINE_RALPH_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer FISHER, RALPH4
	startbattle
	reloadmapafterbattle
	loadmem wRalphFightCount, 4
	clearflag ENGINE_RALPH_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer FISHER, RALPH5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_RALPH_READY_FOR_REMATCH
	end

.Swarm:
	writetext FisherRalphSwarmText
	waitbutton
	closetext
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

.RematchStd:
	jumpstd RematchMScript
	end

TrainerFisherHenry:
	trainer FISHER, HENRY, EVENT_BEAT_FISHER_HENRY, FisherHenrySeenText, FisherHenryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherHenryAfterText
	waitbutton
	closetext
	end

TrainerPicnickerLiz1:
	trainer PICNICKER, LIZ1, EVENT_BEAT_PICNICKER_LIZ, PicnickerLiz1SeenText, PicnickerLiz1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_PICNICKER_LIZ
	endifjustbattled
	opentext
	checkflag ENGINE_LIZ_READY_FOR_REMATCH
	iftrue .Rematch
	checkcellnum PHONE_PICNICKER_LIZ
	iftrue .NumberAccepted
	checkevent EVENT_LIZ_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext PicnickerLiz1AfterText
	promptbutton
	setevent EVENT_LIZ_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskAgain:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_PICNICKER_LIZ
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, PICNICKER, LIZ1
	scall .RegisteredNumber
	sjump .NumberAccepted

.Rematch:
	scall .RematchStd
	winlosstext PicnickerLiz1BeatenText, 0
	readmem wLizFightCount
	ifequal 4, .Fight4
	ifequal 3, .Fight3
	ifequal 2, .Fight2
	ifequal 1, .Fight1
	ifequal 0, .LoadFight0
.Fight4:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight4
.Fight3:
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight3
.Fight2:
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .LoadFight2
.Fight1:
	checkflag ENGINE_FLYPOINT_ECRUTEAK
	iftrue .LoadFight1
.LoadFight0:
	loadtrainer PICNICKER, LIZ1
	startbattle
	reloadmapafterbattle
	loadmem wLizFightCount, 1
	clearflag ENGINE_LIZ_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer PICNICKER, LIZ2
	startbattle
	reloadmapafterbattle
	loadmem wLizFightCount, 2
	clearflag ENGINE_LIZ_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer PICNICKER, LIZ3
	startbattle
	reloadmapafterbattle
	loadmem wLizFightCount, 3
	clearflag ENGINE_LIZ_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer PICNICKER, LIZ4
	startbattle
	reloadmapafterbattle
	loadmem wLizFightCount, 4
	clearflag ENGINE_LIZ_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer PICNICKER, LIZ5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LIZ_READY_FOR_REMATCH
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

.RematchStd:
	jumpstd RematchFScript
	end

TrainerYoungsterAlbert:
	trainer YOUNGSTER, ALBERT, EVENT_BEAT_YOUNGSTER_ALBERT, YoungsterAlbertSeenText, YoungsterAlbertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterAlbertAfterText
	waitbutton
	closetext
	end

TrainerYoungsterGordon:
	trainer YOUNGSTER, GORDON, EVENT_BEAT_YOUNGSTER_GORDON, YoungsterGordonSeenText, YoungsterGordonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterGordonAfterText
	waitbutton
	closetext
	end

InvaderSiegmeyer:
	trainer INVADER, SIEGMEYER, EVENT_BEAT_BIRD_KEEPER_PETER, InvaderSiegmeyerSeenText, InvaderSiegmeyerBeatenText, InvaderSiegmeyerVictoryText, .Script

.Script:
	endifjustbattled
	opentext
	writetext InvaderSiegmeyerAfterText
	waitbutton
	closetext
	end

FriedaScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POISON_BARB_FROM_FRIEDA
	iftrue .Friday
	readvar VAR_WEEKDAY
	ifnotequal FRIDAY, .NotFriday
	checkevent EVENT_MET_FRIEDA_OF_FRIDAY
	iftrue .MetFrieda
	writetext MeetFriedaText
	promptbutton
	setevent EVENT_MET_FRIEDA_OF_FRIDAY
.MetFrieda:
	writetext FriedaGivesGiftText
	promptbutton
	verbosegiveitem POISON_BARB
	iffalse .Done
	setevent EVENT_GOT_POISON_BARB_FROM_FRIEDA
	writetext FriedaGaveGiftText
	waitbutton
	closetext
	end

.Friday:
	writetext FriedaFridayText
	waitbutton
.Done:
	closetext
	end

.NotFriday:
	writetext FriedaNotFridayText
	waitbutton
	closetext
	end

;Route32GreatBall:
;	itemball GREAT_BALL

;Route32Repel:
;	itemball REPEL

Route32Sign:
	jumptext Route32SignText

Route32RuinsSign:
	jumptext Route32RuinsSignText

Route32UnionCaveSign:
	jumptext Route32UnionCaveSignText

Route32PokecenterSign:
	jumpstd PokecenterSignScript

Route32HiddenGreatBall:
	hiddenitem GREAT_BALL, EVENT_ROUTE_32_HIDDEN_GREAT_BALL

Route32HiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_ROUTE_32_HIDDEN_SUPER_POTION

Movement_Route32CooltrainerMPushesYouBackToViolet:
	step UP
	step UP
	step_end

Movement_Route32CooltrainerMReset1:
	step DOWN
	step_end

Movement_Route32CooltrainerMReset2:
	step RIGHT
	step_end

Route32CooltrainerMText_WhatsTheHurry:
	text "Wait up!"
	line "What's the hurry?"
	done

Route32CooltrainerMText_AideIsWaiting:
	text "<PLAYER>, right?"
	line "Some guy wearing"

	para "glasses was look-"
	line "ing for you."

	para "See for yourself."
	line "He's waiting for"

	para "you at the #MON"
	line "CENTER."
	done

Route32CooltrainerMText_UnusedSproutTower:
	text "Have you gone to"
	line "SPROUT TOWER?"

	para "If you ever visit"
	line "VIOLET CITY, "

	para "they'll expect you"
	line "to train there."

	para "That's basic for"
	line "trainers. Go to"
	cont "SPROUT TOWER!"
	done

Route32CooltrainerMText_VioletGym:
	text "Have you gone to"
	line "the #MON GYM?"

	para "You can test your"
	line "#MON and your-"
	cont "self there."

	para "It's a rite of"
	line "passage for all"
	cont "trainers!"
	done

Route32CooltrainerMText_HaveThisSeed:
	text "You have some good"
	line "#MON there."

	para "It must be from"
	line "the training you"

	para "gave them around"
	line "VIOLET CITY."

	para "The training at"
	line "the GYM must have"

	para "been especially"
	line "helpful."

	para "As a souvenir of"
	line "VIOLET CITY, take"
	cont "this."

	para "It increases the"
	line "power of grass-"
	cont "type moves."
	done

Route32CooltrainerMText_ExperiencesShouldBeUseful:
	text "Your experiences"
	line "in VIOLET CITY"

	para "should be useful"
	line "for your journey."
	done

Text_MillionDollarSlowpokeTail:
	text "How would you like"
	line "to have this"

	para "tasty, nutritious"
	line "SLOWPOKETAIL?"

	para "For you right now,"
	line "just ¥1,000,000!"

	para "You'll want this!"
	done

Text_ThoughtKidsWereLoaded:
	text "Tch! I thought"
	line "kids these days"
	cont "were loaded…"
	done

Text_RefusedToBuySlowpokeTail:
	text "You don't want it?"
	line "Then scram. Shoo!"
	done

FisherJustinSeenText:
	text "Whoa!"

	para "You made me lose"
	line "that fish!"
	done

FisherJustinBeatenText:
	text "Sploosh!"
	done

FisherJustinAfterText:
	text "Calm, collected…"
	line "The essence of"

	para "fishing and #-"
	line "MON is the same."
	done

FisherRalph1SeenText:
	text "I'm really good at"
	line "both fishing and"
	cont "#MON."

	para "I'm not about to"
	line "lose to any kid!"
	done

FisherRalph1BeatenText:
	text "Tch! I tried to"
	line "rush things…"
	done

FisherRalphAfterText:
	text "Fishing is a life-"
	line "long passion."

	para "#MON are life-"
	line "long friends!"
	done

FisherRalphSwarmText:
	text "One, two, three…"
	line "Muahahaha, what a"

	para "great haul!"
	line "I'm done! Go ahead"

	para "and catch as many"
	line "as you can, kid!"
	done

Route32UnusedFisher1SeenText: ; unreferenced
	text "I keep catching"
	line "the same #MON…"

	para "Maybe a battle"
	line "will turn things"
	cont "around for me."
	done

Route32UnusedFisher1BeatenText: ; unreferenced
	text "Nothing ever goes"
	line "right for me now…"
	done

Route32UnusedFisher1AfterText: ; unreferenced
	text "How come the guy"
	line "next to me catches"
	cont "good #MON?"
	done

Route32UnusedFisher2SeenText: ; unreferenced
	text "Heh, I'm on a roll"
	line "today. How about a"
	cont "battle, kid?"
	done

Route32UnusedFisher2BeatenText: ; unreferenced
	text "Oof. I wasn't"
	line "lucky that time."
	done

Route32UnusedFisher2AfterText: ; unreferenced
	text "You have to have a"
	line "good ROD if you"

	para "want to catch good"
	line "#MON."
	done

FisherHenrySeenText:
	text "My #MON?"
	line "Freshly caught!"
	done

FisherHenryBeatenText:
	text "SPLASH?"
	done

FisherHenryAfterText:
	text "Freshly caught"
	line "#MON are no"

	para "match for properly"
	line "raised ones."
	done

YoungsterAlbertSeenText:
	text "I haven't seen you"
	line "around before."

	para "So you think you"
	line "are pretty tough?"
	done

YoungsterAlbertBeatenText:
	text "You're strong!"
	done

YoungsterAlbertAfterText:
	text "I'm going to try"
	line "to be the best"
	cont "with my favorites."

	para "I'm not using the"
	line "same tough #MON"
	cont "as everyone else."
	done

YoungsterGordonSeenText:
	text "I found some good"
	line "#MON in the"
	cont "grass!"

	para "I think they'll do"
	line "it for me!"
	done

YoungsterGordonBeatenText:
	text "Darn. I thought I"
	line "could win."
	done

YoungsterGordonAfterText:
	text "The grass is full"
	line "of clingy things."
	done

CamperRolandSeenText:
	text "That glance…"
	line "It's intriguing."
	done

CamperRolandBeatenText:
	text "Hmmm. This is"
	line "disappointing."
	done

CamperRolandAfterText:
	text "If you don't want"
	line "to battle, just"
	cont "avoid eye contact."
	done

PicnickerLiz1SeenText:
	text "Uh-huh. Yeah, and"
	line "you know…"

	para "Pardon? Battle?"
	line "I'm on the phone."

	para "Oh, all right. But"
	line "make it fast."
	done

PicnickerLiz1BeatenText:
	text "Oh! I've got to"
	line "relieve my anger!"
	done

PicnickerLiz1AfterText:
	text "I was having a"
	line "nice chat too."
	done

InvaderSiegmeyerSeenText:
	text "Hmmmmm"

	para "......."

	para "I knew you would"
	line "come my way."

	para "This armour"
	line "gives me"
	cont "unbreakable"
	cont "poise."

	para "Have at me!"

	para "I can"
	line "withstand"
	cont "and counter."
	done

InvaderSiegmeyerBeatenText:
	text "I just couldn't"
	line "land a hit."
	done

InvaderSiegmeyerVictoryText:
	text "Good Game"
	line "my friend!"
	done

InvaderSiegmeyerAfterText:
	text "You done well"
	line "hohohoho!"

	para "You would make"
	line "a fine knight."
	done

Route32UnusedText: ; unreferenced
	text "The fishermen"
	line "yelled at me for"
	cont "bugging them…"
	done

Text_RoarIntro:
	text "WROOOOAR!"
	line "PEOPLE RUN WHEN I"

	para "ROAR! BUT YOU"
	line "CAME LOOKING!"

	para "THAT PLEASES ME!"
	line "NOW TAKE THIS!"
	done

Text_RoarOutro:
	text "WROOOAR!"
	line "IT'S ROAR!"

	para "EVEN #MON RUN"
	line "FROM A GOOD ROAR!"
	done

MeetFriedaText:
	text "FRIEDA: Yahoo!"
	line "It's Friday!"

	para "I'm FRIEDA of"
	line "Friday!"

	para "Nice to meet you!"
	done

FriedaGivesGiftText:
	text "Here's a POISON"
	line "BARB for you!"
	done

FriedaGaveGiftText:
	text "FRIEDA: Give it to"
	line "a #MON that has"
	cont "poison-type moves."

	para "Oh!"

	para "It's wicked!"

	para "You'll be shocked"
	line "how good it makes"
	cont "poison moves!"
	done

FriedaFridayText:
	text "FRIEDA: Hiya! What"
	line "day do you like?"

	para "I love Friday. No"
	line "doubt about it!"

	para "Don't you think"
	line "it's great too?"
	done

FriedaNotFridayText:
	text "FRIEDA: Isn't it"
	line "Friday today?"

	para "It's so boring"
	line "when it's not!"
	done

Route32SignText:
	text "ROUTE 32"

	para "VIOLET CITY -"
	line "AZALEA TOWN"
	done

Route32RuinsSignText:
	text "RUINS OF ALPH"
	line "EAST ENTRANCE"
	done

Route32UnionCaveSignText:
	text "UNION CAVE"
	line "AHEAD"
	done
	
Route32FieldMon1Script:
	trainer SIGILYPH, FIELD_MON, EVENT_FIELD_MON_1, Route32PokemonAttacksText, 31, 0, .script
.script
    disappear ROUTE32_FIELDMON_1
    end

Route32FieldMon2Script:
	trainer QUAGSIRE, FIELD_MON, EVENT_FIELD_MON_2, Route32PokemonAttacksText, 32, 0, .script
.script
    disappear ROUTE32_FIELDMON_2
    end
    
Route32FieldMon3Script:
	trainer DUOSION, FIELD_MON, EVENT_FIELD_MON_3, Route32PokemonAttacksText, 34, 0, .script
.script
    disappear ROUTE32_FIELDMON_3
    end
    
Route32PokemonAttacksText:
	text "Wild #MON"
	line "attacks!"
	done
	
Route32FieldMon4Script:
	faceplayer
	cry CLEFAIRY
	pause 15
	loadwildmon CLEFAIRY, 14
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_4
	disappear ROUTE32_FIELDMON_4
	end

Route32FieldMon5Script:
	faceplayer
	cry CHINCHOU
	pause 15
	loadwildmon CHINCHOU, 14
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_5
	disappear ROUTE32_FIELDMON_5
	end

Route32FieldMon6Script:
	faceplayer
	cry MACHOP
	pause 15
	loadwildmon MACHOP, 15
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_6
	disappear ROUTE32_FIELDMON_6
	end
	
Route32FieldMon7Script:
	faceplayer
	cry RIOLU
	pause 15
	loadwildmon RIOLU, 15
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_7
	disappear ROUTE32_FIELDMON_7
	end

Route32FieldMon8Script:
	faceplayer
	cry SOLOSIS
	pause 15
	loadwildmon SOLOSIS, 16
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_8
	disappear ROUTE32_FIELDMON_8
	end

Route32CrystalScript:
    checkevent EVENT_BEAT_CRYSTAL_2
    iftrue .end
    showemote EMOTE_SHOCK, PLAYER, 15
    playmusic MUSIC_CRYSTAL_ENCOUNTER
    opentext
    writetext Route32CrystalText_WaitUp
    waitbutton
    closetext
    appear ROUTE32_CRYSTAL
    applymovement PLAYER, Route32Movement_PlayerUp
    applymovement ROUTE32_CRYSTAL, Route32Movement_CrystalApproaches

    opentext
    writetext Route32CrystalText_GotBadge
    waitbutton
    closetext
    showemote EMOTE_SHOCK, ROUTE32_CRYSTAL, 15
    opentext
    writetext Route32CrystalText_YouToo
    waitbutton
    closetext

	winlosstext Crystal2LosesText, Crystal2WinsText
    loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer CRYSTAL, CRYSTAL_2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CRYSTAL_2

	opentext
	writetext Route32CrystalText_KeepItUp
	waitbutton
	closetext
	applymovement ROUTE32_CRYSTAL, Route32Movement_CrystalLeaves
	disappear ROUTE32_CRYSTAL
	turnobject PLAYER, DOWN
.end
	end

Route32CrystalText_WaitUp:
    text "Hey <PLAYER>"
    line "wait there!"
    done

Route32Movement_PlayerUp:
    step UP
    step UP
    step UP
    step_end

Route32Movement_CrystalApproaches:
    big_step DOWN
    big_step DOWN
    big_step RIGHT
    big_step DOWN
    step_end

Route32CrystalText_GotBadge:
    text "How have you been"
    line "doing?"

    para "I found something"
    line "unsettling about"
    cont "VIOLET."

    para "It has DARK CAVE"
    line "to the east,"
    cont "RUINS of ALPH"
    cont "to the west and"
    cont "there is a dark"
    cont "underground to"
    cont "the SPROUT TOWER."

    para "It's like it's"
    line "surrounded by"
    cont "evil and the"
    cont "people can't do"
    cont "anything about it."

    para "There was this one"
    line "guy with red"
    cont "hair who really"
    cont "seemed to hate"
    cont "everyone. Even his"
    cont "own #MON."

    para "Still I got the"
    line "badge from the"
    cont "GYM."

    para "Though it was"
    line "really tough!"

    para "I suppose you are"
    line "still trying to"
    cont "get it?"
    done

Route32CrystalText_YouToo:
    text "You already have"
    line "it!"

    para "And I thought I"
    line "had taken a lead"
    cont "in our race."

    para "You must have got"
    line "much stronger."

    para "I haven't had"
    line "much luck catching"
    cont "more #MON but"
    cont "the ones I have"
    cont "are pretty good!"

    para "Let me show you."
    done

Crystal2LosesText:
    text "We will get"
    line "much stronger."
    done

Crystal2WinsText:
    text "I didn't think"
    line "I'd actually win!"
    done

Route32CrystalText_KeepItUp:
    text "You are really"
    line "strong."

    para "Next time we"
    line "battle will be"
    cont "different!"

    para "I tried exploring"
    line "NORTH of NEW BARK"
    cont "town in the"
    cont "DARK CAVE. But it"
    cont "was too scary!"

    para "I'm sure there is"
    line "good stuff there."

    para "Watch out for"
    line "INVADERS!"

    para "They are bright"
    line "red and are really"
    cont "strong."

    para "Oh and don't go"
    line "to RUINS OF"
    cont "ALPH at night."

    para "There is a"
    line "scary guy there"
    cont "you don't want"
    cont "to mess with."

    para "So much danger"
    line "everywhere."

    para "You stay safe"
    line "until we meet"
    cont "again."

    para "Good luck!"
    done

Route32Movement_CrystalLeaves:
    big_step RIGHT
    big_step DOWN
    big_step DOWN
    big_step LEFT
    big_step DOWN
    big_step DOWN
    big_step DOWN
    big_step DOWN
    step_end

Route32_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 73, ROUTE_32_POKECENTER_1F, 1
	warp_event  4,  2, ROUTE_32_RUINS_OF_ALPH_GATE, 3
	warp_event  4,  3, ROUTE_32_RUINS_OF_ALPH_GATE, 4
	warp_event  6, 79, UNION_CAVE_1F, 4

	def_coord_events
	coord_event 18,  8, SCENE_DEFAULT, Route32CooltrainerMStopsYouScene
	coord_event 18,  9, SCENE_ALWAYS, Route32CrystalScript

	def_bg_events
	bg_event 13,  5, BGEVENT_READ, Route32Sign
	bg_event  9,  1, BGEVENT_READ, Route32RuinsSign
	bg_event 10, 84, BGEVENT_READ, Route32UnionCaveSign
	bg_event 12, 73, BGEVENT_READ, Route32PokecenterSign
	bg_event 12, 67, BGEVENT_ITEM, Route32HiddenGreatBall
	bg_event 11, 40, BGEVENT_ITEM, Route32HiddenSuperPotion

	def_object_events
	object_event 12, 56, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerFisherRalph1, -1
	object_event  6, 48, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherHenry, -1
	object_event  4, 63, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterGordon, -1
	object_event  3, 45, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperRoland, -1
	object_event 10, 30, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerPicnickerLiz1, -1
	object_event 19,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route32CooltrainerMScript, -1
	object_event 11, 82, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 3, InvaderSiegmeyer, -1
	object_event 12, 67, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FriedaScript, EVENT_ROUTE_32_FRIEDA_OF_FRIDAY

	object_event 5, 14, SPRITE_MONSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 6, Route32FieldMon1Script, EVENT_FIELD_MON_1
	object_event  4, 36, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, NITE, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 4, Route32FieldMon2Script, EVENT_FIELD_MON_2
	object_event 4, 68, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 4, Route32FieldMon3Script, EVENT_FIELD_MON_3
	object_event 14, 15, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route32FieldMon4Script, EVENT_FIELD_MON_4
	object_event  7, 40, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route32FieldMon5Script, EVENT_FIELD_MON_5
	object_event 1, 50, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route32FieldMon6Script, EVENT_FIELD_MON_6
	object_event 3, 11, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route32FieldMon7Script, EVENT_FIELD_MON_7
	object_event 8,  74, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, Route32FieldMon8Script, EVENT_FIELD_MON_8

	object_event  17, 2, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMP_EVENT_1

