	object_const_def
	const SILVERCAVEROOM3_RED

SilverCaveRoom3_MapScripts:
	def_scene_scripts

	def_callbacks

Red:
	special FadeOutMusic
	faceplayer
	opentext
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
	opentext
	writetext RedLeavesText
	waitbutton
	closetext
	;special FadeBlackQuickly
	;special ReloadSpritesNoPalettes
	;disappear SILVERCAVEROOM3_RED
	;pause 15
	;special FadeInQuickly
	;pause 30
	special HealParty
	refreshscreen
	checkevent EVENT_BEAT_RED
	iftrue .skipCredits
	setevent EVENT_BEAT_RED
	credits
.skipCredits
	end

RedSeenText:
	text "<……>"
	line "<……>"
	done

RedWinLossText:
	text "…"
	done

RedLeavesText:
	text "<……>"
	line "<……>"
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
	object_event  9, 10, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Red, -1
