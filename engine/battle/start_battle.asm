ShowLinkBattleParticipants:
; If we're not in a communications room,
; we don't need to be here.
	ld a, [wLinkMode]
	and a
	ret z

	farcall _ShowLinkBattleParticipants
	ld c, 150
	call DelayFrames
	call ClearTilemap
	call ClearSprites
	ret

FindFirstAliveMonAndStartBattle:
; AndrewNote - Battle Palette decided here
    ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
    call GetWorldMapLocation
	cp LANDMARK_HALL_OF_ORIGIN
    jr z, .daypal

    call GetMapEnvironment
    cp CAVE
    jr z, .nightpal
    cp INDOOR
    jr z, .daypal
    cp DUNGEON
    jr z, .daypal
    ld a, [wTimeOfDay]
	cp NITE_F
    jr z, .nightpal
.daypal
    ld a, 0
	ld [wBattleTimeOfDay], a
    jr .timeofdaypalset
.nightpal
    ld a, 1
	ld [wBattleTimeOfDay], a
.timeofdaypalset

	xor a
	ldh [hMapAnims], a
	call DelayFrame
	ld b, PARTY_LENGTH
	ld hl, wPartyMon1HP
	ld de, PARTYMON_STRUCT_LENGTH - 1

.loop
	ld a, [hli]
	or [hl]
	jr nz, .okay
	add hl, de
	dec b
	jr nz, .loop

.okay
	ld de, MON_LEVEL - MON_HP
	add hl, de
	ld a, [hl]
	ld [wBattleMonLevel], a
	predef DoBattleTransition
	farcall _LoadBattleFontsHPBar
	ld a, 1
	ldh [hBGMapMode], a
	call ClearSprites
	call ClearTilemap
	xor a
	ldh [hBGMapMode], a
	ldh [hWY], a
	ldh [rWY], a
	ldh [hMapAnims], a
	ret

; AndrewNote - battle music stuff here
PlayBattleMusic:
	push hl
	push de
	push bc

	ld a, [wOtherTrainerClass]
	and a
	jr z, .checkLocation
	ld a, [wOtherTrainerID]
	cp FIELD_MON
	jr nz, .fade

.checkLocation
    ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
    call GetWorldMapLocation
	cp LANDMARK_HALL_OF_ORIGIN
	jp z, .skip
	cp LANDMARK_SILVER_CAVE
	jp z, .skip
	cp LANDMARK_ANCIENT_RUIN
	jp z, .skip
	cp LANDMARK_MUSEUM
	jp z, .skip

.fade
    ; fade out current music
	xor a
	ld [wMusicFade], a
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	call MaxVolume

	; Are we fighting a trainer?
	ld a, [wOtherTrainerClass]
	and a
	jr nz, .trainermusic

    ; is this suicune battle
	ld a, [wBattleType]
	cp BATTLETYPE_SUICUNE
	ld de, MUSIC_SUICUNE_BATTLE
	jp z, .done
	cp BATTLETYPE_ROAMING
	jp z, .done

    ; is this kanto
	farcall RegionCheck
	ld a, e
	and a
	jr nz, .kantowild

    ; play johto music, depending on time of day
	ld de, MUSIC_JOHTO_WILD_BATTLE
	ld a, [wTimeOfDay]
	cp NITE_F
	jp nz, .done
	ld de, MUSIC_JOHTO_WILD_BATTLE_NIGHT
	jp .done

; play kanto music
.kantowild
	ld de, MUSIC_KANTO_WILD_BATTLE
	jp .done

.trainermusic
	; aggressive wild mon
	ld de, MUSIC_RIVAL_BATTLE
	ld a, [wOtherTrainerID]
	cp FIELD_MON
	jp z, .done

    ld a, [wOtherTrainerClass]

    ld de, MUSIC_EPIC_TETRIS
    cp POKEMON_PROF
    jp z, .done
    cp ADAM
    jp z, .done

    ; champoin music
	ld de, MUSIC_CHAMPION_BATTLE
	cp CHAMPION
	jp z, .done
	cp CYNTHIA
	jp z, .done

	ld de, MUSIC_ZINNIA_BATTLE
	cp RED
	jp nz, .checkWallace
    ld a, [wOtherTrainerID]
	cp ASH
	jp nz, .done
	ld de, MUSIC_FINAL_BATTLE
	jp .done

.checkWallace
	ld de, MUSIC_HOEN_CHAMPION
	cp WALLACE
	jp z, .done
	cp STEVEN
	jp z, .done

	ld de, MUSIC_FINAL_BATTLE
	cp BLUE
	jp z, .done

	; They should have included EXECUTIVEM, EXECUTIVEF, and SCIENTIST too...
	ld de, MUSIC_ROCKET_BATTLE
	cp GRUNTM
	jp z, .done
	cp GRUNTF
	jp z, .done
	cp SCIENTIST
	jp z, .done

	ld de, MUSIC_XVZ
	cp INVADER
	jp z, .done
	cp CAL
	jp z, .done

	ld de, MUSIC_HOEN_GRUNT
	cp SOLDIER
	jp z, .done
	cp EXECUTIVEM
	jp z, .done
	cp EXECUTIVEF
	jp z, .done

	ld de, MUSIC_GUILE_THEME
	cp CHUCK
	jr z, .done
	cp LT_SURGE
	jr z, .done
	cp LEON
	jr z, .done

	ld de, MUSIC_UNOVA_ELITE_FOUR
	cp SABRINA
	jr z, .done
	cp BRUNO
	jr z, .done
	cp KAREN
	jr z, .done

	ld de, MUSIC_ARCHIE_BATTLE
	cp GIOVANNI
	jr z, .done

	ld de, MUSIC_KANTO_GYM_LEADER_BATTLE
	farcall IsKantoGymLeader
	jr c, .done

	; IsGymLeader also counts CHAMPION, RED, and the Kanto gym leaders
	; but they have been taken care of before this
	ld de, MUSIC_JOHTO_GYM_LEADER_BATTLE
	farcall IsGymLeader
	jr c, .done

	ld de, MUSIC_RIVAL_BATTLE
	ld a, [wOtherTrainerClass]
	cp RIVAL1
	jr z, .done
	cp RIVAL2
	jr nz, .checkCrystal

	ld a, [wOtherTrainerID]
	cp RIVAL2_SILVER_CAVE ; Rival in Silver Cave
	jr c, .done
	ld de, MUSIC_ARCHIE_BATTLE
	jr .done

.checkCrystal
	cp CRYSTAL
	jr nz, .othertrainer
	ld a, [wOtherTrainerID]
	cp CRYSTAL_7
	jr c, .done
	ld de, MUSIC_SUICUNE_BATTLE
	jr .done

.othertrainer
	ld a, [wLinkMode]
	and a
	jr nz, .johtotrainer

	farcall RegionCheck
	ld a, e
	and a
	jr nz, .kantotrainer

.johtotrainer
	ld de, MUSIC_JOHTO_TRAINER_BATTLE
	jr .done

.kantotrainer
	ld de, MUSIC_KANTO_TRAINER_BATTLE

.done
	call PlayMusic

.skip
	pop bc
	pop de
	pop hl
	ret

ClearBattleRAM:
	xor a
	ld [wBattlePlayerAction], a
	ld [wBattleResult], a

	ld hl, wPartyMenuCursor
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	ld [wMenuScrollPosition], a
	ld [wCriticalHit], a
	ld [wBattleMonSpecies], a
	ld [wBattleParticipantsNotFainted], a
	ld [wCurBattleMon], a
	ld [wForcedSwitch], a
	ld [wTimeOfDayPal], a
	ld [wPlayerTurnsTaken], a
	ld [wEnemyTurnsTaken], a
	ld [wEvolvableFlags], a

	ld hl, wPlayerHPPal
	ld [hli], a
	ld [hl], a

	ld hl, wBattleMonDVs
	ld [hli], a
	ld [hl], a

	ld hl, wEnemyMonDVs
	ld [hli], a
	ld [hl], a

; Clear the entire BattleMons area
	ld hl, wBattle
	ld bc, wBattleEnd - wBattle
	xor a
	call ByteFill

	callfar ResetEnemyStatLevels

	call ClearWindowData

	ld hl, hBGMapAddress
	xor a ; LOW(vBGMap0)
	ld [hli], a
	ld [hl], HIGH(vBGMap0)
	ret
