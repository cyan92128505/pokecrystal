	object_const_def
	const CIANWOODCITY_STANDING_YOUNGSTER
	const CIANWOODCITY_POKEFAN_M
	const CIANWOODCITY_LASS
	const CIANWOODCITY_ROCK3
	const CIANWOODCITY_ROCK5
	const CIANWOODCITY_POKEFAN_F
	const CIANWOODCITY_EUSINE
	const CIANWOODCITY_SUICUNE
    const CIANWOODCITY_FIELDMON_1
    const CIANWOODCITY_FIELDMON_2
    const CIANWOODCITY_FIELDMON_3
    const CIANWOODCITY_FIELDMON_4
    const CIANWOODCITY_FIELDMON_5
    const CIANWOODCITY_HOEN_SPY

CianwoodCity_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_CIANWOODCITY_NOTHING
	scene_script .DummyScene1 ; SCENE_CIANWOODCITY_SUICUNE_AND_EUSINE

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPointAndSuicune
	callback MAPCALLBACK_OBJECTS, .CianwoodCityFieldMon

.DummyScene0:
	end

.DummyScene1:
	end

.CianwoodCityFieldMon:
; Pokemon which always appear
    appear CIANWOODCITY_FIELDMON_2
    appear CIANWOODCITY_FIELDMON_3
    appear CIANWOODCITY_FIELDMON_4
    appear CIANWOODCITY_FIELDMON_5

    random 2
    ifequal 1, .spawn1
    disappear CIANWOODCITY_FIELDMON_1
    sjump .end
.spawn1
    appear CIANWOODCITY_FIELDMON_1

.end
    endcallback

.FlyPointAndSuicune:
	setflag ENGINE_FLYPOINT_CIANWOOD
	setevent EVENT_EUSINE_IN_BURNED_TOWER
	checkevent EVENT_FOUGHT_EUSINE
	iffalse .Done
	disappear CIANWOODCITY_EUSINE
.Done:
	endcallback

CianwoodCitySuicuneAndEusine:
	turnobject PLAYER, UP
	showemote EMOTE_SHOCK, PLAYER, 15
	pause 15
	playsound SFX_WARP_FROM
	applymovement CIANWOODCITY_SUICUNE, CianwoodCitySuicuneApproachMovement
	turnobject PLAYER, DOWN
	pause 15
	playsound SFX_WARP_FROM
	applymovement CIANWOODCITY_SUICUNE, CianwoodCitySuicuneDepartMovement
	disappear CIANWOODCITY_SUICUNE
	pause 10
	setscene SCENE_CIANWOODCITY_NOTHING
	clearevent EVENT_SAW_SUICUNE_ON_ROUTE_42
	setmapscene ROUTE_42, SCENE_ROUTE42_SUICUNE
	checkevent EVENT_FOUGHT_EUSINE
	iftrue .Done
	setevent EVENT_FOUGHT_EUSINE
	playmusic MUSIC_MYSTICALMAN_ENCOUNTER
	appear CIANWOODCITY_EUSINE
	applymovement CIANWOODCITY_EUSINE, CianwoodCityEusineApproachMovement
	opentext
	writetext EusineSuicuneText
	waitbutton
	closetext
	winlosstext EusineBeatenText, 0
	setlasttalked CIANWOODCITY_EUSINE
	loadtrainer MYSTICALMAN, EUSINE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_MYSTICALMAN_ENCOUNTER
	opentext
	writetext EusineAfterText
	waitbutton
	closetext
	applymovement CIANWOODCITY_EUSINE, CianwoodCityEusineDepartMovement
	disappear CIANWOODCITY_EUSINE
	pause 20
	special FadeOutMusic
	playmapmusic
	pause 10
.Done:
	end

CianwoodCityChucksWife:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM02_FLY
	iftrue .GotFly
	writetext ChucksWifeEasierToFlyText
	promptbutton
	checkevent EVENT_BEAT_CHUCK
	iftrue .BeatChuck
	writetext ChucksWifeBeatChuckText
	waitbutton
	closetext
	end

.BeatChuck:
	writetext ChucksWifeGiveHMText
	promptbutton
	verbosegiveitem HM_FLY
	iffalse .Done
	setevent EVENT_GOT_HM02_FLY
	writetext ChucksWifeFlySpeechText
	promptbutton
.GotFly:
	writetext ChucksWifeChubbyText
	waitbutton
.Done:
	closetext
	end

CianwoodCityYoungster:
	jumptextfaceplayer CianwoodCityYoungsterText

CianwoodCityPokefanM:
	jumptextfaceplayer CianwoodCityPokefanMText

CianwoodCityLass:
	jumptextfaceplayer CianwoodCityLassText

CianwoodCityUnusedScript: ; unreferenced
	jumptextfaceplayer CianwoodCityUnusedText

CianwoodCitySign:
	jumptext CianwoodCitySignText

CianwoodGymSign:
	jumptext CianwoodGymSignText

CianwoodPharmacySign:
	jumptext CianwoodPharmacySignText

CianwoodPhotoStudioSign:
	jumptext CianwoodPhotoStudioSignText

CianwoodPokeSeerSign:
	jumptext CianwoodPokeSeerSignText

CianwoodBeachSign:
	jumptext CianwoodBeachSignText

CianwoodPokecenterSign:
	jumpstd PokecenterSignScript

CianwoodCityRock:
	jumpstd SmashRockScript

CianwoodCityHiddenRevive:
	hiddenitem REVIVE, EVENT_CIANWOOD_CITY_HIDDEN_REVIVE

CianwoodCityHiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_CIANWOOD_CITY_HIDDEN_MAX_ETHER

CianwoodCitySuicuneApproachMovement:
	set_sliding
	fast_jump_step DOWN
	fast_jump_step DOWN
	fast_jump_step RIGHT
	remove_sliding
	step_end

CianwoodCitySuicuneDepartMovement:
	set_sliding
	fast_jump_step RIGHT
	fast_jump_step UP
	fast_jump_step RIGHT
	fast_jump_step RIGHT
	remove_sliding
	step_end

CianwoodCityEusineApproachMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

CianwoodCityEusineDepartMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

ChucksWifeEasierToFlyText:
	text "You crossed the"
	line "sea to get here?"

	para "That must have"
	line "been hard."

	para "It would be much"
	line "easier if your"

	para "#MON knew how"
	line "to FLY…"
	done

ChucksWifeBeatChuckText:
	text "But you can't use"
	line "FLY without this"
	cont "city's GYM BADGE."

	para "If you beat the"
	line "GYM LEADER here,"
	cont "come see me."

	para "I'll have a nice"
	line "gift for you."
	done

ChucksWifeGiveHMText:
	text "That's CIANWOOD's"
	line "GYM BADGE!"

	para "Then you should"
	line "take this HM."
	done

ChucksWifeFlySpeechText:
	text "Teach FLY to your"
	line "#MON."

	para "You will be able"
	line "to FLY instantly"

	para "to anywhere you "
	line "have visited."
	done

ChucksWifeChubbyText:
	text "My husband lost to"
	line "you, so he needs"
	cont "to train harder."

	para "That's good, since"
	line "he was getting a"
	cont "little chubby."
	done

CianwoodCityYoungsterText:
	text "If you use FLY,"
	line "you can get back"

	para "to OLIVINE in-"
	line "stantly."
	done

CianwoodCityPokefanMText:
	text "Boulders to the"
	line "north of town can"
	cont "be crushed."

	para "They may be hiding"
	line "something."

	para "Your #MON could"
	line "use ROCK SMASH to"
	cont "break them."
	done

CianwoodCityLassText:
	text "CHUCK, the GYM"
	line "LEADER, spars with"

	para "his fighting #-"
	line "MON."
	done

CianwoodCityUnusedText:
	text "There are several"
	line "islands between"
	cont "here and OLIVINE."

	para "A mythical sea"
	line "creature supposed-"
	cont "ly lives there."
	done

EusineSuicuneText:
	text "EUSINE: Yo,"
	line "<PLAYER>."

	para "Wasn't that"
	line "SUICUNE just now?"

	para "I only caught a"
	line "quick glimpse, but"

	para "I thought I saw"
	line "SUICUNE running on"
	cont "the waves."

	para "SUICUNE is beau-"
	line "tiful and grand."

	para "And it races"
	line "through towns and"

	para "roads at simply"
	line "awesome speeds."

	para "It's wonderful…"

	para "I want to see"
	line "SUICUNE up close…"

	para "I've decided."

	para "I'll battle you as"
	line "a trainer to earn"
	cont "SUICUNE's respect!"

	para "Come on, <PLAYER>."
	line "Let's battle now!"
	done

EusineBeatenText:
	text "I hate to admit"
	line "it, but you win."
	done

EusineAfterText:
	text "You're amazing,"
	line "<PLAYER>!"

	para "No wonder #MON"
	line "gravitate to you."

	para "I get it now."

	para "I'm going to keep"
	line "searching for"
	cont "SUICUNE."

	para "I'm sure we'll see"
	line "each other again."

	para "See you around!"
	done

CianwoodCitySignText:
	text "CIANWOOD CITY"

	para "A Port Surrounded"
	line "by Rough Seas"
	done

CianwoodGymSignText:
	text "CIANWOOD CITY"
	line "#MON GYM"

	para "LEADER: CHUCK"

	para "His Roaring Fists"
	line "Do the Talking"
	done

CianwoodPharmacySignText:
	text "500 Years of"
	line "Tradition"

	para "CIANWOOD CITY"
	line "PHARMACY"

	para "We Await Your"
	line "Medicinal Queries"
	done

CianwoodPhotoStudioSignText:
	text "CIANWOOD CITY"
	line "PHOTO STUDIO"

	para "Take a Snapshot as"
	line "a Keepsake!"
	done

CianwoodPokeSeerSignText:
	text "THE # SEER"
	line "AHEAD"
	done

CianwoodBeachSignText:
	text "CIANWOOD"
	line "BEACH"
	done

CianwoodCityFieldMon1Script:
	trainer POLIWRATH, FIELD_MON, EVENT_FIELD_MON_1, CianwoodCityPokemonAttacksText, 44, 0, .script
.script
    disappear CIANWOODCITY_FIELDMON_1
    end

CianwoodCityPokemonAttacksText:
	text "Wild #MON"
	line "attacks!"
	done

CianwoodCityFieldMon2Script:
	faceplayer
	cry MACHOKE
	pause 15
	loadwildmon MACHOKE, 32
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_2
	disappear CIANWOODCITY_FIELDMON_2
	end

CianwoodCityFieldMon3Script:
	faceplayer
	cry GURDURR
	pause 15
	loadwildmon GURDURR, 33
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_3
	disappear CIANWOODCITY_FIELDMON_3
	end

CianwoodCityFieldMon4Script:
	faceplayer
	cry POLIWHIRL
	pause 15
	loadwildmon POLIWHIRL, 31
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_4
	disappear CIANWOODCITY_FIELDMON_4
	end
	
CianwoodCityFieldMon5Script:
	faceplayer
	cry STARAPTOR
	pause 15
	loadwildmon STARAPTOR, 32
	startbattle
	reloadmapafterbattle
	setevent EVENT_FIELD_MON_5
	disappear CIANWOODCITY_FIELDMON_5
	end
	
HoenSpyScript:
    faceplayer
	opentext
	writetext HoenSpySeenText
	waitbutton
	closetext
	winlosstext HoenSpyBeatenText, HoenSpyWinsText
	loadtrainer SOLDIER, SOLDIER_SPY
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SOLDIER_10
	opentext
	writetext HoenSpyAfterBattleText
	waitbutton
    closetext
    disappear CIANWOODCITY_HOEN_SPY
    reloadmap
	end
HoenSpySeenText:
    text "Oh um..."

    para "Run along now"

    para "I'm just a sailor"
    line "making a map of"
    cont "the JOHTO coast."

    para "Shouldn't you be"
    line "collecting your"
    cont "badges."

    para "There is a GYM"
    line "LEADER here."

    para "SURGE...."

    para "I mean CHUCK!"

    para "...."

    para "Damn my cover is"
    line "blown."

    para "Sorry kid but I"
    line "can't let anyone"
    cont "suspect me."

    para "You have to go!"
    done
HoenSpyBeatenText:
    text "I'm a double"
    line "agent!"
    done
HoenSpyWinsText:
    text "You saw nothing."
    done
HoenSpyAfterBattleText:
    text "I have already"
    line "relayed the"
    cont "relevant info."

    para "We wont let you"
    line "squander your"
    cont "land and #MON"
    cont "much longer."

    para "Go home kid."

    para "And stay out of"
    line "our way or you"
    cont "will suffer."
    done

CianwoodCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 53, MANIAS_HOUSE, 1
	warp_event  8, 55, CIANWOOD_GYM, 1
	warp_event 23, 55, CIANWOOD_POKECENTER_1F, 1
	warp_event 15, 59, CIANWOOD_PHARMACY, 1
	warp_event  9, 43, CIANWOOD_PHOTO_STUDIO, 1
	warp_event 15, 49, CIANWOOD_LUGIA_SPEECH_HOUSE, 1
	warp_event  5, 29, POKE_SEERS_HOUSE, 1

	def_coord_events
	coord_event 11, 28, SCENE_CIANWOODCITY_SUICUNE_AND_EUSINE, CianwoodCitySuicuneAndEusine

	def_bg_events
	bg_event 20, 46, BGEVENT_READ, CianwoodCitySign
	bg_event  7, 57, BGEVENT_READ, CianwoodGymSign
	bg_event 24, 55, BGEVENT_READ, CianwoodPokecenterSign
	bg_event 19, 59, BGEVENT_READ, CianwoodPharmacySign
	bg_event  8, 44, BGEVENT_READ, CianwoodPhotoStudioSign
	bg_event  8, 36, BGEVENT_READ, CianwoodPokeSeerSign
	bg_event 12, 22, BGEVENT_READ, CianwoodBeachSign
	bg_event  4, 31, BGEVENT_ITEM, CianwoodCityHiddenRevive
	bg_event  5, 41, BGEVENT_ITEM, CianwoodCityHiddenMaxEther

	def_object_events
	object_event 21, 49, SPRITE_STANDING_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CianwoodCityYoungster, -1
	object_event 17, 45, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityPokefanM, -1
	object_event 14, 54, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityLass, -1
	object_event  4, 37, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
	object_event 10, 39, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
	object_event 10, 58, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityChucksWife, -1
	object_event 11, 33, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CIANWOOD_CITY_EUSINE
	object_event 10, 26, SPRITE_SUICUNE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SAW_SUICUNE_AT_CIANWOOD_CITY
	object_event 15, 14, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 2, CianwoodCityFieldMon1Script, EVENT_FIELD_MON_1
	object_event 12, 8, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 2, CianwoodCityFieldMon2Script, EVENT_FIELD_MON_2
	object_event 7,  38, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CianwoodCityFieldMon3Script, EVENT_FIELD_MON_3
	object_event 25, 46, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CianwoodCityFieldMon4Script, EVENT_FIELD_MON_4
	object_event 7, 16, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CianwoodCityFieldMon5Script, EVENT_FIELD_MON_5
	object_event 23, 8, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, HoenSpyScript, EVENT_BEAT_SOLDIER_10

