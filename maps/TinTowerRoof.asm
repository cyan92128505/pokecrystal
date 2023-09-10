	object_const_def
	const TINTOWERROOF_HO_OH

TinTowerRoof_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .HoOh

.HoOh:
    checktime NITE
    iftrue .skipWeather
	setval WEATHER_SUN
	writemem wFieldWeather
.skipWeather

	setval HO_OH
	special MonCheck
	iftrue .NoAppear
	checkitem RAINBOW_WING
	iftrue .Appear
	sjump .NoAppear

.Appear:
	appear TINTOWERROOF_HO_OH
	endcallback

.NoAppear:
	disappear TINTOWERROOF_HO_OH
	endcallback

TinTowerHoOh:
	faceplayer
	opentext
	writetext HoOhText
	cry HO_OH
	pause 15
	closetext
	setevent EVENT_FOUGHT_HO_OH

	checkitem SILVER_WING
	iffalse .lowerLevel
	checkflag ENGINE_EARTHBADGE
	iffalse .midLevel
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon HO_OH, 85
    sjump .begin
.midLevel
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon HO_OH, 70
	sjump .begin
.lowerLevel
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon HO_OH, 55
.begin
	startbattle
	disappear TINTOWERROOF_HO_OH
	reloadmapafterbattle
	setevent EVENT_SET_WHEN_FOUGHT_HO_OH
	end

HoOhText:
	text "Shaoooh!"
	done

TinTowerRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 13, TIN_TOWER_9F, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  5, SPRITE_HO_OH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TinTowerHoOh, EVENT_TIN_TOWER_ROOF_HO_OH
