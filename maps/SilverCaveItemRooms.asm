	object_const_def
	const SILVERCAVEITEMROOMS_PALKIA
	const SILVERCAVEITEMROOMS_DIALGA

SilverCaveItemRooms_MapScripts:
	def_scene_scripts

	def_callbacks

PalkiaScript:
	faceplayer
	opentext
	writetext PalkiaCry
	cry PALKIA
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon PALKIA, 70
	startbattle
	reloadmapafterbattle
    setval PALKIA
	special MonCheck
	iftrue .caught
	end
.caught
    setevent EVENT_CAUGHT_PALKIA
	disappear SILVERCAVEITEMROOMS_PALKIA
	end

PalkiaCry:
    text "Palkia!"
    done

DialgaScript:
	faceplayer
	opentext
	writetext DialgaCry
	cry DIALGA
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon DIALGA, 70
	startbattle
	reloadmapafterbattle
    setval DIALGA
	special MonCheck
	iftrue .caught
	end
.caught
    setevent EVENT_CAUGHT_DIALGA
	disappear SILVERCAVEITEMROOMS_DIALGA
	end

DialgaCry:
    text "Dialga!"
    done

SilverCaveItemRooms_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  3, SILVER_CAVE_ROOM_2, 3
	warp_event  7, 15, SILVER_CAVE_ROOM_2, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_DRAGONITE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, PalkiaScript, EVENT_CAUGHT_PALKIA
	object_event 15, 10, SPRITE_DRAGONITE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DialgaScript, EVENT_CAUGHT_DIALGA
