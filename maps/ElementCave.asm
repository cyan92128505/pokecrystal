	object_const_def
	const ELEMENTCAVE_GROUDON
	const ELEMENTCAVE_KYOGRE

ElementCave_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .GroudonAndKyogre

.GroudonAndKyogre
	checkevent EVENT_BEAT_HOEN_ARMY
	iffalse .NoAppear
.Appear:
	appear ELEMENTCAVE_GROUDON
	appear ELEMENTCAVE_KYOGRE
	endcallback
.NoAppear:
	disappear ELEMENTCAVE_GROUDON
	disappear ELEMENTCAVE_KYOGRE
	endcallback

GroudonScript:
	faceplayer
	opentext
	writetext GroudonCry
	cry GROUDON
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon GROUDON, 70
	startbattle
	reloadmapafterbattle
    setval GROUDON
	special MonCheck
	iftrue .caught
	end
.caught
    setevent EVENT_CAUGHT_GROUDON
    disappear ELEMENTCAVE_GROUDON
	end

GroudonCry:
    text "Groudon!"
    done

KyogreScript:
	faceplayer
	opentext
	writetext KyogreCry
	cry KYOGRE
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon KYOGRE, 70
	startbattle
	reloadmapafterbattle
    setval KYOGRE
	special MonCheck
	iftrue .caught
	end
.caught
    setevent EVENT_CAUGHT_KYOGRE
	disappear ELEMENTCAVE_KYOGRE
	end

KyogreCry:
    text "Kyogre!"
    done

ElementCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 5, 3, CINNABAR_ISLAND, 2
	warp_event 43, 21, ROUTE_20, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 25, 3, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GroudonScript, EVENT_CAUGHT_GROUDON
	object_event 29, 3, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, KyogreScript, EVENT_CAUGHT_KYOGRE
