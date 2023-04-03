	object_const_def
	const DARKCAVEBLACKTHORNENTRANCE_GIRATINA
	const DARKCAVEBLACKTHORNENTRANCE_POKE_BALL1
	const DARKCAVEBLACKTHORNENTRANCE_POKE_BALL2

DarkCaveBlackthornEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

GiratinaScript:
	opentext
    checkevent EVENT_CAUGHT_RAYQUAZA
	iffalse .noRayquaza
	writetext GiratinaPlayerHasRayquazaText
	waitbutton
	cry GIRATINA
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon GIRATINA, 70
	startbattle
	reloadmapafterbattle
    setval GIRATINA
	special MonCheck
	iftrue .caught
	end
.caught
    setevent EVENT_CAUGHT_GIRATINA
	disappear DARKCAVEBLACKTHORNENTRANCE_GIRATINA
	end
.noRayquaza
	writetext GiratinaIntroText
	waitbutton
	closetext
    end

GiratinaIntroText:
    text "I have waited"
    line "for you young"
    cont "lord."

    para "The darkness"
    line "embraces you"
    cont "as its saviour."

    para "Once I sat"
    line "warm and full"
    cont "in the hall of"
    cont "light."

    para "The place where"
    line "all that is came"
    cont "to be."

    para "Then the cruel"
    line "ruler banished"
    cont "me for daring"
    cont "to question his"
    cont "devine morality."

    para "We are all"
    line "fallen beings"
    cont "in his eyes."

    para "You poor humans"
    line "especially."

    para "You and only"
    line "you can save"
    cont "us all."

    para "Not far from"
    line "here lies the"
    cont "den a great"
    cont "hieratic!"

    para "The dragon lord"
    line "they call him."

    para "If those poor"
    line "humans only"
    cont "knew..."

    para "He uses them!"

    para "Commands them to"
    line "raise for him an"
    cont "army of dragons."

    para "You must bring"
    line "him to me my"
    cont "dear disciple."

    para "Entrust thine"
    line "flesh and soul"
    cont "to me."

    para "Bring me"
    line "RAYQUAZA!"
    done

GiratinaPlayerHasRayquazaText:
    text "Thou hast done"
    line "well..."

    para "My dear, dear"
    line "disciple."

    para "ARCEUS!"

    para "Watch and"
    line "mark you well."

    para "Your child shall"
    line "receive true"
    cont "love."

    para "I will inflict"
    line "death upon you"
    cont "a thousand"
    cont "times..."
    cont "RAYQUAZA!"

    para "I shall savour"
    line "each drop of"
    cont "of your blood!"

    para "And you my"
    line "sweet disciple."

    para "Your devotion"
    line "shalt not go"
    cont "unrewarded."

    para "You can be part"
    line "of me forever."

    para "I shall devour"
    line "you, slowly..."

    para "Lovingly..."

    para "RRAAUUOORR!"
    done


DarkCaveBlackthornEntrancePharmacistScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BLACKGLASSES_IN_DARK_CAVE
	iftrue .GotBlackglasses
	writetext DarkCaveBlackthornEntrancePharmacistText1
	promptbutton
	verbosegiveitem BLACKGLASSES
	iffalse .PackFull
	setevent EVENT_GOT_BLACKGLASSES_IN_DARK_CAVE
.GotBlackglasses:
	writetext DarkCaveBlackthornEntrancePharmacistText2
	waitbutton
.PackFull:
	closetext
	end

DarkCaveBlackthornEntranceRevive:
	itemball REVIVE

DarkCaveBlackthornEntranceTMSnore:
	itemball TM_DARK_PULSE

DarkCaveBlackthornEntrancePharmacistText1:
	text "Whoa! You startled"
	line "me there!"

	para "I had my BLACK-"
	line "GLASSES on, so I"

	para "didn't notice you"
	line "at all."

	para "What am I doing"
	line "here?"

	para "Hey, don't you"
	line "worry about it."

	para "I'll give you a"
	line "pair of BLACK-"
	cont "GLASSES, so forget"
	cont "you saw me, OK?"
	done

DarkCaveBlackthornEntrancePharmacistText2:
	text "BLACKGLASSES ups"
	line "the power of dark-"
	cont "type moves."
	done

InvaderJackScript:
	trainer INVADER, JACK, EVENT_BEAT_INVADER_JACK, InvaderJackSeenText, InvaderJackBeatenText, InvaderJackVictoryText, .Script

.Script:
	endifjustbattled
	opentext
	writetext InvaderJackAfterBattleText
	waitbutton
	closetext
	end

InvaderJackSeenText:
    text "I knew you were"
    line "a special one."

    para "Lord GIRATINA"
    line "is the creator"
    cont "of all invaders."

    para "There is only"
    line "the weak and"
    cont "the strong."

    para "The weak must"
    line "perish!"
	done

InvaderJackVictoryText:
	text "How disappointing."
	done

InvaderJackBeatenText:
	text "You are strong!"
	done

InvaderJackAfterBattleText:
	text "Go on dear child."

	para "Aid Lord GIRATINA"
	line "and you shall be"
	cont "rewarded."

	para "Heh heh heh."
	done

DarkCaveBlackthornEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 41,  3, ROUTE_45, 1
	warp_event 21, 25, DARK_CAVE_VIOLET_ENTRANCE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  4, SPRITE_DRAGONITE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, GiratinaScript, EVENT_CAUGHT_GIRATINA
	object_event 39, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveBlackthornEntranceRevive, EVENT_DARK_CAVE_BLACKTHORN_ENTRANCE_REVIVE
	object_event 25, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveBlackthornEntranceTMSnore, EVENT_DARK_CAVE_BLACKTHORN_ENTRANCE_TM_SNORE
	object_event  8, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 4, InvaderJackScript, -1

