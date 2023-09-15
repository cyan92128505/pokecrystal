	db MAGMORTAR ; 118

	db  75,  95,  67,  83,  125,  95
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 30 ; catch rate
	db 199 ; base exp
	db BURNT_BERRY, BURNT_BERRY ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dragonite/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm DRAIN_PUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, SUBSTITUTE, RETURN, DOUBLE_EDGE, PSYCHIC_M, CALM_MIND, AURA_SPHERE, SLEEP_TALK, FIRE_BLAST, THUNDERPUNCH, REST, FIRE_PUNCH, STRENGTH, FLAMETHROWER, THUNDERBOLT, GIGA_DRAIN
	; end
