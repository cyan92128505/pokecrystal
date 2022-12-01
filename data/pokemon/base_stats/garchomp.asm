	db GARCHOMP ; 211

	db  108,  130,  95,  102,  80,  85
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, GROUND ; type
    db 45 ; catch rate
	db 218 ; base exp
	db NO_ITEM, DRAGON_SCALE ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/garchomp/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, BLIZZARD, ICE_BEAM, HYPER_BEAM, ICY_WIND, PROTECT, ENDURE, FRUSTRATION, IRON_HEAD, DRAGON_PULSE, THUNDER, RETURN, SLEEP_TALK, SANDSTORM, FIRE_BLAST, SWIFT, REST, FURY_CUTTER, CUT, STRENGTH, FLY, EARTHQUAKE, EARTH_POWER, ROCK_SLIDE, FLAMETHROWER, THUNDERBOLT, THUNDER_WAVE, ICE_BEAM, SWORDS_DANCE
	; end
