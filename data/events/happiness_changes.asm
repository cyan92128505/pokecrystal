HappinessChanges:
; entries correspond to HAPPINESS_* constants
	table_width 3, HappinessChanges
	; change if happiness < 100, change if happiness < 200, change otherwise
	db +50, +50, +50 ; Gained a level
	db +50, +50, +50 ; Vitamin
	db +50, +50, +50 ; X Item
	db +50, +50, +50 ; Battled a Gym Leader
	db +50, +50, +50 ; Learned a move
	db +50, +50, +50 ; Lost to an enemy
	db +50, +50, +50 ; Fainted due to poison
	db +50, +50, +50 ; Lost to a much stronger enemy
	db +50, +50, +50 ; Haircut (older brother) 1
	db +50, +50, +50 ; Haircut (older brother) 2
	db +50, +50, +50 ; Haircut (older brother) 3
	db +50, +50, +50 ; Haircut (younger brother) 1
	db +50, +50, +50 ; Haircut (younger brother) 2
	db +50, +50, +50 ; Haircut (younger brother) 3
	db +50, +50, +50 ; Used Heal Powder or Energypowder (bitter)
	db +50, +50, +50 ; Used Energy Root (bitter)
	db +50, +50, +50 ; Used Revival Herb (bitter)
	db +50, +50, +50 ; Grooming
	db +50, +50, +50 ; Gained a level in the place where it was caught
	assert_table_length NUM_HAPPINESS_CHANGES
