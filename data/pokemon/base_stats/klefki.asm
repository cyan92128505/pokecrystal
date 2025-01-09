	db KLEFKI ; 237

	db  57, 180,  91, 187,  80, 87
	;   hp  atk  def  spd  sat  sdf

	db GRASS, STEEL ; type
	db 75 ; catch rate
	db 220 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 5 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dragonite/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, SUBSTITUTE, SOLARBEAM, SANDSTORM, PROTECT, SUBSTITUTE, RETURN, DOUBLE_EDGE, SLEEP_TALK, SWIFT, REST, X_SCISSOR, CUT, STRENGTH, SWORDS_DANCE, THUNDER_WAVE, FLASH, IRON_HEAD, TOXIC
	; end
