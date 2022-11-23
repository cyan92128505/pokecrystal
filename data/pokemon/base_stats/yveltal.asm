	db YVELTAL ; 239

	db  126,  131,  95,  99,  131,  98
	;   hp  atk  def  spd  sat  sdf

	db DARK, FLYING ; type
    db 3 ; catch rate
	db 220 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 120 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/yveltal/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, ICE_BEAM, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, ENDURE, FRUSTRATION, IRON_HEAD, DRAGON_PULSE, THUNDER, EARTHQUAKE, EARTH_POWER, RETURN, PSYCHIC_M, SHADOW_BALL, DARK_PULSE, SLEEP_TALK, SANDSTORM, SWIFT, DREAM_EATER, REST, FLY, AIR_SLASH, SURF, STRENGTH, WHIRLPOOL, WATERFALL, THUNDERBOLT, THUNDER_WAVE, ICE_BEAM, NASTY_PLOT
	; end
