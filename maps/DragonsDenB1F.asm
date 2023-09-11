	object_const_def
	const DRAGONSDENB1F_POKE_BALL1
	const DRAGONSDENB1F_CLAIR
	const DRAGONSDENB1F_COOLTRAINER_M
	const DRAGONSDENB1F_COOLTRAINER_F
	const DRAGONSDENB1F_TWIN1
	const DRAGONSDENB1F_TWIN2
	const DRAGONSDENB1F_RAYQUAZA
	const DRAGONSDENB1F_FIELDMON_1
    const DRAGONSDENB1F_FIELDMON_2
    const DRAGONSDENB1F_FIELDMON_3
    const DRAGONSDENB1F_FIELDMON_4
    const DRAGONSDENB1F_FIELDMON_5
    const DRAGONSDENB1F_FIELDMON_6
    const DRAGONSDENB1F_FIELDMON_7
    const DRAGONSDENB1F_FIELDMON_8
    const DRAGONSDENB1F_INVADER

DragonsDenB1F_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DRAGONSDENB1F_NOTHING
	scene_script .DummyScene1 ; SCENE_DRAGONSDENB1F_CLAIR_GIVES_TM

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .DragonsDenB1FieldMon

.DummyScene0:
	end

.DummyScene1:
	end

.DragonsDenB1FieldMon:
; Pokemon which always appear
    appear DRAGONSDENB1F_FIELDMON_1
    appear DRAGONSDENB1F_FIELDMON_2
    appear DRAGONSDENB1F_FIELDMON_3
    appear DRAGONSDENB1F_FIELDMON_4
    appear DRAGONSDENB1F_FIELDMON_5
    appear DRAGONSDENB1F_FIELDMON_6
    appear DRAGONSDENB1F_FIELDMON_7
    appear DRAGONSDENB1F_FIELDMON_8
    endcallback

DragonsDenB1FieldMon1Script:
	cry DRAGONAIR
	pause 15
	loadwildmon DRAGONAIR, 46
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_1
	disappear DRAGONSDENB1F_FIELDMON_1
	end

DragonsDenB1FieldMon2Script:
	cry MILOTIC
	pause 15
	loadwildmon MILOTIC, 48
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_2
	disappear DRAGONSDENB1F_FIELDMON_2
	end

DragonsDenB1FieldMon3Script:
	cry GYARADOS
	pause 15
	loadwildmon GYARADOS, 48
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_3
	disappear DRAGONSDENB1F_FIELDMON_3
	end

DragonsDenB1FieldMon4Script:
	cry KINGDRA
	pause 15
	loadwildmon KINGDRA, 50
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_4
	disappear DRAGONSDENB1F_FIELDMON_4
	end

DragonsDenB1FieldMon5Script:
	faceplayer
	cry DRAGONITE
	pause 15
	loadwildmon DRAGONITE, 70
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT_ESCAPE
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_5
	disappear DRAGONSDENB1F_FIELDMON_5
	end

DragonsDenB1FieldMon6Script:
	faceplayer
	cry DRATINI
	pause 15
	loadwildmon DRATINI, 10
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_6
	disappear DRAGONSDENB1F_FIELDMON_6
	end

DragonsDenB1FieldMon7Script:
	faceplayer
	cry BAGON
	pause 15
	loadwildmon BAGON, 10
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_7
	disappear DRAGONSDENB1F_FIELDMON_7
	end

DragonsDenB1FieldMon8Script:
	faceplayer
	cry GIBLE
	pause 15
	loadwildmon GIBLE, 10
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_8
	disappear DRAGONSDENB1F_FIELDMON_8
	end

RayquazaScript:
	opentext

    setval DRAGONITE
	special MonCheck
	iffalse .notWorthy
    setval SALAMENCE
	special MonCheck
	iffalse .notWorthy
    setval GARCHOMP
	special MonCheck
	iffalse .notWorthy

	writetext RayquazaWorthyText
	cry RAYQUAZA
	pause 15
	closetext
	checkevent EVENT_BEAT_WALLACE
	iffalse .midLevel
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon RAYQUAZA, 80
    sjump .begin
.midLevel
	checkevent EVENT_BEAT_ELITE_FOUR
	iffalse .lowerLevel
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon RAYQUAZA, 70
    sjump .begin
.lowerLevel
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon RAYQUAZA, 60
.begin
	startbattle
	reloadmapafterbattle
    setval RAYQUAZA
	special MonCheck
	iftrue .caught
	end
.caught
    setevent EVENT_CAUGHT_RAYQUAZA
	disappear DRAGONSDENB1F_RAYQUAZA
	end
.notWorthy
    writetext RayquazaNotWorthyText
    waitbutton
    closetext
    end

RayquazaNotWorthyText:
	text "I AM RAYQUAZA!"

	para "THE DRAGON LORD!"

	para "TINY HUMAN..."

	para "I SENSE IN YOU"
	line "THE HEART OF A"
	cont "DRAGON!"

	para "PROVE TO ME"
	line "YOUR KINSHIP."

	para "BECOME A DRAGON"
	line "CHAMPION BY"
	cont "MASTERING MY"
	cont "DRAGONS."

	para "DRAGONITE!"

	para "SALAMENCE!"

	para "AND"
	line "GARCHOMP!"

	para "THEN RETURN TO ME!"
	done

RayquazaWorthyText:
	text "AHHHHH..."

	para "YOU ARE A TRUE"
	line "DRAGON CHAMPION!"

	para "BUT IS YOUR HEART"
	line "STRONG ENOUGH.."

	para "TO MASTER ME!"

	para "THE DRAGON LORD!"

	para "SO THAT TOGETHER"
	line "WE MIGHT CONQUER"
	cont "THE DARK ONE.."

	para "GIRATINA!"

	para "SHOW ME YOUR"
	line "STRENGTH!"
	done

DragonsDenB1F_ClairScene:
	appear DRAGONSDENB1F_CLAIR
	opentext
	writetext ClairText_Wait
	pause 30
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, LEFT
	playmusic MUSIC_CLAIR
	applymovement DRAGONSDENB1F_CLAIR, MovementDragonsDen_ClairWalksToYou
	opentext
	writetext ClairText_GiveDragonbreathDragonDen
	promptbutton
	giveitem TM_DRAGON_PULSE
	iffalse .BagFull
	getitemname STRING_BUFFER_3, TM_DRAGON_PULSE
	writetext Text_ReceivedTM24
	playsound SFX_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_TM24_DRAGONBREATH
	writetext ClairText_DescribeDragonbreathDragonDen
	promptbutton
	writetext ClairText_WhatsTheMatterDragonDen
	waitbutton
	closetext
	sjump .FinishClair

.BagFull:
	writetext ClairText_NoRoom
	waitbutton
	closetext
.FinishClair:
	applymovement DRAGONSDENB1F_CLAIR, MovementDragonsDen_ClairWalksAway
	special FadeOutMusic
	pause 30
	special RestartMapMusic
	disappear DRAGONSDENB1F_CLAIR
	setscene SCENE_DRAGONSDENB1F_NOTHING
	end

TrainerCooltrainermDarin:
	trainer COOLTRAINERM, DARIN, EVENT_BEAT_COOLTRAINERM_DARIN, CooltrainermDarinSeenText, CooltrainermDarinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermDarinAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfCara:
	trainer COOLTRAINERF, CARA, EVENT_BEAT_COOLTRAINERF_CARA, CooltrainerfCaraSeenText, CooltrainerfCaraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfCaraAfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsLeaandpia1:
	trainer TWINS, LEAANDPIA1, EVENT_BEAT_TWINS_LEA_AND_PIA, TwinsLeaandpia1SeenText, TwinsLeaandpia1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsLeaandpia1AfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsLeaandpia2:
	trainer TWINS, LEAANDPIA1, EVENT_BEAT_TWINS_LEA_AND_PIA, TwinsLeaandpia2SeenText, TwinsLeaandpia2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsLeaandpia2AfterBattleText
	waitbutton
	closetext
	end

DragonsDenB1FDragonFangScript:
; This whole script is written out rather than as an itemball
; because it's left over from the GS event.
	giveitem DRAGON_FANG
	iffalse .BagFull
	disappear DRAGONSDENB1F_POKE_BALL1
	opentext
	getitemname STRING_BUFFER_3, DRAGON_FANG
	writetext Text_FoundDragonFang
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end

.BagFull:
	opentext
	getitemname STRING_BUFFER_3, DRAGON_FANG
	writetext Text_FoundDragonFang
	promptbutton
	writetext Text_NoRoomForDragonFang
	waitbutton
	closetext
	end

DragonShrineSignpost:
	jumptext DragonShrineSignpostText

DragonsDenB1FCalcium:
	itemball CALCIUM

DragonsDenB1FMaxElixer:
	itemball MAX_ELIXER

DragonsDenB1FHiddenRevive:
	hiddenitem REVIVE, EVENT_DRAGONS_DEN_B1F_HIDDEN_REVIVE

DragonsDenB1FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_DRAGONS_DEN_B1F_HIDDEN_MAX_POTION

DragonsDenB1FHiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_DRAGONS_DEN_B1F_HIDDEN_MAX_ELIXER

MovementDragonsDen_ClairWalksToYou:
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	step_end

MovementDragonsDen_ClairWalksAway:
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	step_end

ClairText_Wait:
	text "Wait!"
	done

ClairText_GiveDragonbreathDragonDen:
	text "CLAIR: I'm sorry"
	line "about this."

	para "Here, take this as"
	line "my apology."
	done

Text_ReceivedTM24:
	text "<PLAYER> received"
	line "TM24."
	done

ClairText_DescribeDragonbreathDragonDen:
	text "That contains"
	line "DRAGON PULSE."
	done

ClairText_NoRoom:
	text "Oh? You don't have"
	line "any room for this."

	para "I'm going back to"
	line "the GYM, so make"

	para "room, then come"
	line "see me there."
	done

ClairText_WhatsTheMatterDragonDen:
	text "CLAIR: What's the"
	line "matter? Aren't you"

	para "going on to the"
	line "#MON LEAGUE?"

	para "Do you know how to"
	line "get there?"

	para "From here, go to"
	line "NEW BARK TOWN."

	para "Then SURF east to"
	line "#MON LEAGUE."

	para "The route there is"
	line "very tough."

	para "Don't you dare"
	line "lose at the #-"
	cont "MON LEAGUE!"

	para "If you do, I'll"
	line "feel even worse"

	para "about having lost"
	line "to you!"

	para "Give it everything"
	line "you've got."
	done

DragonShrineSignpostText:
	text "DRAGON SHRINE"

	para "A shrine honoring"
	line "the dragon #MON"

	para "said to have lived"
	line "in DRAGON'S DEN."
	done

CooltrainermDarinSeenText:
	text "You! How dare you"
	line "enter uninvited!"
	done

CooltrainermDarinBeatenText:
	text "S-strong!"
	done

CooltrainermDarinAfterBattleText:
	text "The SHRINE ahead"
	line "is home to the"

	para "MASTER of our"
	line "dragon-user clan."

	para "You're not allowed"
	line "to just go in!"
	done

CooltrainerfCaraSeenText:
	text "You shouldn't be"
	line "in here!"
	done

CooltrainerfCaraBeatenText:
	text "Oh yikes, I lost!"
	done

CooltrainerfCaraAfterBattleText:
	text "Soon I'm going to"
	line "get permission"

	para "from our MASTER to"
	line "use dragons."

	para "When I do, I'm"
	line "going to become an"

	para "admirable dragon"
	line "trainer and gain"

	para "our MASTER's"
	line "approval."
	done

TwinsLeaandpia1SeenText:
	text "It's a stranger we"
	line "don't know."
	done

TwinsLeaandpia1BeatenText:
	text "Ouchies."
	done

TwinsLeaandpia1AfterBattleText:
	text "It was like having"
	line "to battle LANCE."
	done

TwinsLeaandpia2SeenText:
	text "Who are you?"
	done

TwinsLeaandpia2BeatenText:
	text "Meanie."
	done

TwinsLeaandpia2AfterBattleText:
	text "We'll tell on you."

	para "MASTER will be"
	line "angry with you."
	done

Text_FoundDragonFang:
	text "<PLAYER> found"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

Text_NoRoomForDragonFang:
	text "But <PLAYER> can't"
	line "carry any more"
	cont "items."
	done
	
InvaderLoganScript:
	trainer INVADER, LOGAN, EVENT_BEAT_INVADER_LOGAN, InvaderLoganSeenText, InvaderLoganBeatenText, InvaderLoganVictoryText, .Script

.Script:
	endifjustbattled
	opentext
	writetext InvaderLoganAfterBattleText
	waitbutton
	closetext
	end

InvaderLoganSeenText:
    text "You seem quiet"
    line "lucid."

    para "This is DRAGONS"
    line "DEN."

    para "This place is a"
    line "great pool of"
    cont "knowledge."

    para "Bearing the"
    line "fruits of superior"
    cont "wisdom and an"
    cont "unquenchable"
    cont "desire for truth."

    para "Let us learn"
    line "together."
	done

InvaderLoganVictoryText:
	text "Heavens, the"
	line "folly of youth."
	done

InvaderLoganBeatenText:
	text "I fail to see"
	line "your design."
	done

InvaderLoganAfterBattleText:
	text "All progress"
	line "demands sacrifice."

	para "Far away in"
	line "PEWTER CITY"
	cont "there is a"
	cont "knight named"
	cont "HAVEL."

	para "He seeks to end"
	line "all dragons."

	para "We must not let"
	line "their knowledge"
	cont "fade."
	done

DragonsDenB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 20,  3, DRAGONS_DEN_1F, 3
	warp_event 19, 29, DRAGON_SHRINE, 1

	def_coord_events
	coord_event 19, 30, SCENE_DRAGONSDENB1F_CLAIR_GIVES_TM, DragonsDenB1F_ClairScene

	def_bg_events
	bg_event 18, 24, BGEVENT_READ, DragonShrineSignpost
	bg_event 33, 29, BGEVENT_ITEM, DragonsDenB1FHiddenRevive
	bg_event 21, 17, BGEVENT_ITEM, DragonsDenB1FHiddenMaxPotion
	bg_event 31, 15, BGEVENT_ITEM, DragonsDenB1FHiddenMaxElixer

	def_object_events
	object_event 35, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FDragonFangScript, EVENT_DRAGONS_DEN_B1F_DRAGON_FANG
	object_event 14, 30, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DRAGONS_DEN_CLAIR
	object_event 21, 30, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainermDarin, -1
	object_event  8,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfCara, -1
	object_event  4, 17, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsLeaandpia1, -1
	object_event  4, 18, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsLeaandpia2, -1
	object_event 20, 15, SPRITE_DRAGONITE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RayquazaScript, EVENT_CAUGHT_RAYQUAZA
	object_event 24, 11, SPRITE_GYARADOS, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FieldMon1Script, EVENT_FIELD_MON_1
	object_event 13, 15, SPRITE_GYARADOS, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FieldMon2Script, EVENT_FIELD_MON_2
	object_event 10, 26, SPRITE_GYARADOS, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FieldMon3Script, EVENT_FIELD_MON_3
	object_event 28, 25, SPRITE_GYARADOS, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FieldMon4Script, EVENT_FIELD_MON_4
	object_event 34, 10, SPRITE_DRAGON, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FieldMon5Script, EVENT_FIELD_MON_5
	object_event 34, 12, SPRITE_DRAGON, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FieldMon6Script, EVENT_FIELD_MON_6
	object_event 34, 15, SPRITE_DRAGON, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FieldMon7Script, EVENT_FIELD_MON_7
	object_event 36, 13, SPRITE_DRAGON, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FieldMon8Script, EVENT_FIELD_MON_8
	object_event 19,  7, SPRITE_WILL, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 4, InvaderLoganScript, -1

