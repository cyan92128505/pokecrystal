OriginRoadSouth_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Weather

.Weather:
	setval WEATHER_NONE
	writemem wFieldWeather
	endcallback

OriginRoadSouth_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 39, SILVER_CAVE_ROOM_3, 2
	warp_event  4, 39, SILVER_CAVE_ROOM_3, 2
	warp_event  6, 39, SILVER_CAVE_ROOM_3, 2
	warp_event  7, 39, SILVER_CAVE_ROOM_3, 2

	def_coord_events

	def_bg_events

	def_object_events
