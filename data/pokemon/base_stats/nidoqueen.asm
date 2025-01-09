	db NIDOQUEEN ; 031

	db  90,  80,  80,  76,  90,  80
	;   hp  atk  def  spd  sat  sdf

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 194 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 5 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/nidoqueen/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm DRAIN_PUNCH, BODY_SLAM, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, ICE_BEAM, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, SUBSTITUTE, IRON_HEAD, THUNDER, EARTHQUAKE, EARTH_POWER, ROCK_SLIDE, RETURN, DOUBLE_EDGE, SHADOW_BALL, DARK_PULSE, ICE_PUNCH, SLEEP_TALK, SANDSTORM, FIRE_BLAST, THUNDERPUNCH, REST, ROCK_SLIDE, FIRE_PUNCH, X_SCISSOR, SURF, STRENGTH, FLAMETHROWER, THUNDERBOLT, THUNDER_WAVE, ICE_BEAM, HORN_DRILL, FISSURE, SLUDGE_BOMB
	; end
