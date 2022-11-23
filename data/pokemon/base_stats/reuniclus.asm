	db REUNICLUS ; 108

	db  110,  65,  75,  30,  125,  85
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 50 ; catch rate
	db 221 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dragonite/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, RETURN, PSYCHIC_M, CALM_MIND, AURA_SPHERE, SHADOW_BALL, DARK_PULSE, SLEEP_TALK, DREAM_EATER, REST, FLASH, THUNDER, THUNDERBOLT, THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH
	; end
