	db SCEPTILE ; 154

	db  70,  85, 65,  120,  105, 85
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 208 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sceptile/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm DRAIN_PUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SUBSTITUTE, SOLARBEAM, IRON_HEAD, EARTHQUAKE, EARTH_POWER, RETURN, SLEEP_TALK, REST, X_SCISSOR, CUT, STRENGTH, FLASH, SWORDS_DANCE, THUNDERPUNCH, ICE_PUNCH, ROCK_SLIDE
	; end
