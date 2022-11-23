	db SPIRITOMB ; 222

	db  50,  92,  108,  35,  92,  108
	;   hp  atk  def  spd  sat  sdf

    db DARK, GHOST ; type
	db 45 ; catch rate
	db 150 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 120 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/spiritomb/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
    tmhm CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, PROTECT, GIGA_DRAIN, ENDURE, FRUSTRATION, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, DARK_PULSE, SLEEP_TALK, DREAM_EATER, REST
   	; end
