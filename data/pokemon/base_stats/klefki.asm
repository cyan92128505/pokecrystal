	db KLEFKI ; 237

	db  57,  80,  91,  87,  80, 87
	;   hp  atk  def  spd  sat  sdf

	db STEEL, FAIRY ; type
	db 75 ; catch rate
	db 165 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dragonite/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, HIDDEN_POWER, SUNNY_DAY, PROTECT, SUBSTITUTE, RETURN, DOUBLE_EDGE, SLEEP_TALK, SWIFT, REST, THUNDER_WAVE, FLASH, IRON_HEAD
	; end
