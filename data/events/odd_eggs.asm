NUM_ODD_EGGS EQU 14

prob: MACRO
prob_total += \1
	dw prob_total * $ffff / 100
ENDM

OddEggProbabilities:
; entries correspond to OddEggs (below)
	table_width 2, OddEggProbabilities
prob_total = 0
	prob 8
	prob 1
	prob 16
	prob 3
	prob 16
	prob 3
	prob 14
	prob 2
	prob 10
	prob 2
	prob 12
	prob 2
	prob 10
	prob 1
	assert_table_length NUM_ODD_EGGS
	assert prob_total == 100, "OddEggProbabilities do not sum to 100%!"

OddEggs:
	table_width NICKNAMED_MON_STRUCT_LENGTH, OddEggs

	db DUNSPARCE
	db NO_ITEM
	db RAGE, DEFENSE_CURL, 0, 0
	dw 00666 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 0, 0, 0, 0 ; DVs
	db 20, 40, 0, 0 ; PP
	db 100 ; step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
    bigdw 25
    bigdw 25
    bigdw 12
    bigdw 12
    bigdw 9
    bigdw 11
    bigdw 11
	db "JAMES@@@@@@"

	db DUNSPARCE
	db NO_ITEM
	db RAGE, DEFENSE_CURL, 0, 0
	dw 00666 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 0, 0, 0, 0 ; DVs
	db 20, 40, 0, 0 ; PP
	db 100 ; step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
    bigdw 25
    bigdw 25
    bigdw 12
    bigdw 12
    bigdw 9
    bigdw 11
    bigdw 11
	db "JAMES@@@@@@"

	db DUNSPARCE
	db NO_ITEM
	db RAGE, DEFENSE_CURL, 0, 0
	dw 00666 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 0, 0, 0, 0 ; DVs
	db 20, 40, 0, 0 ; PP
	db 100 ; step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
    bigdw 25
    bigdw 25
    bigdw 12
    bigdw 12
    bigdw 9
    bigdw 11
    bigdw 11
	db "JAMES@@@@@@"

	db DUNSPARCE
	db NO_ITEM
	db RAGE, DEFENSE_CURL, 0, 0
	dw 00666 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 0, 0, 0, 0 ; DVs
	db 20, 40, 0, 0 ; PP
	db 100 ; step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
    bigdw 25
    bigdw 25
    bigdw 12
    bigdw 12
    bigdw 9
    bigdw 11
    bigdw 11
	db "JAMES@@@@@@"

	db DUNSPARCE
	db NO_ITEM
	db RAGE, DEFENSE_CURL, 0, 0
	dw 00666 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 0, 0, 0, 0 ; DVs
	db 20, 40, 0, 0 ; PP
	db 100 ; step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
    bigdw 25
    bigdw 25
    bigdw 12
    bigdw 12
    bigdw 9
    bigdw 11
    bigdw 11
	db "JAMES@@@@@@"

	db DUNSPARCE
	db NO_ITEM
	db RAGE, DEFENSE_CURL, 0, 0
	dw 00666 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 0, 0, 0, 0 ; DVs
	db 20, 40, 0, 0 ; PP
	db 100 ; step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
    bigdw 25
    bigdw 25
    bigdw 12
    bigdw 12
    bigdw 9
    bigdw 11
    bigdw 11
	db "JAMES@@@@@@"

	db DUNSPARCE
	db NO_ITEM
	db RAGE, DEFENSE_CURL, 0, 0
	dw 00666 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 0, 0, 0, 0 ; DVs
	db 20, 40, 0, 0 ; PP
	db 100 ; step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
    bigdw 25
    bigdw 25
    bigdw 12
    bigdw 12
    bigdw 9
    bigdw 11
    bigdw 11
	db "JAMES@@@@@@"

	db DUNSPARCE
	db NO_ITEM
	db RAGE, DEFENSE_CURL, 0, 0
	dw 00666 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 0, 0, 0, 0 ; DVs
	db 20, 40, 0, 0 ; PP
	db 100 ; step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
    bigdw 25
    bigdw 25
    bigdw 12
    bigdw 12
    bigdw 9
    bigdw 11
    bigdw 11
	db "JAMES@@@@@@"

	db DUNSPARCE
	db NO_ITEM
	db RAGE, DEFENSE_CURL, 0, 0
	dw 00666 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 0, 0, 0, 0 ; DVs
	db 20, 40, 0, 0 ; PP
	db 100 ; step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
    bigdw 25
    bigdw 25
    bigdw 12
    bigdw 12
    bigdw 9
    bigdw 11
    bigdw 11
	db "JAMES@@@@@@"

	db DUNSPARCE
	db NO_ITEM
	db RAGE, DEFENSE_CURL, 0, 0
	dw 00666 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 0, 0, 0, 0 ; DVs
	db 20, 40, 0, 0 ; PP
	db 100 ; step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
    bigdw 25
    bigdw 25
    bigdw 12
    bigdw 12
    bigdw 9
    bigdw 11
    bigdw 11
	db "JAMES@@@@@@"

	db DUNSPARCE
	db NO_ITEM
	db RAGE, DEFENSE_CURL, 0, 0
	dw 00666 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 0, 0, 0, 0 ; DVs
	db 20, 40, 0, 0 ; PP
	db 100 ; step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
    bigdw 25
    bigdw 25
    bigdw 12
    bigdw 12
    bigdw 9
    bigdw 11
    bigdw 11
	db "JAMES@@@@@@"

	db DUNSPARCE
	db NO_ITEM
	db RAGE, DEFENSE_CURL, 0, 0
	dw 00666 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 0, 0, 0, 0 ; DVs
	db 20, 40, 0, 0 ; PP
	db 100 ; step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
    bigdw 25
    bigdw 25
    bigdw 12
    bigdw 12
    bigdw 9
    bigdw 11
    bigdw 11
	db "JAMES@@@@@@"

	db DUNSPARCE
	db NO_ITEM
	db RAGE, DEFENSE_CURL, 0, 0
	dw 00666 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 0, 0, 0, 0 ; DVs
	db 20, 40, 0, 0 ; PP
	db 100 ; step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
    bigdw 25
    bigdw 25
    bigdw 12
    bigdw 12
    bigdw 9
    bigdw 11
    bigdw 11
	db "JAMES@@@@@@"

	db DUNSPARCE
	db NO_ITEM
	db RAGE, DEFENSE_CURL, 0, 0
	dw 00666 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 0, 0, 0, 0 ; DVs
	db 20, 40, 0, 0 ; PP
	db 100 ; step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
    bigdw 25
    bigdw 25
    bigdw 12
    bigdw 12
    bigdw 9
    bigdw 11
    bigdw 11
	db "JAMES@@@@@@"

	assert_table_length NUM_ODD_EGGS
