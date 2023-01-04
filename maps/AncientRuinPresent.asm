    object_const_def
    const ANCIENTRUINPRESENT_YVELTAL

AncientRuinPresent_MapScripts:
	def_scene_scripts

	def_callbacks

YveltalScript:
	opentext
	writetext YveltalCry
	waitbutton
	cry YVELTAL
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon YVELTAL, 70
	startbattle
	reloadmapafterbattle
    setval YVELTAL
	special MonCheck
	iftrue .caught
	end
.caught
    setevent EVENT_CAUGHT_YVELTAL
	disappear ANCIENTRUINPRESENT_YVELTAL
	pause 15
	special FadeInQuickly
	pause 30
	special HealParty
	refreshscreen
	end

YveltalCry:
    text "Nothing is more"
    line "valuable than"
    cont "time."

    para "You are young."

    para "You have a lot"
    line "of time left.."

    para "For a human."

    para "I shall take"
    line "every second"
    cont "from you."

    para "And add it to"
    line "my own!"
    done

AncientRuinPresent_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event   5, 5, RUINS_OF_ALPH_OUTSIDE, 12
	warp_event  33, 5, SPROUT_TOWER_B1F, 1
	warp_event 19,  5, ANCIENT_RUIN_PAST, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 19, 9, SPRITE_HO_OH, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, YveltalScript, EVENT_CAUGHT_YVELTAL
