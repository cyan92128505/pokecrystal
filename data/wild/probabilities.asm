mon_prob: MACRO
; percent, index
	db \1, \2 * 2
ENDM

GrassMonProbTable:
	table_width 2, GrassMonProbTable
	mon_prob 25,  0 ; 25% chance
	mon_prob 50,  1 ; 25% chance
	mon_prob 66,  2 ; 16% chance
	mon_prob 82,  3 ; 16% chance
	mon_prob 90,  4 ;  8% chance
	mon_prob 98,  5 ;  8% chance
	mon_prob 100, 6 ;  2% chance
	assert_table_length NUM_GRASSMON

WaterMonProbTable:
	table_width 2, WaterMonProbTable
	mon_prob 60,  0 ; 60% chance
	mon_prob 90,  1 ; 30% chance
	mon_prob 100, 2 ; 10% chance
	assert_table_length NUM_WATERMON
