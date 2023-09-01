BattleCommand_LeechSeed:
; leechseed
	ld a, [wAttackMissed]
	and a
	jr nz, .evaded
	call CheckSubstituteOpp
	jr nz, .evaded

	ld hl, wEnemyMonLevel
	ld de, wBattleMonLevel
	ldh a, [hBattleTurn]
	and a
	jr z, .got_levels
	push hl
	ld h, d
	ld l, e
	pop de
.got_levels
	ld a, [de]
	sla a ; AndrewNote - LeechSeed doesn't work on foes over twice your level
	sub [hl]
	jr c, .grass

	ld de, wEnemyMonType1
	ldh a, [hBattleTurn]
	and a
	jr z, .ok
	ld de, wBattleMonType1
.ok

	ld a, [de]
	cp GRASS
	jr z, .grass
	inc de
	ld a, [de]
	cp GRASS
	jr z, .grass

	ld a, BATTLE_VARS_SUBSTATUS4_OPP
	call GetBattleVarAddr
	bit SUBSTATUS_LEECH_SEED, [hl]
	jr nz, .evaded
	set SUBSTATUS_LEECH_SEED, [hl]
	call AnimateCurrentMove
	ld hl, WasSeededText
	jp StdBattleTextbox

.grass
	call AnimateFailedMove
	jp PrintDoesntAffect

.evaded
	call AnimateFailedMove
	ld hl, EvadedText
	jp StdBattleTextbox
