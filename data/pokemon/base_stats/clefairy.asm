	db CLEFAIRY ; 035

	db  70,  45,  48,  35,  60,  65
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 150 ; catch rate
	db 68 ; base exp
	db MYSTERYBERRY, MOON_STONE ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/clefairy/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, ICE_BEAM, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, SOLARBEAM, IRON_HEAD, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, DARK_PULSE, ICE_PUNCH, SLEEP_TALK, FIRE_BLAST, THUNDERPUNCH, DREAM_EATER, REST, FIRE_PUNCH, STRENGTH, FLASH, FLAMETHROWER, THUNDERBOLT, THUNDER_WAVE, ICE_BEAM
	; end
