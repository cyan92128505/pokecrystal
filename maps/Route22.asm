	object_const_def
	const ROUTE22_MOLTRES

Route22_MapScripts:
	def_scene_scripts

	def_callbacks

MoltresScript:
	faceplayer
	opentext
	writetext MoltresCry
	cry MOLTRES
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon MOLTRES, 60
	startbattle
	reloadmapafterbattle
    setval MOLTRES
	special MonCheck
	iftrue .caught
	end
.caught
    setevent EVENT_CAUGHT_MOLTRES
	disappear ROUTE22_MOLTRES
	end

MoltresCry:
    text "Moltres!"
    done

VictoryRoadEntranceSign:
	jumptext VictoryRoadEntranceSignText

VictoryRoadEntranceSignText:
	text "#MON LEAGUE"

	para "VICTORY ROAD"
	line "ENTRANCE"
	done

Route22_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  5, VICTORY_ROAD_GATE, 1

	def_coord_events

	def_bg_events
	bg_event 15,  7, BGEVENT_READ, VictoryRoadEntranceSign

	def_object_events
	object_event  4,   2, SPRITE_HO_OH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_SCRIPT, 0, MoltresScript, EVENT_CAUGHT_MOLTRES
