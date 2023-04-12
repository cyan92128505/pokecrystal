OriginRoad_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Weather

.Weather:
	setval WEATHER_NONE
	writemem wFieldWeather
	endcallback

InvaderMasterPatches:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_PATCHES
	iftrue .FightDone
.fight
	writetext InvaderMasterPatchesSeenText
	waitbutton
	closetext
	winlosstext InvaderMasterPatchesBeatenText, InvaderMasterPatchesVictoryText
	loadtrainer INVADER, MASTER_PATCHES
	startbattle
	reloadmapafterbattle
	checkevent EVENT_BEAT_MASTER_PATCHES
	iftrue .finish
	setevent EVENT_BEAT_MASTER_PATCHES
	opentext
	writetext InvaderMasterPatchesAfterText
	waitbutton
	pokemart MARTTYPE_STANDARD, MART_PATCHES
	closetext
.finish
	special HealParty
	end
.FightDone:
	writetext InvaderMasterPatchesAfterText
	waitbutton
	pokemart MARTTYPE_STANDARD, MART_PATCHES
    closetext
	opentext
	writetext RematchTextPatches
	yesorno
	iftrue .fight
	writetext RematchRefuseTextPatches
	waitbutton
	closetext
	end

RematchTextPatches:
    text "How about a"
    line "match friend?"
    done

RematchRefuseTextPatches:
    text "Stop by"
    line "anytime."
    done

InvaderMasterPatchesSeenText:
	text "What you again?"
	line "Well, well!"

	para "You've been a"
	line "stranger."

	para "You must be"
	line "searching for"
	cont "the ultimate"
	cont "treasure!"

	para "It's just up"
	line "ahead."

	para "But don't"
	line "get your"
	cont "hopes up."

	para "There is a"
	line "group of max"
	cont "level trainers."

	para "I could not"
	line "defeat them."

	para "Even with my"
	line "cheat codes!"

	para "Oh, you caught"
	line "me!"

	para "Heh heh, this"
	line "is what I do"
	cont "my friend."

	para "The #MON"
	line "I'll be taking"
	cont "from you."

	para "That's the"
	line "real treasure!"
	done

InvaderMasterPatchesBeatenText:
	text "...Oh"
	line "You, I..."
	cont "Let's just"
	cont "calm down."
	done

InvaderMasterPatchesVictoryText:
	text "Phew."
	para "The righteous"
	line "prevail again."
	done

InvaderMasterPatchesAfterText:
	text "No hard"
	line "feelings!"

	para "I'm but a "
	line "humble merchant"
	cont "now."

	para "Go on take a"
	line "look."

	para "It'll shimmer"
	line "you blind."

	para "Heh, heh, heh..."
	done

PatchesAttacks:
    checkevent EVENT_BEAT_MASTER_PATCHES
    iffalse .fight
    end
.fight
    turnobject PLAYER, RIGHT
    sjump InvaderMasterPatches

OriginRoad_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event  4,  3, SCENE_ALWAYS, PatchesAttacks
	coord_event  5,  3, SCENE_ALWAYS, PatchesAttacks
	coord_event  6,  3, SCENE_ALWAYS, PatchesAttacks

	def_bg_events

	def_object_events
	object_event  7,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_SCRIPT, 0, InvaderMasterPatches, -1

