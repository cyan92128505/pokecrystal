BattleCommand_ShellSmash:
; shellsmash
	ld bc, wPlayerStatLevels
	ldh a, [hBattleTurn]
	and a
	jr z, .go
	ld bc, wEnemyStatLevels
.go
; check if stats can go higher
; Attack
	ld a, [bc]
	cp MAX_STAT_LEVEL
	jr c, .raise
; Speed
	inc bc
	inc bc
	ld a, [bc]
	cp MAX_STAT_LEVEL
	jr c, .raise
; Special Attack
	inc bc
	ld a, [bc]
	cp MAX_STAT_LEVEL
	jr nc, .cantraise
.raise
; Raise Attack Speed, Special Attack.
; Lower Defense and Special Defence
    ld a, $1
	ld [wBattleAnimParam], a
	call AnimateCurrentMove
	call BattleCommand_SwitchTurn
	call ResetMiss
	call BattleCommand_SwitchTurn
	call BattleCommand_AttackUp2
	call BattleCommand_StatUpMessage
; ========================================
	call ResetMiss
	call BattleCommand_SpecialAttackUp2
	call BattleCommand_StatUpMessage
; ========================================
	call ResetMiss
	call BattleCommand_SpeedUp2
	call BattleCommand_StatUpMessage
; =======================================
	call ResetMiss
    ld a, DEFENSE
	call LowerStat
	call BattleCommand_SwitchTurn
	call BattleCommand_StatDownMessage
; =======================================
	call ResetMiss
    ld a, SP_DEFENSE
	call LowerStat
	jp BattleCommand_StatDownMessage
; ======================================
.cantraise
; Can't raise either stat.
	ld b, ABILITY + 1
	call GetStatName
	call AnimateFailedMove
	ld hl, WontRiseAnymoreText
	jp StdBattleTextbox
