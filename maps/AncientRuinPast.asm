    object_const_def
    const ANCIENTRUINPAST_XERNEAS
    const ANCIENTRUINPAST_REGIGIGAS

AncientRuinPast_MapScripts:
	def_scene_scripts

	def_callbacks

XerneasScript:
	opentext
	writetext XerneasCry
	waitbutton
	cry XERNEAS
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon XERNEAS, 70
	startbattle
	reloadmapafterbattle
    setval XERNEAS
	special MonCheck
	iftrue .caught
	end
.caught
    setevent EVENT_CAUGHT_XERNEAS
	disappear ANCIENTRUINPAST_XERNEAS
	pause 15
	special FadeInQuickly
	pause 30
	special HealParty
	refreshscreen
	end

XerneasCry:
    text "You do not"
    line "seek life"
    cont "eternal?"

    para "You are content"
    line "that you will"
    cont "cease to exist?"

    para "You say life"
    line "would have no"
    cont "beauty otherwise!"

    para "You seek the"
    line "power to defend"
    cont "life."

    para "Dear child..."

    para "You have found"
    line "such power."
    done

RegigigasScript:
	opentext
	writetext RegigigasCry
	waitbutton
	cry VILEPLUME
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT
	loadwildmon VILEPLUME, 70
	startbattle
	reloadmapafterbattle
    setval VILEPLUME
	special MonCheck
	iftrue .caught
	end
.caught
    setevent EVENT_CAUGHT_REGIGIGAS
	disappear ANCIENTRUINPAST_REGIGIGAS
	pause 15
	special FadeInQuickly
	pause 30
	special HealParty
	refreshscreen
	end

RegigigasCry:
    text "REGI!!!"
    done

AncientRuinPast_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event   5, 5, ANCIENT_RUIN_PRESENT, 1
	warp_event  33, 5, ANCIENT_RUIN_PRESENT, 3
	warp_event  19, 3, ECRUTEAK_CITY, 12

	def_coord_events

	def_bg_events

	def_object_events
	object_event 19, 9, SPRITE_ARCEUS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, XerneasScript, EVENT_CAUGHT_XERNEAS
	object_event 19, 14, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, RegigigasScript, EVENT_CAUGHT_REGIGIGAS

