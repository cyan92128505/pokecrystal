	object_const_def
	const SILVERCAVEROOM3_RED

SilverCaveRoom3_MapScripts:
	def_scene_scripts

	def_callbacks

Red:
	special FadeOutMusic
	faceplayer
	opentext
    checkevent EVENT_BEAT_RED
    iftrue .FightDone
.fight
	writetext RedSeenText
	waitbutton
	closetext
	winlosstext RedWinLossText, RedWinLossText
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer RED, RED1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special FadeOutMusic
	checkevent EVENT_BEAT_ASH
	iftrue .beatenAsh
	opentext
	writetext RedNotBeatenAshText
.beatenAsh
	opentext
	writetext RedLeavesText
	waitbutton
	closetext
	special HealParty
	refreshscreen
	checkevent EVENT_BEAT_ASH
	iffalse .skipCredits
	checkevent EVENT_BEAT_RED
	iftrue .skipCredits
	setevent EVENT_BEAT_RED
	credits
.skipCredits
	end
.FightDone:
	checkevent EVENT_BEAT_ASH
	iftrue .beatenAshFightDone
	writetext RedNotBeatenAshText
	waitbutton
    closetext
    end
.beatenAshFightDone
	writetext RedLeavesText
	waitbutton
    closetext
	opentext
	writetext RematchTextRed
	yesorno
	iftrue .fight
	writetext RematchRefuseTextRed
	waitbutton
	closetext
	end

Ash:
	special FadeOutMusic
	faceplayer
	opentext
    checkevent EVENT_BEAT_ASH
    iftrue .FightDone
.fight
	writetext AshSeenText
	waitbutton
	closetext
	winlosstext AshWinLossText, AshWinLossText
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer RED, ASH
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special FadeOutMusic
	checkevent EVENT_BEAT_RED
	iftrue .beatenRed
	opentext
	writetext AshNotBeatenRedText
	waitbutton
	closetext
	special HealParty
	end
.beatenRed
	opentext
	writetext AshLeavesText
	waitbutton
	closetext
	special HealParty
	refreshscreen
	checkevent EVENT_BEAT_RED
	iffalse .skipCredits
	checkevent EVENT_BEAT_ASH
	iftrue .skipCredits
	setevent EVENT_BEAT_ASH
	credits
.skipCredits
	end
.FightDone:
    checkevent EVENT_BEAT_RED
	iftrue .beatenRedFightDone
	writetext AshNotBeatenRedText
	waitbutton
	closetext
	end
.beatenRedFightDone
	writetext AshLeavesText
	waitbutton
    closetext
	opentext
	writetext RematchTextAsh
	yesorno
	iftrue .fight
	writetext RematchRefuseTextAsh
	waitbutton
	closetext
	end

Pikachu:
    opentext
	writetext PikachuText
	waitbutton
    cry PIKACHU
	pause 15
	closetext
	end

PikachuText:
    text "PIKA"
    line "CHU!"
    done

RedSeenText:
	text "<……>"
	line "<……>"
	done

RedWinLossText:
	text "…"
	done

RedWinWinText:
	text "…"
	done

RedNotBeatenAshText:
    text "<……>"

    para "The other..."

    para "Defeat him..."

    para "Then you will be"
    line "the strongest."
    done

RedLeavesText:
	text "<……>"
	line "You are the"
	cont "strongest."

	para "In this world."

	para "But that's not"
	line "enough."

	para "Enter now the"
	line "tournament at"
	cont "MT SILVER."

	para "Prove yourself"
	line "the strongest"
	cont "in all worlds."

	para "The you can"
	line "pass beyond."
	done

RematchTextRed:
    text "<……>"

    para "Battle?"
    done

RematchRefuseTextRed:
    text "<……>"
    done

AshSeenText:
	text "Hey I'm ASH from"
	line "PALLET TOWN."

	para "After I won the"
	line "CHAMPIONS LEAGUE"
	cont "I became the"
	cont "strongest of all"
	cont "trainers."

	para "I came here to"
	line "find a trainer"
	cont "I could fight."

	para "This guy is just"
	line "like me."

	para "We will battle"
	line "and learn lots"
	cont "from each other."

	para "I think I could"
	line "learn much from"
	cont "battling you"
	cont "too."

	para "Let's go!"
	done

AshWinLossText:
	text "You are really"
	line "good!"
	done

AshWinWinText:
	text "You are really"
	line "good!"
	done

AshNotBeatenRedText:
    text "You are stronger"
    line "than me!"

    para "You may be the"
    line "strongest of all"
    cont "trainers!"

    para "If you can beat"
    line "that other guy"
    cont "I think you will"
    cont "be."
    done

AshLeavesText:
	text "You have beaten"
	line "both of us."

	para "You are the"
	line "strongest"
	cont "trainer in the"
	cont "world!"

	para "But that's not"
	line "enough."

	para "I've heard of"
	line "a tournament"
	cont "with the best"
	cont "trainers from"
	cont "many different"
	cont "worlds."

	para "You should enter."

	para "Then you might"
	line "be able to enter"
	cont "the doorway"
	cont "ahead."
	done

RematchTextAsh:
    text "How about"
    line "another battle?"
    done

RematchRefuseTextAsh:
    text "No problem!"
    done

SilverCave3BlockScript:
    checkevent EVENT_CAUGHT_MEWTWO
    iffalse .block
    end
.block
    turnobject PLAYER, UP
	opentext
	writetext SilverCave3BlockText
    waitbutton
    closetext
    applymovement PLAYER, Movement_SilverCave3TurnBack
    end

SilverCave3BlockText:
    text "An overwhelming"
    line "force repels the"
    cont "unworthy."
    done

Movement_SilverCave3TurnBack:
	step DOWN
	step_end

SilverCaveRoom3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 33, SILVER_CAVE_ROOM_2, 2
	warp_event  9, 3, ORIGIN_ROAD_SOUTH, 1

	def_coord_events
	coord_event 9, 4, SCENE_ALWAYS, SilverCave3BlockScript

	def_bg_events

	def_object_events
	object_event  8, 10, SPRITE_RED, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Red, -1
    object_event 11, 10, SPRITE_RED, SPRITEMOVEDATA_STANDING_LEFT,  0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Ash, -1
    object_event  8, 9, SPRITE_PIKACHU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, Pikachu, -1
    object_event 11, 9, SPRITE_PIKACHU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, Pikachu, -1
