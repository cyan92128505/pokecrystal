mon_prob: MACRO
; percent, index
	db \1, \2 * 2
ENDM

; AndrewNote - Encounter probabilities
GrassMonProbTable:
	table_width 2, GrassMonProbTable
	mon_prob 25,  0 ; 25% chance
	mon_prob 50,  1 ; 25% chance
	mon_prob 64,  2 ; 14% chance
	mon_prob 78,  3 ; 14% chance
	mon_prob 88,  4 ; 10% chance
	mon_prob 98,  5 ; 10% chance
	mon_prob 100, 6 ;  2% chance
	assert_table_length NUM_GRASSMON

WaterMonProbTable:
	table_width 2, WaterMonProbTable
	mon_prob 50,  0 ; 50% chance
	mon_prob 80,  1 ; 30% chance
	mon_prob 100, 2 ; 20% chance
	assert_table_length NUM_WATERMON
