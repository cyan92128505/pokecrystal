    object_const_def
    const ANCIENTRUINPAST_XERNEAS
    const ANCIENTRUINPAST_FIELDMON_1
    const ANCIENTRUINPAST_FIELDMON_2
    const ANCIENTRUINPAST_FIELDMON_3
    const ANCIENTRUINPAST_FIELDMON_4
    const ANCIENTRUINPAST_FIELDMON_5
    const ANCIENTRUINPAST_FIELDMON_6
    const ANCIENTRUINPAST_FIELDMON_7
    const ANCIENTRUINPAST_FIELDMON_8

AncientRuinPast_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .WeatherAndFieldMon

.WeatherAndFieldMon:
	setval WEATHER_SUN
	writemem wFieldWeather
    appear ANCIENTRUINPAST_FIELDMON_1
    appear ANCIENTRUINPAST_FIELDMON_2
    appear ANCIENTRUINPAST_FIELDMON_3
    appear ANCIENTRUINPAST_FIELDMON_4
    appear ANCIENTRUINPAST_FIELDMON_5
    appear ANCIENTRUINPAST_FIELDMON_6
    appear ANCIENTRUINPAST_FIELDMON_7
    appear ANCIENTRUINPAST_FIELDMON_8
    endcallback

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

AncientRuinPastFieldMon1Script:
	faceplayer
	cry REUNICLUS
	pause 15
	loadwildmon REUNICLUS, 62
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_1
	disappear ANCIENTRUINPAST_FIELDMON_1
	end

AncientRuinPastFieldMon2Script:
	faceplayer
	cry SNORLAX
	pause 15
	loadwildmon SNORLAX, 64
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_2
	disappear ANCIENTRUINPAST_FIELDMON_2
	end

AncientRuinPastFieldMon3Script:
	faceplayer
	cry SIGILYPH
	pause 15
	loadwildmon SIGILYPH, 63
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_3
	disappear ANCIENTRUINPAST_FIELDMON_3
	end

AncientRuinPastFieldMon4Script:
	faceplayer
	cry LUCARIO
	pause 15
	loadwildmon LUCARIO, 64
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_4
	disappear ANCIENTRUINPAST_FIELDMON_4
	end

AncientRuinPastFieldMon5Script:
	faceplayer
	cry VENUSAUR
	pause 15
	loadwildmon VENUSAUR, 65
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_5
	disappear ANCIENTRUINPAST_FIELDMON_5
	end

AncientRuinPastFieldMon6Script:
	faceplayer
	cry CHARIZARD
	pause 15
	loadwildmon CHARIZARD, 65
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_6
	disappear ANCIENTRUINPAST_FIELDMON_6
	end

AncientRuinPastFieldMon7Script:
	faceplayer
	cry BLASTOISE
	pause 15
	loadwildmon BLASTOISE, 65
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_7
	disappear ANCIENTRUINPAST_FIELDMON_7
	end

AncientRuinPastFieldMon8Script:
	faceplayer
	cry MEW
	pause 15
	loadwildmon MEW, 70
	loadvar VAR_BATTLETYPE, BATTLETYPE_PERFECT_ESCAPE
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_8
	disappear ANCIENTRUINPAST_FIELDMON_8
	end

AncientRuinsPastAmbrosia:
    itemball AMBROSIA

AncientRuinsPastGuy1Script:
	jumptextfaceplayer AncientRuinsPastGuy1Text

AncientRuinsPastGuy2Script:
	jumptextfaceplayer AncientRuinsPastGuy2Text

AncientRuinsPastGirl1Script:
	jumptextfaceplayer AncientRuinsPastGirl1Text

AncientRuinsPastGirl2Script:
	jumptextfaceplayer AncientRuinsPastGirl2Text

AncientRuinsPastGuy1Text:
    text "...."
    done

AncientRuinsPastGuy2Text:
    text "...."
    done

AncientRuinsPastGirl1Text:
    text "...."
    done

AncientRuinsPastGirl2Text:
    text "...."
    done

YamiScript:
	faceplayer
    checkevent EVENT_CAUGHT_XERNEAS
    iffalse .catchXerneasFirst
	opentext
	checkevent EVENT_BEAT_YAMI
	iftrue .FightDone
.fight
	writetext YamiSeenText
	waitbutton
	closetext
	winlosstext YamiBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer RED, YAMI
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_YAMI
	opentext
	writetext YamiAfterBattleText
	waitbutton
	closetext
	special HealParty
	end
.FightDone:
	writetext YamiAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextYami
	yesorno
	iftrue .fight
	writetext RematchRefuseTextYami
	waitbutton
	closetext
	end
.catchXerneasFirst
    opentext
	writetext CatchXerneasFirstText
	waitbutton
	closetext
	end

YamiSeenText:
    text "XERNEAS has chosen"
    line "you!"

    para "You're heart is"
    line "true and pure."

    para "It gives me hope"
    line "to know someone"
    cont "from so far in"
    cont "future can have"
    cont "such virtue."

    para "XERNEAS offered"
    line "to me the great"
    cont "gift of life"
    cont "unending."

    para "But I want no"
    line "such thing."

    para "When you return"
    line "home you will"
    cont "be the only"
    cont "person in the"
    cont "world to remember"
    cont "me."

    para "The great Pharaoh"
    line "Yami."

    para "Just one of"
    line "countless long"
    cont "since passed."

    para "I will give one"
    line "one last gift."

    para "Knowledge of your"
    line "own strength."

    para "Strength to"
    line "defeat the"
    cont "strongest trainer"
    cont "in this old world."
    done

YamiBeatenText:
    text "The future"
    line "is bright."
    done

YamiAfterBattleText:
    text "Return now to"
    line "your time and"
    cont "shape your future"
    cont "as I have shaped"
    cont "mine."

    para "But know you"
    line "always have a"
    cont "home here."
    done

CatchXerneasFirstText:
    text "You are not"
    line "from here."

    para "In fact you are"
    line "not from this"
    cont "word at all."

    para "You come from"
    line "another time."

    para "I am Yami!"

    para "The great Pharaoh"

    para "You are here for"
    line "the great gift."

    para "XERNEAS"

    para "The power to live"
    line "forever."

    para "Many hav sought"
    line "such a blessing."

    para "XERNEAS shall"
    line "judge you."

    para "Should you be"
    line "unworthy."

    para "I trust you will"
    line "not cause trouble."

    para "Otherwise I will"
    line "destroy you"
    cont "myself!"
    done

RematchTextYami:
    text "How about another"
    line "duel?"
    done

RematchRefuseTextYami:
    text "Go shape"
    line "your story."
    done

AncientRuinPast_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event   5, 5, ANCIENT_RUIN_PRESENT, 3
	warp_event  33, 5, ANCIENT_RUIN_PRESENT, 3
	warp_event  19, 3, ECRUTEAK_CITY, 12

	def_coord_events

	def_bg_events

	def_object_events
	object_event 19, 9, SPRITE_ARCEUS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, XerneasScript, EVENT_CAUGHT_XERNEAS
	object_event 31, 31, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AncientRuinPastFieldMon1Script, EVENT_FIELD_MON_1
	object_event 36, 10, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AncientRuinPastFieldMon2Script, EVENT_FIELD_MON_2
	object_event  3, 10, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AncientRuinPastFieldMon3Script, EVENT_FIELD_MON_3
	object_event  8, 31, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AncientRuinPastFieldMon4Script, EVENT_FIELD_MON_4
	object_event 36, 20, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AncientRuinPastFieldMon5Script, EVENT_FIELD_MON_5
	object_event  3, 20, SPRITE_DRAGON, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AncientRuinPastFieldMon6Script, EVENT_FIELD_MON_6
	object_event 14, 20, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AncientRuinPastFieldMon7Script, EVENT_FIELD_MON_7
	object_event 20, 34, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AncientRuinPastFieldMon8Script, EVENT_FIELD_MON_8
	object_event 19,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AncientRuinsPastAmbrosia, EVENT_ANCIENT_RUINS_PAST_AMBROSIA
	object_event  6, 26, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AncientRuinsPastGuy1Script, -1
	object_event 27, 30, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AncientRuinsPastGuy2Script, -1
	object_event 13, 33, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AncientRuinsPastGirl1Script, -1
	object_event 25, 35, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AncientRuinsPastGirl2Script, -1
	object_event 19, 18, SPRITE_RED, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, YamiScript, -1

