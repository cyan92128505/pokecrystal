GetNextTrainerDataByte:
	ld a, [wTrainerGroupBank]
	call GetFarByte
	inc hl
	ret

ReadTrainerParty:
	ld a, [wInBattleTowerBattle]
	bit 0, a
	ret nz

	ld a, [wLinkMode]
	and a
	ret nz

	ld hl, wOTPartyCount
	xor a
	ld [hli], a
	dec a
	ld [hl], a

	ld hl, wOTPartyMons
	ld bc, PARTYMON_STRUCT_LENGTH * PARTY_LENGTH
	xor a
	call ByteFill

	ld a, [wOtherTrainerClass]

	dec a
	ld c, a
	ld b, 0
	ld hl, TrainerGroups
	add hl, bc
	add hl, bc
    add hl, bc
	ld a, [hli]
	ld [wTrainerGroupBank], a
	ld a, [hli]
	ld h, [hl]
	ld l, a

	ld a, [wOtherTrainerID]
	ld b, a
.skip_trainer
	dec b
	jr z, .got_trainer
.loop
	call GetNextTrainerDataByte
	cp -1
	jr nz, .loop
	jr .skip_trainer
.got_trainer

.skip_name
	call GetNextTrainerDataByte
	cp "@"
	jr nz, .skip_name

	call GetNextTrainerDataByte
	ld [wOtherTrainerType], a
	ld d, h
	ld e, l
	call ReadTrainerPartyPieces

.done
	jp ComputeTrainerReward

ReadTrainerPartyPieces:
	ld h, d
	ld l, e

.loop
; end?
	call GetNextTrainerDataByte
	cp -1
	ret z

; level
	ld [wCurPartyLevel], a

; species
	call GetNextTrainerDataByte
	ld [wCurPartySpecies], a

; add to party
	ld a, OTPARTYMON
	ld [wMonType], a
	push hl
	predef TryAddMonToParty
	pop hl

; nickname?
	ld a, [wOtherTrainerType]
	bit TRAINERTYPE_NICKNAME_F, a
	jr z, .no_nickname

	call GetNextTrainerDataByte
	cp "@"
	jr z, .no_nickname


	push de

	ld de, wStringBuffer2
	ld [de], a
	inc de
.copy_nickname
	call GetNextTrainerDataByte
	ld [de], a
	inc de
	cp "@"
	jr nz, .copy_nickname

	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMonNicknames
	ld bc, MON_NAME_LENGTH
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, wStringBuffer2
	ld bc, MON_NAME_LENGTH
	call CopyBytes
	pop hl

	pop de
.no_nickname

; dvs?
	ld a, [wOtherTrainerType]
	bit TRAINERTYPE_DVS_F, a
	jr z, .no_dvs

	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1DVs
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl

; When reading DVs, treat PERFECT_DV as $ff
	call GetNextTrainerDataByte
	cp PERFECT_DV
	jr nz, .atk_def_dv_ok
	ld a, $ff
.atk_def_dv_ok
	ld [de], a
	inc de
	call GetNextTrainerDataByte
	cp PERFECT_DV
	jr nz, .spd_spc_dv_ok
	ld a, $ff
.spd_spc_dv_ok
	ld [de], a
.no_dvs

; stat exp?
	ld a, [wOtherTrainerType]
	bit TRAINERTYPE_STAT_EXP_F, a
	jr z, .default_stat_exp ; is the trainer defined as one with stat exp, if not skip to default

	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1StatExp
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl ; de is now wOTPartyMon1StatExp

	ld c, NUM_EXP_STATS ; c is how many stats have stat exp

.stat_exp_loop
; When reading stat experience, treat PERFECT_STAT_EXP as $FFFF
	call GetNextTrainerDataByte ; this is used to allow trainers to be defined in different banks
   	dec hl
	cp LOW(PERFECT_STAT_EXP)
	jr nz, .not_perfect_stat_exp ; jump if the stat exp is not max
	inc hl
	call GetNextTrainerDataByte
    dec hl
	cp HIGH(PERFECT_STAT_EXP)
	dec hl
	jr nz, .not_perfect_stat_exp ; jump if the stat exp is not max
	ld a, $ff ; a is 255 for max stat exp
rept 2
	ld [de], a
	inc de
	inc hl
endr ; above sets both parts of de to 255 and increments hl in turn
	jr .continue_stat_exp ; jump to next stat if we used perfect stat exp

.not_perfect_stat_exp
rept 2
    call GetNextTrainerDataByte
	ld [de], a ; set de to the defined stat exp
	inc de
endr
.continue_stat_exp
	dec c ; decrease c, the count of stats to do this for
	jr nz, .stat_exp_loop ; loop back around for next stat
	jp .no_stat_exp

.default_stat_exp
    push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1StatExp
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl ; de is now wOTPartyMon1StatExp

; AndrewNote - stat exp, trainers to have a default amount of stat exp based on badges
; 0 badges = 0
; 1-2 badges = $1000 = 4096 stat exp = 16/64 extra stat at lvl 100
; 3-4 badges = $4000 = 16384 stat exp = 32/64 extra stat at lvl 100
; 5-7 badges = $9000 = 36864 stat exp = 48/64 extra stat at lvl 100
; 8+ badges = $FFFF = 65536 stat exp = 64/64 extra stat at lvl 100
    push hl

    ; boss battles have max stat exp
    ld a, [wBattleType]
    cp BATTLETYPE_BOSS_BATTLE
    jr z, .fullStatExp

    ; trainer classes which always have max stat exp
	ld a, [wTrainerClass]
	cp POKEMON_PROF
	jr z, .fullStatExp
	cp RED
	jr z, .fullStatExp
	cp BLUE
	jr z, .fullStatExp
	cp CHAMPION
	jr z, .fullStatExp
	cp INVADER
	jr z, .fullStatExp
	cp CYNTHIA
	jr z, .fullStatExp
	cp STEVEN
	jr z, .fullStatExp
	cp LEON
	jr z, .fullStatExp
	cp ADAM
	jr z, .fullStatExp

	; decide stat exp based on badges
    ld hl, wJohtoBadges
    bit RISINGBADGE, [hl]
	jr nz, .fullStatExp

    bit STORMBADGE, [hl]
    jr nz, .highStatExp

    bit PLAINBADGE, [hl]
    jr nz, .mediumStatExp

    bit ZEPHYRBADGE, [hl]
    jp nz, .lowStatExp

    pop hl
    jp .no_stat_exp

.fullStatExp
rept 6
    ld a, $ff
	ld [de], a
	inc de
	ld [de], a
	inc de
endr
	pop hl
	jp .no_stat_exp

.highStatExp
rept 6
    ld a, $90
	ld [de], a
	inc de
	ld a, $00
	ld [de], a
	inc de
endr
	pop hl
	jr .no_stat_exp

.mediumStatExp
rept 6
    ld a, $40
	ld [de], a
	inc de
	ld a, $00
	ld [de], a
	inc de
endr
	pop hl
	jr .no_stat_exp

.lowStatExp
rept 6
    ld a, $10
	ld [de], a
	inc de
	ld a, $00
	ld [de], a
	inc de
endr
	pop hl
	jr .no_stat_exp

.no_stat_exp

; item?
	ld a, [wOtherTrainerType]
	bit TRAINERTYPE_ITEM_F, a
	jr z, .no_item

	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1Item
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl

	call GetNextTrainerDataByte
	ld [de], a
.no_item

; moves?
	ld a, [wOtherTrainerType]
	bit TRAINERTYPE_MOVES_F, a
	jr z, .no_moves

	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1Moves
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl

	ld b, NUM_MOVES
.copy_moves
	call GetNextTrainerDataByte
	ld [de], a
	inc de
	dec b
	jr nz, .copy_moves

    push hl

	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1
	call GetPartyLocation
	ld d, h
	ld e, l
	ld hl, MON_PP
	add hl, de

	push hl
	ld hl, MON_MOVES
	add hl, de
	pop de

	ld b, NUM_MOVES
.copy_pp
	ld a, [hli]
	and a
	jr z, .copied_pp

	push hl
	push bc
	dec a
	ld hl, Moves + MOVE_PP
	ld bc, MOVE_LENGTH
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	pop bc
	pop hl

	ld [de], a
	inc de
	dec b
	jr nz, .copy_pp
.copied_pp

	pop hl
.no_moves

; Custom DVs and state exp affect stats,
; so recalculate them after TryAddMonToParty
	;ld a, [wOtherTrainerType]
	;and TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	;jr z, .no_stat_recalc

	push hl

	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1MaxHP
	call GetPartyLocation
	ld d, h
	ld e, l

	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1StatExp - 1
	call GetPartyLocation

; recalculate stats
	ld b, TRUE
	push de
	predef CalcMonStats
	pop hl

; copy max HP to current HP
	inc hl
	ld c, [hl]
	dec hl
	ld b, [hl]
	dec hl
	ld [hl], c
	dec hl
	ld [hl], b

	pop hl
.no_stat_recalc
	jp .loop

ReadPlayerPartyAsTrainerParty:
    ; clear OT party count
	ld hl, wOTPartyCount
	xor a
	ld [hli], a
	dec a
	ld [hl], a

    ; clear OT party mons
	ld hl, wOTPartyMons
	ld bc, PARTYMON_STRUCT_LENGTH * PARTY_LENGTH
	xor a
	call ByteFill

; now get the trainer class and id so we can get the trainer name
	ld a, [wOtherTrainerClass]
	dec a
	ld c, a
	ld b, 0
	ld hl, TrainerGroups
	add hl, bc
	add hl, bc
    add hl, bc
	ld a, [hli]
	ld [wTrainerGroupBank], a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wOtherTrainerID]
	ld b, a
.skip_trainer
	dec b
	jr z, .got_trainer
.loop
	call GetNextTrainerDataByte
	cp -1
	jr nz, .loop
	jr .skip_trainer
.got_trainer

.skip_name
	call GetNextTrainerDataByte
	cp "@"
	jr nz, .skip_name

; here a is the trainer type eg TRAINERTYPE_ITEM_MOVES
	call GetNextTrainerDataByte
	ld [wOtherTrainerType], a

; hl is the trainer data from parties, copy it to de
	ld d, h
	ld e, l
	call ReadPlayerPartyAsTrainerPartyPieces

.done
	jp ComputeTrainerReward

ReadPlayerPartyAsTrainerPartyPieces:
; copy de back to hl, why?
	ld h, d
	ld l, e

	ld a, [wPartyCount]
	ld c, a
	ld b, 1

.loop
; end?
; are we at the end of the trainer data, ret if so
    push bc

; level
    ld hl, wPartyMon1Level
    pop bc
    call IncrementToCurrentMon
    push bc
	ld a, [hl]
    ld [wCurPartyLevel], a

; species
	ld hl, wPartyMon1Species
    pop bc
    call IncrementToCurrentMon
    push bc
	ld a, [hl]
	ld [wCurPartySpecies], a

; add to party
	ld a, OTPARTYMON
	ld [wMonType], a
	predef TryAddMonToParty

; stat exp?
    push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1StatExp
	call GetPartyLocation
	ld d, h
	ld e, l
	pop hl ; de is now wOTPartyMon1StatExp

    push hl
	; decide stat exp based on badges
    ld hl, wJohtoBadges
    bit RISINGBADGE, [hl]
	jr nz, .fullStatExp

    bit STORMBADGE, [hl]
    jr nz, .highStatExp

    bit PLAINBADGE, [hl]
    jr nz, .mediumStatExp

    bit ZEPHYRBADGE, [hl]
    jp nz, .lowStatExp

    pop hl
    jp .no_stat_exp

.fullStatExp
rept 6
    ld a, $ff
	ld [de], a
	inc de
	ld [de], a
	inc de
endr
	pop hl
	jp .no_stat_exp

.highStatExp
rept 6
    ld a, $90
	ld [de], a
	inc de
	ld a, $00
	ld [de], a
	inc de
endr
	pop hl
	jr .no_stat_exp

.mediumStatExp
rept 6
    ld a, $40
	ld [de], a
	inc de
	ld a, $00
	ld [de], a
	inc de
endr
	pop hl
	jr .no_stat_exp

.lowStatExp
rept 6
    ld a, $10
	ld [de], a
	inc de
	ld a, $00
	ld [de], a
	inc de
endr
	pop hl
	jr .no_stat_exp

.no_stat_exp

; item?
    ld a, [wPartyMon1Item]
    ld [wOTPartyMon1Item], a
    ld a, [wPartyMon2Item]
    ld [wOTPartyMon2Item], a
    ld a, [wPartyMon3Item]
    ld [wOTPartyMon3Item], a
    ld a, [wPartyMon4Item]
    ld [wOTPartyMon4Item], a
    ld a, [wPartyMon5Item]
    ld [wOTPartyMon5Item], a
    ld a, [wPartyMon6Item]
    ld [wOTPartyMon6Item], a

; moves?
	push hl
	ld hl, wPartyMon1Moves
	pop bc
	call IncrementToCurrentMon
	push bc
	ld b, NUM_MOVES
.copy_copied_moves
	ld a, [hl]
	ld [de], a ; here a is the next move
	inc hl
	inc de
	dec b
	jr nz, .copy_copied_moves ; when no more moves we are done - moves are copied
    pop hl

    push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1
	call GetPartyLocation
	ld d, h
	ld e, l
	ld hl, MON_PP
	add hl, de

	push hl
	ld hl, MON_MOVES
	add hl, de
	pop de

	ld b, NUM_MOVES
.copy_pp
	ld a, [hli]
	and a
	jr z, .copied_pp

	push hl
	push bc
	dec a
	ld hl, Moves + MOVE_PP
	ld bc, MOVE_LENGTH
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	pop bc
	pop hl

	ld [de], a
	inc de
	dec b
	jr nz, .copy_pp
.copied_pp

	pop hl
.no_moves

; Custom DVs and state exp affect stats,
; so recalculate them after TryAddMonToParty
	push hl

	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1MaxHP
	call GetPartyLocation
	ld d, h
	ld e, l

	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1StatExp - 1
	call GetPartyLocation

; recalculate stats
	ld b, TRUE
	push de
	predef CalcMonStats
	pop hl

; copy max HP to current HP
	inc hl
	ld c, [hl]
	dec hl
	ld b, [hl]
	dec hl
	ld [hl], c
	dec hl
	ld [hl], b
	pop hl
.no_stat_recalc

    pop bc
    inc b
	dec c
	ret z
	jp .loop

IncrementToCurrentMon:
    ld a, b
.incrementLoop
    dec a
    jr z, .incrementDone
rept 48
    inc hl
endr
    jr .incrementLoop
.incrementDone
    ret

IncrementMovesToCurrentMon:
    ld a, b
.incrementLoop
    dec a
    jr z, .incrementDone
    inc hl
    inc hl
    inc hl
    inc hl
    jr .incrementLoop
.incrementDone
    ret

; AndrewNote - reward money here
ComputeTrainerReward:
	ld hl, hProduct
	xor a
	ld [hli], a
	ld [hli], a ; hMultiplicand + 0
	ld [hli], a ; hMultiplicand + 1
	ld a, [wEnemyTrainerBaseReward]
	ld [hli], a ; hMultiplicand + 2
	ld a, [wCurPartyLevel]
	ld [hl], a ; hMultiplier
	call Multiply

; double money as an invader
	ld a, [wInvading]
	and a
	jr z, .notInvading
	ld a, 2
	ld [hl], a ; hMultiplier
	call Multiply
.notInvading
	ld hl, wBattleReward
	xor a
	ld [hli], a
	ldh a, [hProduct + 2]
	ld [hli], a
	ldh a, [hProduct + 3]
	ld [hl], a
	ret

Battle_GetTrainerName::
	ld a, [wInBattleTowerBattle]
	bit 0, a
	ld hl, wOTPlayerName
    ld a, BANK(Battle_GetTrainerName)
	ld [wTrainerGroupBank], a
	jp nz, CopyTrainerName

	ld a, [wOtherTrainerID]
	ld b, a
	ld a, [wOtherTrainerClass]
	ld c, a

GetTrainerName::
	ld a, c
	dec c
	push bc
	ld b, 0
	ld hl, TrainerGroups
	add hl, bc
	add hl, bc
    add hl, bc
	ld a, [hli]
	ld [wTrainerGroupBank], a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop bc

.loop
	dec b
	jr z, CopyTrainerName

.skip
	call GetNextTrainerDataByte
	cp $ff
	jr nz, .skip
	jr .loop

CopyTrainerName:
	ld de, wStringBuffer1
	push de
	ld bc, NAME_LENGTH
	ld a, [wTrainerGroupBank]
    call FarCopyBytes
	pop de
	ret

IncompleteCopyNameFunction: ; unreferenced
; Copy of CopyTrainerName but without "call CopyBytes"
	ld de, wStringBuffer1
	push de
	ld bc, NAME_LENGTH
	pop de
	ret

INCLUDE "data/trainers/party_pointers.asm"
