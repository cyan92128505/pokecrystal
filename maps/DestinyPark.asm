DestinyPark_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Weather

.Weather:
	setval WEATHER_NONE
	writemem wFieldWeather
	endcallback

MasterBrockScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_BROCK
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer BROCK, MASTER_BROCK
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_BROCK
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleText
    waitbutton
    closetext
    end

MasterMistyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_MISTY
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer MISTY, MASTER_MISTY
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_MISTY
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleText
    waitbutton
    closetext
    end

MasterSurgeScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_SURGE
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer LT_SURGE, MASTER_SURGE
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_SURGE
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleText
    waitbutton
    closetext
    end

MasterErikaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_ERIKA
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer ERIKA, MASTER_ERIKA
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_ERIKA
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleText
    waitbutton
    closetext
    end

MasterJanineScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_JANINE
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer JANINE, MASTER_JANINE
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_JANINE
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleText
    waitbutton
    closetext
    end

MasterWillScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_WILL
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer WILL, MASTER_WILL
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_WILL
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleText
    waitbutton
    closetext
    end

MasterBlaineScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_BLAINE
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer BLAINE, MASTER_BLAINE
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_BLAINE
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleText
    waitbutton
    closetext
    end

MasterFalknerScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_FALKNER
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer FALKNER, MASTER_FALKNER
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_FALKNER
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleText
    waitbutton
    closetext
    end

MasterBugsyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_BUGSY
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer BUGSY, MASTER_BUGSY
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_BUGSY
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleText
    waitbutton
    closetext
    end

MasterWhitneyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_WHITNEY
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer WHITNEY, MASTER_WHITNEY
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_WHITNEY
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleText
    waitbutton
    closetext
    end

MasterMortyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_MORTY
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer MORTY, MASTER_MORTY
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_MORTY
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleText
    waitbutton
    closetext
    end

MasterChuckScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_CHUCK
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer CHUCK, MASTER_CHUCK
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_CHUCK
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleText
    waitbutton
    closetext
    end

MasterJasmineScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_JASMINE
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer JASMINE, MASTER_JASMINE
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_JASMINE
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleText
    waitbutton
    closetext
    end

MasterPryceScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_PRYCE
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer PRYCE, MASTER_PRYCE
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_PRYCE
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleText
    waitbutton
    closetext
    end

MasterClairScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_CLAIR
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer CLAIR, MASTER_CLAIR
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_CLAIR
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleText
    waitbutton
    closetext
    end

MasterEusineScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_EUSINE
	iftrue .FightDone
.fight
	writetext DefaultSeenText
	waitbutton
	closetext
	winlosstext DefaultBeatenText, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer MYSTICALMAN, MASTER_EUSINE
	startbattle
	ifequal LOSE, .Lose
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_EUSINE
	;opentext
	;writetext DefaultAfterBattleText
	;waitbutton
	;closetext
	special HealParty
	end
.FightDone:
	writetext DefaultAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextDestinyPark
	yesorno
	iftrue .fight
	writetext RematchRefuseTextDestinyPark
	waitbutton
	closetext
	end
.Lose
    special HealParty
    reloadmap
    opentext
    writetext DefaultLoseAfterBattleText
    waitbutton
    closetext
    end

DefaultSeenText:
    text "Let's fight!"
    done

DefaultBeatenText:
    text "Well done!"
    done

DefaultAfterBattleText:
    text "You done well!"
    done
    
RematchTextDestinyPark:
    text "Shall we have"
    line "another match?"
    done

RematchRefuseTextDestinyPark:
    text "I will always"
    line "be here."
    done

DefaultLoseAfterBattleText:
    text "Better luck"
    line "next time."
    done

SetUpCal:
    ld a, BANK(sPokemonData)
	call OpenSRAM
	xor a
	ld d, a
	ld e, a
	;ld de, wMysteryGiftStaging
	;ld de, wMysteryGiftTrainer
	ld bc, sPokemonData + wPartyMons - wPokemonData
	ld hl, sPokemonData + wPartySpecies - wPokemonData
.loop
	ld a, [hli]
	cp -1
	jr z, .party_end
	cp EGG
	jr z, .next
	push hl
	; copy level
	ld hl, MON_LEVEL
	add hl, bc
	ld a, [hl]
	ld [de], a
	inc de
	; copy species
	ld hl, MON_SPECIES
	add hl, bc
	ld a, [hl]
	ld [de], a
	inc de
	; copy moves
	ld hl, MON_MOVES
	add hl, bc
	push bc
	ld bc, NUM_MOVES
	call CopyBytes
	pop bc
	pop hl
.next
	push hl
	ld hl, PARTYMON_STRUCT_LENGTH
	add hl, bc
	ld b, h
	ld c, l
	pop hl
	jr .loop
.party_end
	ld a, -1
	ld [de], a
	;ld a, wMysteryGiftTrainerEnd - wMysteryGiftTrainer
	;ld [wUnusedMysteryGiftStagedDataLength], a
	ret

DestinyPark_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, DESTINY_FRONTIER, 3
	warp_event  5, 15, DESTINY_FRONTIER, 3
	warp_event  18, 15, DESTINY_FRONTIER, 4
	warp_event  19, 15, DESTINY_FRONTIER, 4
	warp_event  32, 15, DESTINY_FRONTIER, 5
	warp_event  33, 15, DESTINY_FRONTIER, 5
	warp_event  4, 35, DESTINY_FRONTIER, 6
	warp_event  5, 35, DESTINY_FRONTIER, 6
	warp_event  18, 35, DESTINY_FRONTIER, 7
	warp_event  19, 35, DESTINY_FRONTIER, 7
	warp_event  32, 35, DESTINY_FRONTIER, 8
	warp_event  33, 35, DESTINY_FRONTIER, 8
	warp_event  4, 55, DESTINY_FRONTIER, 9
	warp_event  5, 55, DESTINY_FRONTIER, 9
	warp_event  18, 55, DESTINY_FRONTIER, 10
	warp_event  19, 55, DESTINY_FRONTIER, 10

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  8, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterBrockScript, -1
	object_event  4,  2, SPRITE_MISTY, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterMistyScript, -1
	object_event 17,  5, SPRITE_SURGE, SPRITEMOVEDATA_STANDING_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterSurgeScript, -1
	object_event 33,  2, SPRITE_ERIKA, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterErikaScript, -1
	object_event 32, 21, SPRITE_JANINE, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterJanineScript, -1
	object_event 18, 22, SPRITE_WILL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MasterWillScript, -1
	object_event  4, 48, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterBlaineScript, -1
	object_event  4, 22, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterFalknerScript, -1
	object_event  5, 22, SPRITE_BUGSY, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterBugsyScript, -1
	object_event 32,  2, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterWhitneyScript, -1
	object_event 33, 21, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterMortyScript, -1
	object_event 20,  5, SPRITE_CHUCK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterChuckScript, -1
	object_event 19, 22, SPRITE_JASMINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterJasmineScript, -1
	object_event  4, 42, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MasterPryceScript, -1
	object_event 18, 42, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MasterClairScript, -1
	object_event 19, 42, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MasterEusineScript, -1
