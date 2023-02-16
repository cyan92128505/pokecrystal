OriginRoad_MapScripts:
	def_scene_scripts

	def_callbacks

InvaderMasterPatches:
	trainer INVADER, MASTER_PATCHES, EVENT_BEAT_MASTER_PATCHES, InvaderMasterPatchesSeenText, InvaderMasterPatchesBeatenText, InvaderMasterPatchesVictoryText, .Script

.Script:
	endifjustbattled
	opentext
	writetext InvaderMasterPatchesAfterText
	waitbutton
	closetext
	end

InvaderMasterPatchesSeenText:
	text "Oh hello"
	line "again friend."

	para "You must be"
	line "searching for"
	cont "the ultimate"
	cont "treasure!"

	para "Its just up"
	line "ahead."

	para "But don't"
	line "get your"
	cont "hopes up."

	para "There is a"
	line "group of max"
	cont "level trainers"
	cont "up ahead."

	para "I could not"
	line "defeat them."

	para "Even with my"
	line "special"
	cont "techniques!"

	para "Say..."

	para "You have some"
	line "powerful souls"
	cont "on you."

	para "Would be a"
	line "shame if they"
	cont "were to go to"
	cont "waste."
	done

InvaderMasterPatchesBeatenText:
	text "Alright!"
	line "Alright!"
	cont "Calm down"
	cont "friend."
	done

InvaderMasterPatchesVictoryText:
	text "Good Game"
	line "my friend!"
	done

InvaderMasterPatchesAfterText:
	text "No hard"
	line "feelings!"

	para "You might be"
	line "able to beat"
	cont "the phantoms"
	cont "ahead."

	para "I'll always"
	line "be here for"
	cont "you."

	para "My friend."
	done

OriginRoad_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 8, 0, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 4, InvaderMasterPatches, -1

