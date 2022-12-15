SilverCaveOutside_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	endcallback

MtSilverPokecenterSign:
	jumpstd PokecenterSignScript

MtSilverSign:
	jumptext MtSilverSignText

SilverCaveOutsideHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_SILVER_CAVE_OUTSIDE_HIDDEN_FULL_RESTORE

MtSilverSignText:
	text "MT.SILVER"
	done

SilverCaveRival:
	trainer RIVAL2, RIVAL2_SILVER_CAVE, EVENT_BEAT_SILVER_CAVE_RIVAL, SilverCaveRivalSeenText, SilverCaveRivalBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverCaveRivalAfterBattleText
	waitbutton
	closetext
	end

SilverCaveRivalSeenText:
    text "Hello <PLAYER>"

    para "We have been"
    line "through a lot"
    cont "together."

    para "Haven't we..."

    para "My #MON"
    line "and I are now"
    cont "united with a"
    cont "single purpose."

    para "To become all"
    line "that we can be."

    para "We want to thank"
    line "you."

    para "In the only way"
    line "we can."
    done

SilverCaveRivalBeatenText:
    text "We have a lot"
    line "further to"
    cont "go."
    done

SilverCaveRivalAfterBattleText:
    text "I always wanted"
    line "to prove myself"
    cont "to my father."

    para "I don't care"
    line "about that"
    cont "anymore."

    para "I am surrounded"
    line "by friends who"
    cont "I respect far"
    cont "more."

    para "I consider you"
    line "one of them."
    done

SilverCaveOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 19, SILVER_CAVE_POKECENTER_1F, 1
	warp_event 18, 11, SILVER_CAVE_ROOM_1, 1

	def_coord_events

	def_bg_events
	bg_event 24, 19, BGEVENT_READ, MtSilverPokecenterSign
	bg_event 17, 13, BGEVENT_READ, MtSilverSign
	bg_event  9, 25, BGEVENT_ITEM, SilverCaveOutsideHiddenFullRestore

	def_object_events
	object_event 25, 20, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, SilverCaveRival, -1

