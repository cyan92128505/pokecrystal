mon_prob: MACRO
; percent, index
	db \1, \2 * 2
ENDM

GrassMonProbTable:
	table_width 2, GrassMonProbTable
	mon_prob 20,  0 ; 20% chance
	mon_prob 40,  1 ; 20% chance
	mon_prob 56,  2 ; 16% chance
	mon_prob 72,  3 ; 16% chance
	mon_prob 84,  4 ; 12% chance
	mon_prob 96,  5 ; 12% chance
	mon_prob 100, 6 ;  4% chance
	assert_table_length NUM_GRASSMON

WaterMonProbTable:
	table_width 2, WaterMonProbTable
	mon_prob 40,  0 ; 40% chance
	mon_prob 70,  1 ; 30% chance
	mon_prob 100, 2 ; 30% chance
	assert_table_length NUM_WATERMON
