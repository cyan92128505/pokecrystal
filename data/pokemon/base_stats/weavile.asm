	db WEAVILE ; 114

	db  70,  120, 65,  125, 45,  85
	;   hp  atk  def  spd  sat  sdf

    db DARK, ICE ; type
	db 45 ; catch rate
	db 179 ; base exp
	db QUICK_CLAW, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dragonite/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DRAIN_PUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, BLIZZARD, ICE_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, SUBSTITUTE, IRON_HEAD, RETURN, DOUBLE_EDGE, DIG, SHADOW_BALL, DARK_PULSE, ICE_PUNCH, SLEEP_TALK, SWIFT, REST, CUT, SURF, STRENGTH, ICE_BEAM, SWORDS_DANCE, NASTY_PLOT
	; end
