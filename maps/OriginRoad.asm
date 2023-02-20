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
	text "What you again?"
	line "Well, well!"

	para "You've been a"
	line "stranger."

	para "You must be"
	line "searching for"
	cont "the ultimate"
	cont "treasure!"

	para "It's just up"
	line "ahead."

	para "But don't"
	line "get your"
	cont "hopes up."

	para "There is a"
	line "group of max"
	cont "level trainers."

	para "I could not"
	line "defeat them."

	para "Even with my"
	line "cheat codes!"

	para "Oh, you caught"
	line "me!"

	para "Heh heh, this"
	line "is what I do"
	cont "my friend."

	para "The #MON"
	line "I'll be taking"
	cont "from you."

	para "That's the"
	line "real treasure!"
	done

InvaderMasterPatchesBeatenText:
	text "...Oh"
	line "You, I..."
	cont "Let's just"
	cont "calm down."
	done

InvaderMasterPatchesVictoryText:
	text "Phew."
	para "The righteous"
	line "prevail again."
	done

InvaderMasterPatchesAfterText:
	text "No hard"
	line "feelings!"

	para "You might be"
	line "able to beat"
	cont "the phantoms"
	cont "ahead."

	para "I'm glad we're"
	line "friends again."

	para "Heh, heh, heh..."
	done

OriginRoad_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 8, 0, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_DEEP_RED, OBJECTTYPE_TRAINER, 4, InvaderMasterPatches, -1

