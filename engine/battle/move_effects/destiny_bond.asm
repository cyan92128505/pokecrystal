BattleCommand_DestinyBond:
; destinybond

	ld a, [wEffectFailed]
	and a
	jr nz, .failed

	ld a, BATTLE_VARS_SUBSTATUS5
	call GetBattleVarAddr
	set SUBSTATUS_DESTINY_BOND, [hl]
	call AnimateCurrentMove
	ld hl, DestinyBondEffectText
	jp StdBattleTextbox

.failed
	call AnimateFailedMove
	jp PrintButItFailed
