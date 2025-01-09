	db NIDORINO ; 033

	db  61,  72,  57,  65,  55,  55
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 120 ; catch rate
	db 118 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 100 ; unknown 1
	db 5 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/nidorino/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, BODY_SLAM, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, ICE_BEAM, PROTECT, RAIN_DANCE, SUBSTITUTE, IRON_HEAD, THUNDER, RETURN, DOUBLE_EDGE, SLEEP_TALK, REST, STRENGTH, THUNDERBOLT, THUNDER_WAVE, ICE_BEAM, HORN_DRILL, SLUDGE_BOMB
	; end
