	db BRELOOM ; 057

	db  60, 130,  80,  70,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FIGHTING ; type
	db 255 ; catch rate
	db 65 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dragonite/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm DRAIN_PUNCH, BULK_UP, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, SUBSTITUTE, SOLARBEAM, RETURN, SLEEP_TALK, SLUDGE_BOMB, REST, CUT, FLASH, SWORDS_DANCE
	; end
