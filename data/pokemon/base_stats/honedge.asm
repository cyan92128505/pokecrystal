	db HONEDGE ; 013

	db  45,  80,  100,  28,  35,  37
	;   hp  atk  def  spd  sat  sdf

	db STEEL, GHOST ; type
	db 180 ; catch rate
	db 65 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dragonair/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, ROCK_SMASH, HIDDEN_POWER, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_HEAD, RETURN, SLEEP_TALK, REST, ROCK_SLIDE, STRENGTH, CUT, ROCK_SLIDE, SHADOW_BALL, DARK_PULSE, SWORDS_DANCE
	; end
