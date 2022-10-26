	db RAYQUAZA ; 251

	db  105, 150,  90,  95, 150, 90
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FLYING ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, DRAGON_SCALE ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/rayquaza/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_HEAD, DRAGON_PULSE, THUNDER, RETURN, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SANDSTORM, FIRE_BLAST, SWIFT, THUNDERPUNCH, REST, ATTRACT,  FIRE_PUNCH, FURY_CUTTER, FLY, SURF, STRENGTH, WHIRLPOOL, WATERFALL, FLAMETHROWER, THUNDERBOLT, THUNDER_WAVE, ICE_BEAM, ROCK_SLIDE
	; end
