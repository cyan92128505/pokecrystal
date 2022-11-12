BattleTowerMons:
; 10 groups (one per floor level) of 21 mons (BATTLETOWER_NUM_UNIQUE_MON).
	table_width NICKNAMED_MON_STRUCT_LENGTH, BattleTowerMons

; AndrewNote - group 1 has been removed so room for 19 more pokes in here
; BattleTowerMons group 2

	db UMBREON
	db LEFTOVERS
	db PROTECT, TOXIC, SAND_ATTACK, ATTRACT
	dw 0 ; OT ID
	dt 8000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 12, 15, 11, 12 ; DVs
	db 10, 10, 10, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 20 ; Level
	db 0, 0 ; Status
	bigdw 81 ; HP
	bigdw 81 ; Max HP
	bigdw 46 ; Atk
	bigdw 66 ; Def
	bigdw 46 ; Spd
	bigdw 44 ; SAtk
	bigdw 72 ; SDef
	db "BURAtuKI-@@"

	db STARMIE
	db GOLD_BERRY
	db RECOVER, PSYCHIC_M, SURF, PSYCH_UP
	dw 0 ; OT ID
	dt 8000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 13, 11, 13, 11 ; DVs
	db 20, 10, 15, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 20 ; Level
	db 0, 0 ; Status
	bigdw 71 ; HP
	bigdw 71 ; Max HP
	bigdw 51 ; Atk
	bigdw 54 ; Def
	bigdw 67 ; Spd
	bigdw 60 ; SAtk
	bigdw 54 ; SDef
	db "SUTA-MI-@@@"

	db GYARADOS
	db MIRACLEBERRY
	db HYPER_BEAM, DRAGON_RAGE, THUNDERBOLT, FIRE_BLAST
	dw 0 ; OT ID
	dt 8000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 10, 15, 13 ; DVs
	db 5, 10, 15, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 20 ; Level
	db 0, 0 ; Status
	bigdw 83 ; HP
	bigdw 83 ; Max HP
	bigdw 72 ; Atk
	bigdw 51 ; Def
	bigdw 54 ; Spd
	bigdw 45 ; SAtk
	bigdw 61 ; SDef
	db "GIyaRADOSU@"

	db STEELIX
	db GOLD_BERRY
	db ROAR, IRON_HEAD, SWAGGER, EARTHQUAKE
	dw 0 ; OT ID
	dt 8000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 30000
	bigdw 50000
	dn 15, 15, 15, 15 ; DVs
	db 20, 15, 15, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 20 ; Level
	db 0, 0 ; Status
	bigdw 77 ; HP
	bigdw 77 ; Max HP
	bigdw 55 ; Atk
	bigdw 102 ; Def
	bigdw 31 ; Spd
	bigdw 44 ; SAtk
	bigdw 48 ; SDef
	db "HAGANE-RU@@"

	db ALAKAZAM
	db BERRY_JUICE
	db PSYCHIC_M, PSYCH_UP, TOXIC, THUNDERPUNCH
	dw 0 ; OT ID
	dt 8000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 30000
	bigdw 50000
	bigdw 40000
	dn 15, 13, 14, 15 ; DVs
	db 10, 10, 10, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 20 ; Level
	db 0, 0 ; Status
	bigdw 68 ; HP
	bigdw 68 ; Max HP
	bigdw 42 ; Atk
	bigdw 36 ; Def
	bigdw 69 ; Spd
	bigdw 75 ; SAtk
	bigdw 55 ; SDef
	db "HU-DEiN@@@@"

	db ARCANINE
	db BRIGHTPOWDER
	db FLAMETHROWER, ROAR, HYPER_BEAM, IRON_HEAD
	dw 0 ; OT ID
	dt 8000 ; Exp
	; Stat exp
	bigdw 35000
	bigdw 45000
	bigdw 50000
	bigdw 55000
	bigdw 50000
	dn 13, 11, 15, 11 ; DVs
	db 15, 20, 5, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 20 ; Level
	db 0, 0 ; Status
	bigdw 81 ; HP
	bigdw 81 ; Max HP
	bigdw 64 ; Atk
	bigdw 52 ; Def
	bigdw 60 ; Spd
	bigdw 60 ; SAtk
	bigdw 52 ; SDef
	db "UINDEi@@@@@"

	db HERACROSS
	db FOCUS_SASH
	db ENDURE, REVERSAL, MEGAHORN, EARTHQUAKE
	dw 0 ; OT ID
	dt 8000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 30000
	bigdw 45000
	bigdw 30000
	bigdw 45000
	dn 13, 15, 13, 14 ; DVs
	db 10, 15, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 20 ; Level
	db 0, 0 ; Status
	bigdw 78 ; HP
	bigdw 78 ; Max HP
	bigdw 68 ; Atk
	bigdw 51 ; Def
	bigdw 52 ; Spd
	bigdw 37 ; SAtk
	bigdw 59 ; SDef
	db "HERAKUROSU@"

	db EXEGGUTOR
	db LEFTOVERS
	db HYPER_BEAM, PSYCHIC_M, TOXIC, DREAM_EATER
	dw 0 ; OT ID
	dt 8000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 50000
	bigdw 45000
	bigdw 45000
	dn 15, 13, 14, 11 ; DVs
	db 5, 10, 10, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 20 ; Level
	db 0, 0 ; Status
	bigdw 83 ; HP
	bigdw 83 ; Max HP
	bigdw 60 ; Atk
	bigdw 55 ; Def
	bigdw 43 ; Spd
	bigdw 70 ; SAtk
	bigdw 46 ; SDef
	db "NAtuSI-@@@@"

	db AERODACTYL
	db GOLD_BERRY
	db REST, HYPER_BEAM, EARTHQUAKE, DRAGON_RAGE
	dw 0 ; OT ID
	dt 8000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 40000
	bigdw 50000
	bigdw 45000
	dn 15, 11, 11, 11 ; DVs
	db 10, 5, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 20 ; Level
	db 0, 0 ; Status
	bigdw 78 ; HP
	bigdw 78 ; Max HP
	bigdw 64 ; Atk
	bigdw 45 ; Def
	bigdw 72 ; Spd
	bigdw 44 ; SAtk
	bigdw 50 ; SDef
	db "PUTERA@@@@@"

	db BLISSEY
	db BRIGHTPOWDER
	db PSYCHIC_M, SUBMISSION, SOFTBOILED, COUNTER
	dw 0 ; OT ID
	dt 8000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 30000
	bigdw 30000
	bigdw 50000
	dn 11, 13, 15, 14 ; DVs
	db 10, 25, 10, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 20 ; Level
	db 0, 0 ; Status
	bigdw 148 ; HP
	bigdw 148 ; Max HP
	bigdw 24 ; Atk
	bigdw 22 ; Def
	bigdw 41 ; Spd
	bigdw 51 ; SAtk
	bigdw 75 ; SDef
	db "HAPINASU@@@"

	db LAPRAS
	db GOLD_BERRY
	db PSYCHIC_M, THUNDERBOLT, BLIZZARD, CONFUSE_RAY
	dw 0 ; OT ID
	dt 8000 ; Exp
	; Stat exp
	bigdw 55000
	bigdw 30000
	bigdw 40000
	bigdw 55000
	bigdw 30000
	dn 15, 14, 13, 7 ; DVs
	db 10, 15, 5, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 20 ; Level
	db 0, 0 ; Status
	bigdw 98 ; HP
	bigdw 98 ; Max HP
	bigdw 53 ; Atk
	bigdw 52 ; Def
	bigdw 45 ; Spd
	bigdw 50 ; SAtk
	bigdw 54 ; SDef
	db "RAPURASU@@@"

	db SCIZOR
	db FOCUS_SASH
	db IRON_HEAD, SLASH, TOXIC, SANDSTORM
	dw 0 ; OT ID
	dt 8000 ; Exp
	; Stat exp
	bigdw 40000
	bigdw 45000
	bigdw 40000
	bigdw 45000
	bigdw 50000
	dn 15, 13, 15, 14 ; DVs
	db 25, 20, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 20 ; Level
	db 0, 0 ; Status
	bigdw 73 ; HP
	bigdw 73 ; Max HP
	bigdw 73 ; Atk
	bigdw 60 ; Def
	bigdw 47 ; Spd
	bigdw 43 ; SAtk
	bigdw 53 ; SDef
	db "HAtuSAMU@@@"

	db DUOSION
	db GOLD_BERRY
	db THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH, MEGA_PUNCH
	dw 0 ; OT ID
	dt 8000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 45000
	bigdw 35000
	bigdw 50000
	bigdw 30000
	dn 15, 11, 15, 13 ; DVs
	db 15, 15, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 20 ; Level
	db 0, 0 ; Status
	bigdw 67 ; HP
	bigdw 67 ; Max HP
	bigdw 63 ; Atk
	bigdw 50 ; Def
	bigdw 52 ; Spd
	bigdw 32 ; SAtk
	bigdw 62 ; SDef
	db "EBIWARA-@@@"

	db TAUROS
	db BRIGHTPOWDER
	db THUNDERBOLT, EARTHQUAKE, HYPER_BEAM, BLIZZARD
	dw 0 ; OT ID
	dt 8000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 40000
	bigdw 50000
	bigdw 30000
	bigdw 30000
	dn 15, 11, 14, 15 ; DVs
	db 15, 10, 5, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 20 ; Level
	db 0, 0 ; Status
	bigdw 76 ; HP
	bigdw 76 ; Max HP
	bigdw 61 ; Atk
	bigdw 58 ; Def
	bigdw 63 ; Spd
	bigdw 35 ; SAtk
	bigdw 47 ; SDef
	db "KENTAROSU@@"

	db KINGDRA
	db MYSTIC_WATER
	db SURF, BLIZZARD, ATTRACT, RAIN_DANCE
	dw 0 ; OT ID
	dt 8000 ; Exp
	; Stat exp
	bigdw 40000
	bigdw 40000
	bigdw 40000
	bigdw 40000
	bigdw 40000
	dn 14, 13, 15, 7 ; DVs
	db 15, 5, 15, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 20 ; Level
	db 0, 0 ; Status
	bigdw 82 ; HP
	bigdw 82 ; Max HP
	bigdw 40 ; Atk
	bigdw 52 ; Def
	bigdw 41 ; Spd
	bigdw 37 ; SAtk
	bigdw 49 ; SDef
	db "MARIRURI@@@"

	db MILTANK
	db KINGS_ROCK
	db EARTHQUAKE, THUNDER, ATTRACT, SURF
	dw 0 ; OT ID
	dt 8000 ; Exp
	; Stat exp
	bigdw 40000
	bigdw 40000
	bigdw 40000
	bigdw 40000
	bigdw 40000
	dn 13, 15, 15, 14 ; DVs
	db 10, 10, 15, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 20 ; Level
	db 0, 0 ; Status
	bigdw 83 ; HP
	bigdw 83 ; Max HP
	bigdw 52 ; Atk
	bigdw 63 ; Def
	bigdw 61 ; Spd
	bigdw 36 ; SAtk
	bigdw 48 ; SDef
	db "MIRUTANKU@@"

	db WIGGLYTUFF
	db GOLD_BERRY
	db HYPER_BEAM, BLIZZARD, FIRE_BLAST, ATTRACT
	dw 0 ; OT ID
	dt 8000 ; Exp
	; Stat exp
	bigdw 40000
	bigdw 40000
	bigdw 40000
	bigdw 40000
	bigdw 40000
	dn 12, 7, 15, 14 ; DVs
	db 5, 5, 5, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 20 ; Level
	db 0, 0 ; Status
	bigdw 98 ; HP
	bigdw 98 ; Max HP
	bigdw 47 ; Atk
	bigdw 35 ; Def
	bigdw 39 ; Spd
	bigdw 50 ; SAtk
	bigdw 40 ; SDef
	db "PUKURIN@@@@"

	db NIDOKING
	db BERRY
	db BLIZZARD, EARTHQUAKE, SURF, THUNDERPUNCH
	dw 0 ; OT ID
	dt 8000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 5, 6, 4, 6 ; DVs
	db 5, 10, 15, 15 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 20 ; Level
	db 0, 0 ; Status
	bigdw 74 ; HP
	bigdw 74 ; Max HP
	bigdw 52 ; Atk
	bigdw 46 ; Def
	bigdw 49 ; Spd
	bigdw 50 ; SAtk
	bigdw 46 ; SDef
	db "NIDOKINGU@@"

	db QUAGSIRE
	db QUICK_CLAW
	db AMNESIA, EARTHQUAKE, SURF, RAIN_DANCE
	dw 0 ; OT ID
	dt 8000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 5, 5, 4, 7 ; DVs
	db 20, 10, 15, 5 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 20 ; Level
	db 0, 0 ; Status
	bigdw 81 ; HP
	bigdw 81 ; Max HP
	bigdw 49 ; Atk
	bigdw 49 ; Def
	bigdw 29 ; Spd
	bigdw 42 ; SAtk
	bigdw 42 ; SDef
	db "NUO-@@@@@@@"


; BattleTowerMons group 3

	db JOLTEON
	db MIRACLEBERRY
	db THUNDERBOLT, THUNDER_WAVE, ROAR, SAND_ATTACK
	dw 0 ; OT ID
	dt 27000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 55000
	dn 13, 11, 14, 13 ; DVs
	db 15, 20, 20, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 30 ; Level
	db 0, 0 ; Status
	bigdw 103 ; HP
	bigdw 103 ; Max HP
	bigdw 68 ; Atk
	bigdw 64 ; Def
	bigdw 107 ; Spd
	bigdw 96 ; SAtk
	bigdw 87 ; SDef
	db "SANDA-SU@@@"

	db POLIWRATH
	db BRIGHTPOWDER
	db DOUBLE_TEAM, SURF, FISSURE, SUBMISSION
	dw 0 ; OT ID
	dt 27000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 55000
	bigdw 55000
	bigdw 55000
	bigdw 50000
	dn 13, 13, 15, 11 ; DVs
	db 15, 15, 5, 25 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 30 ; Level
	db 0, 0 ; Status
	bigdw 119 ; HP
	bigdw 119 ; Max HP
	bigdw 81 ; Atk
	bigdw 87 ; Def
	bigdw 73 ; Spd
	bigdw 70 ; SAtk
	bigdw 82 ; SDef
	db "NIyoROBON@@"

	db STARMIE
	db LEFTOVERS
	db THUNDER_WAVE, PSYCHIC_M, RECOVER, SURF
	dw 0 ; OT ID
	dt 27000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 15, 15, 15 ; DVs
	db 20, 10, 20, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 30 ; Level
	db 0, 0 ; Status
	bigdw 101 ; HP
	bigdw 101 ; Max HP
	bigdw 75 ; Atk
	bigdw 81 ; Def
	bigdw 99 ; Spd
	bigdw 90 ; SAtk
	bigdw 81 ; SDef
	db "SUTA-MI-@@@"

	db JYNX
	db GOLD_BERRY
	db BLIZZARD, LOVELY_KISS, DREAM_EATER, ATTRACT
	dw 0 ; OT ID
	dt 27000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 30000
	bigdw 50000
	dn 15, 11, 14, 14 ; DVs
	db 5, 10, 15, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 30 ; Level
	db 0, 0 ; Status
	bigdw 102 ; HP
	bigdw 102 ; Max HP
	bigdw 60 ; Atk
	bigdw 49 ; Def
	bigdw 83 ; Spd
	bigdw 98 ; SAtk
	bigdw 86 ; SDef
	db "RU-ZIyuRA@@"

	db DUGTRIO
	db KINGS_ROCK
	db EARTHQUAKE, SLUDGE_BOMB, SLASH, SAND_ATTACK
	dw 0 ; OT ID
	dt 27000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 30000
	bigdw 50000
	bigdw 50000
	dn 14, 15, 15, 15 ; DVs
	db 10, 10, 20, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 30 ; Level
	db 0, 0 ; Status
	bigdw 81 ; HP
	bigdw 81 ; Max HP
	bigdw 77 ; Atk
	bigdw 56 ; Def
	bigdw 102 ; Spd
	bigdw 60 ; SAtk
	bigdw 72 ; SDef
	db "DAGUTORIO@@"

	db SYLVEON
	db BRIGHTPOWDER
	db GIGA_DRAIN, SUNNY_DAY, SOLARBEAM, DOUBLE_TEAM
	dw 0 ; OT ID
	dt 27000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 45000
	bigdw 50000
	bigdw 55000
	bigdw 50000
	dn 13, 15, 13, 11 ; DVs
	db 5, 5, 10, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 30 ; Level
	db 0, 0 ; Status
	bigdw 109 ; HP
	bigdw 109 ; Max HP
	bigdw 76 ; Atk
	bigdw 81 ; Def
	bigdw 60 ; Spd
	bigdw 82 ; SAtk
	bigdw 88 ; SDef
	db "KIREIHANA@@"

	db BLISSEY
	db LEFTOVERS
	db TOXIC, REFLECT, SOFTBOILED, PROTECT
	dw 0 ; OT ID
	dt 27000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 30000
	bigdw 45000
	bigdw 30000
	bigdw 45000
	dn 15, 11, 14, 13 ; DVs
	db 10, 20, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 30 ; Level
	db 0, 0 ; Status
	bigdw 217 ; HP
	bigdw 217 ; Max HP
	bigdw 32 ; Atk
	bigdw 33 ; Def
	bigdw 59 ; Spd
	bigdw 73 ; SAtk
	bigdw 109 ; SDef
	db "HAPINASU@@@"

	db HOUNDOOM
	db CHARCOAL
	db FLAMETHROWER, CRUNCH, SHADOW_BALL, DREAM_EATER
	dw 0 ; OT ID
	dt 27000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 50000
	bigdw 45000
	bigdw 45000
	dn 15, 13, 14, 13 ; DVs
	db 15, 15, 15, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 30 ; Level
	db 0, 0 ; Status
	bigdw 108 ; HP
	bigdw 108 ; Max HP
	bigdw 84 ; Atk
	bigdw 59 ; Def
	bigdw 86 ; Spd
	bigdw 94 ; SAtk
	bigdw 76 ; SDef
	db "HERUGA-@@@@"

	db MACHAMP
	db MIRACLEBERRY
	db DYNAMICPUNCH, ICE_PUNCH, EARTHQUAKE, FIRE_BLAST
	dw 0 ; OT ID
	dt 27000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 40000
	bigdw 50000
	bigdw 45000
	dn 15, 13, 11, 14 ; DVs
	db 5, 15, 10, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 30 ; Level
	db 0, 0 ; Status
	bigdw 118 ; HP
	bigdw 118 ; Max HP
	bigdw 108 ; Atk
	bigdw 75 ; Def
	bigdw 61 ; Spd
	bigdw 68 ; SAtk
	bigdw 80 ; SDef
	db "KAIRIKI-@@@"

	db CROBAT
	db GOLD_BERRY
	db ATTRACT, CONFUSE_RAY, TOXIC, WING_ATTACK
	dw 0 ; OT ID
	dt 27000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 30000
	bigdw 30000
	bigdw 50000
	dn 14, 15, 13, 12 ; DVs
	db 15, 10, 10, 35 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 30 ; Level
	db 0, 0 ; Status
	bigdw 111 ; HP
	bigdw 111 ; Max HP
	bigdw 83 ; Atk
	bigdw 74 ; Def
	bigdw 103 ; Spd
	bigdw 70 ; SAtk
	bigdw 76 ; SDef
	db "KUROBAtuTO@"

	db PORYGON2
	db BRIGHTPOWDER
	db PSYCHIC_M, RECOVER, HYPER_BEAM, TRI_ATTACK
	dw 0 ; OT ID
	dt 27000 ; Exp
	; Stat exp
	bigdw 55000
	bigdw 30000
	bigdw 40000
	bigdw 55000
	bigdw 30000
	dn 13, 15, 13, 11 ; DVs
	db 10, 20, 5, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 30 ; Level
	db 0, 0 ; Status
	bigdw 117 ; HP
	bigdw 117 ; Max HP
	bigdw 73 ; Atk
	bigdw 83 ; Def
	bigdw 66 ; Spd
	bigdw 87 ; SAtk
	bigdw 81 ; SDef
	db "PORIGON2@@@"

	db MAROWAK
	db THICK_CLUB
	db EARTHQUAKE, RETURN, HYPER_BEAM, BONEMERANG
	dw 0 ; OT ID
	dt 27000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 30000
	dn 13, 13, 14, 11 ; DVs
	db 10, 20, 5, 10 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 30 ; Level
	db 0, 0 ; Status
	bigdw 99 ; HP
	bigdw 99 ; Max HP
	bigdw 77 ; Atk
	bigdw 94 ; Def
	bigdw 56 ; Spd
	bigdw 54 ; SAtk
	bigdw 72 ; SDef
	db "GARAGARA@@@"

	db ELECTRODE
	db BRIGHTPOWDER
	db LIGHT_SCREEN, THUNDERBOLT, PROTECT, THUNDER
	dw 0 ; OT ID
	dt 27000 ; Exp
	; Stat exp
	bigdw 40000
	bigdw 45000
	bigdw 40000
	bigdw 45000
	bigdw 50000
	dn 11, 13, 14, 15 ; DVs
	db 30, 15, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 30 ; Level
	db 0, 0 ; Status
	bigdw 98 ; HP
	bigdw 98 ; Max HP
	bigdw 57 ; Atk
	bigdw 69 ; Def
	bigdw 113 ; Spd
	bigdw 78 ; SAtk
	bigdw 78 ; SDef
	db "MARUMAIN@@@"

	db LAPRAS
	db LEFTOVERS
	db RAIN_DANCE, WATER_GUN, ICY_WIND, STRENGTH
	dw 0 ; OT ID
	dt 27000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 45000
	bigdw 35000
	bigdw 50000
	bigdw 30000
	dn 15, 13, 14, 11 ; DVs
	db 5, 25, 15, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 30 ; Level
	db 0, 0 ; Status
	bigdw 142 ; HP
	bigdw 142 ; Max HP
	bigdw 80 ; Atk
	bigdw 74 ; Def
	bigdw 65 ; Spd
	bigdw 75 ; SAtk
	bigdw 81 ; SDef
	db "RAPURASU@@@"

	db LANTURN
	db GOLD_BERRY
	db RAIN_DANCE, THUNDER, SURF, FLAIL
	dw 0 ; OT ID
	dt 27000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 40000
	bigdw 50000
	bigdw 30000
	bigdw 30000
	dn 13, 13, 14, 11 ; DVs
	db 5, 10, 15, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 30 ; Level
	db 0, 0 ; Status
	bigdw 139 ; HP
	bigdw 139 ; Max HP
	bigdw 62 ; Atk
	bigdw 64 ; Def
	bigdw 66 ; Spd
	bigdw 70 ; SAtk
	bigdw 70 ; SDef
	db "RANTA-N@@@@"

	db ESPEON
	db MIRACLEBERRY
	db CONFUSION, SWIFT, TOXIC, PSYCH_UP
	dw 0 ; OT ID
	dt 27000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 14, 15, 15, 7 ; DVs
	db 25, 20, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 30 ; Level
	db 0, 0 ; Status
	bigdw 99 ; HP
	bigdw 99 ; Max HP
	bigdw 68 ; Atk
	bigdw 66 ; Def
	bigdw 96 ; Spd
	bigdw 103 ; SAtk
	bigdw 82 ; SDef
	db "E-HUi@@@@@@"

	db TENTACRUEL
	db KINGS_ROCK
	db WRAP, TOXIC, SLUDGE_BOMB, BUBBLEBEAM
	dw 0 ; OT ID
	dt 27000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 47000
	bigdw 45000
	dn 15, 14, 15, 14 ; DVs
	db 20, 10, 10, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 30 ; Level
	db 0, 0 ; Status
	bigdw 110 ; HP
	bigdw 110 ; Max HP
	bigdw 71 ; Atk
	bigdw 68 ; Def
	bigdw 90 ; Spd
	bigdw 77 ; SAtk
	bigdw 101 ; SDef
	db "DOKUKURAGE@"

	db GENGAR
	db GOLD_BERRY
	db SHADOW_BALL, LICK, NIGHT_SHADE, GIGA_DRAIN
	dw 0 ; OT ID
	dt 27000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 7, 15, 7 ; DVs
	db 10, 30, 15, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 30 ; Level
	db 0, 0 ; Status
	bigdw 101 ; HP
	bigdw 101 ; Max HP
	bigdw 68 ; Atk
	bigdw 61 ; Def
	bigdw 96 ; Spd
	bigdw 103 ; SAtk
	bigdw 70 ; SDef
	db "GENGA-@@@@@"

	db URSARING
	db GOLD_BERRY
	db HEADBUTT, PROTECT, ROAR, LEER
	dw 0 ; OT ID
	dt 27000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 7, 7, 4, 5 ; DVs
	db 15, 10, 20, 30 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 30 ; Level
	db 0, 0 ; Status
	bigdw 114 ; HP
	bigdw 114 ; Max HP
	bigdw 100 ; Atk
	bigdw 67 ; Def
	bigdw 53 ; Spd
	bigdw 65 ; SAtk
	bigdw 65 ; SDef
	db "RINGUMA@@@@"

; BattleTowerMons group 4

	db TAUROS
	db GOLD_BERRY
	db RETURN, HYPER_BEAM, EARTHQUAKE, IRON_HEAD
	dw 0 ; OT ID
	dt 64000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 13, 15, 14 ; DVs
	db 20, 5, 10, 15 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 40 ; Level
	db 0, 0 ; Status
	bigdw 143 ; HP
	bigdw 143 ; Max HP
	bigdw 119 ; Atk
	bigdw 113 ; Def
	bigdw 127 ; Spd
	bigdw 70 ; SAtk
	bigdw 94 ; SDef
	db "KENTAROSU@@"

	db KINGDRA
	db LEFTOVERS
	db SURF, DRAGON_PULSE, HYPER_BEAM, BLIZZARD
	dw 0 ; OT ID
	dt 64000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 13, 14, 15 ; DVs
	db 15, 20, 5, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 40 ; Level
	db 0, 0 ; Status
	bigdw 142 ; HP
	bigdw 142 ; Max HP
	bigdw 115 ; Atk
	bigdw 113 ; Def
	bigdw 106 ; Spd
	bigdw 115 ; SAtk
	bigdw 115 ; SDef
	db "KINGUDORA@@"

	db SNORLAX
	db QUICK_CLAW
	db ATTRACT, BODY_SLAM, PSYCH_UP, EARTHQUAKE
	dw 0 ; OT ID
	dt 64000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 14, 13, 13, 13 ; DVs
	db 15, 15, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 40 ; Level
	db 0, 0 ; Status
	bigdw 205 ; HP
	bigdw 205 ; Max HP
	bigdw 126 ; Atk
	bigdw 89 ; Def
	bigdw 61 ; Spd
	bigdw 89 ; SAtk
	bigdw 125 ; SDef
	db "KABIGON@@@@"

	db LAPRAS
	db LEFTOVERS
	db THUNDERBOLT, ICE_BEAM, CONFUSE_RAY, SURF
	dw 0 ; OT ID
	dt 64000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 13, 14, 11 ; DVs
	db 15, 10, 10, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 40 ; Level
	db 0, 0 ; Status
	bigdw 186 ; HP
	bigdw 186 ; Max HP
	bigdw 107 ; Atk
	bigdw 101 ; Def
	bigdw 86 ; Spd
	bigdw 103 ; SAtk
	bigdw 111 ; SDef
	db "RAPURASU@@@"

	db STEELIX
	db GOLD_BERRY
	db SANDSTORM, IRON_HEAD, EARTHQUAKE, TOXIC
	dw 0 ; OT ID
	dt 64000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 14, 15, 13, 11 ; DVs
	db 10, 15, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 40 ; Level
	db 0, 0 ; Status
	bigdw 137 ; HP
	bigdw 137 ; Max HP
	bigdw 106 ; Atk
	bigdw 199 ; Def
	bigdw 61 ; Spd
	bigdw 79 ; SAtk
	bigdw 87 ; SDef
	db "HAGANE-RU@@"

	db ALAKAZAM
	db KINGS_ROCK
	db PSYCHIC_M, THUNDERPUNCH, RECOVER, FIRE_PUNCH
	dw 0 ; OT ID
	dt 64000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 55000
	bigdw 50000
	dn 13, 13, 14, 15 ; DVs
	db 10, 15, 20, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 40 ; Level
	db 0, 0 ; Status
	bigdw 126 ; HP
	bigdw 126 ; Max HP
	bigdw 76 ; Atk
	bigdw 73 ; Def
	bigdw 135 ; Spd
	bigdw 147 ; SAtk
	bigdw 107 ; SDef
	db "HU-DEiN@@@@"

	db STARMIE
	db LEFTOVERS
	db BLIZZARD, THUNDERBOLT, SURF, PSYCHIC_M
	dw 0 ; OT ID
	dt 64000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 45000
	dn 15, 13, 11, 14 ; DVs
	db 5, 15, 15, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 40 ; Level
	db 0, 0 ; Status
	bigdw 131 ; HP
	bigdw 131 ; Max HP
	bigdw 99 ; Atk
	bigdw 104 ; Def
	bigdw 127 ; Spd
	bigdw 117 ; SAtk
	bigdw 105 ; SDef
	db "SUTA-MI-@@@"

	db WOBBUFFET
	db GOLD_BERRY
	db COUNTER, MIRROR_COAT, SAFEGUARD, DESTINY_BOND
	dw 0 ; OT ID
	dt 64000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 11, 15, 14, 7 ; DVs
	db 20, 20, 25, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 40 ; Level
	db 0, 0 ; Status
	bigdw 233 ; HP
	bigdw 233 ; Max HP
	bigdw 62 ; Atk
	bigdw 85 ; Def
	bigdw 64 ; Spd
	bigdw 59 ; SAtk
	bigdw 79 ; SDef
	db "SO-NANSU@@@"

	db GOLEM
	db FOCUS_SASH
	db EXPLOSION, EARTHQUAKE, MEGA_PUNCH, ROCK_SLIDE
	dw 0 ; OT ID
	dt 64000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 40000
	bigdw 50000
	bigdw 45000
	dn 13, 13, 14, 13 ; DVs
	db 5, 10, 20, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 40 ; Level
	db 0, 0 ; Status
	bigdw 145 ; HP
	bigdw 145 ; Max HP
	bigdw 125 ; Atk
	bigdw 139 ; Def
	bigdw 74 ; Spd
	bigdw 80 ; SAtk
	bigdw 88 ; SDef
	db "GORO-NIya@@"

	db SCIZOR
	db SCOPE_LENS
	db SLASH, IRON_HEAD, PURSUIT, HYPER_BEAM
	dw 0 ; OT ID
	dt 64000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 40000
	bigdw 50000
	dn 11, 13, 15, 14 ; DVs
	db 20, 25, 20, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 40 ; Level
	db 0, 0 ; Status
	bigdw 139 ; HP
	bigdw 139 ; Max HP
	bigdw 139 ; Atk
	bigdw 117 ; Def
	bigdw 89 ; Spd
	bigdw 82 ; SAtk
	bigdw 102 ; SDef
	db "HAtuSAMU@@@"

	db DUGTRIO
	db KINGS_ROCK
	db EARTHQUAKE, HYPER_BEAM, SLUDGE_BOMB, SAND_ATTACK
	dw 0 ; OT ID
	dt 64000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 14, 11, 11 ; DVs
	db 10, 5, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 40 ; Level
	db 0, 0 ; Status
	bigdw 108 ; HP
	bigdw 108 ; Max HP
	bigdw 103 ; Atk
	bigdw 78 ; Def
	bigdw 131 ; Spd
	bigdw 75 ; SAtk
	bigdw 91 ; SDef
	db "DAGUTORIO@@"

	db SLOWBRO
	db MIRACLEBERRY
	db SURF, PSYCHIC_M, EARTHQUAKE, BLIZZARD
	dw 0 ; OT ID
	dt 64000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 50000
	dn 11, 15, 12, 15 ; DVs
	db 15, 10, 10, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 40 ; Level
	db 0, 0 ; Status
	bigdw 157 ; HP
	bigdw 157 ; Max HP
	bigdw 95 ; Atk
	bigdw 126 ; Def
	bigdw 60 ; Spd
	bigdw 119 ; SAtk
	bigdw 103 ; SDef
	db "YADORAN@@@@"

	db PORYGON2
	db NO_ITEM
	db TRI_ATTACK, RECOVER, PSYBEAM, SHADOW_BALL
	dw 0 ; OT ID
	dt 64000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 11, 12, 14, 15 ; DVs
	db 30, 30, 20, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 40 ; Level
	db 0, 0 ; Status
	bigdw 147 ; HP
	bigdw 147 ; Max HP
	bigdw 99 ; Atk
	bigdw 108 ; Def
	bigdw 86 ; Spd
	bigdw 123 ; SAtk
	bigdw 115 ; SDef
	db "PORIGON2@@@"

	db ARCANINE
	db CHARCOAL
	db FLAME_WHEEL, LEER, BODY_SLAM, ROAR
	dw 0 ; OT ID
	dt 64000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 14, 11, 11 ; DVs
	db 25, 30, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 40 ; Level
	db 0, 0 ; Status
	bigdw 152 ; HP
	bigdw 152 ; Max HP
	bigdw 127 ; Atk
	bigdw 102 ; Def
	bigdw 111 ; Spd
	bigdw 115 ; SAtk
	bigdw 99 ; SDef
	db "UINDEi@@@@@"

	db SALAMENCE
	db LEFTOVERS
	db RAPID_SPIN, PROTECT, TOXIC, SANDSTORM
	dw 0 ; OT ID
	dt 64000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 10, 7, 15 ; DVs
	db 40, 10, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 40 ; Level
	db 0, 0 ; Status
	bigdw 140 ; HP
	bigdw 140 ; Max HP
	bigdw 111 ; Atk
	bigdw 147 ; Def
	bigdw 64 ; Spd
	bigdw 87 ; SAtk
	bigdw 87 ; SDef
	db "HUoRETOSU@@"

	db KIRLIA
	db GOLD_BERRY
	db CURSE, WATER_GUN, ANCIENTPOWER, ROCK_SMASH
	dw 0 ; OT ID
	dt 64000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 14, 15, 15, 7 ; DVs
	db 10, 25, 5, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 40 ; Level
	db 0, 0 ; Status
	bigdw 133 ; HP
	bigdw 133 ; Max HP
	bigdw 86 ; Atk
	bigdw 139 ; Def
	bigdw 83 ; Spd
	bigdw 124 ; SAtk
	bigdw 88 ; SDef
	db "OMUSUTA-@@@"

	db CHARIZARD
	db KINGS_ROCK
	db FIRE_SPIN, DRAGON_RAGE, FLY, SLASH
	dw 0 ; OT ID
	dt 64000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 14, 15, 14 ; DVs
	db 15, 10, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 40 ; Level
	db 0, 0 ; Status
	bigdw 142 ; HP
	bigdw 142 ; Max HP
	bigdw 106 ; Atk
	bigdw 100 ; Def
	bigdw 119 ; Spd
	bigdw 125 ; SAtk
	bigdw 106 ; SDef
	db "RIZA-DON@@@"

	db EXEGGUTOR
	db BRIGHTPOWDER
	db STUN_SPORE, STOMP, PSYCH_UP, CONFUSION
	dw 0 ; OT ID
	dt 64000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 7, 14, 7 ; DVs
	db 10, 20, 10, 25 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 40 ; Level
	db 0, 0 ; Status
	bigdw 158 ; HP
	bigdw 158 ; Max HP
	bigdw 115 ; Atk
	bigdw 100 ; Def
	bigdw 82 ; Spd
	bigdw 132 ; SAtk
	bigdw 84 ; SDef
	db "NAtuSI-@@@@"

	db HYPNO
	db BRIGHTPOWDER
	db CONFUSION, THUNDERPUNCH, HEADBUTT, DISABLE
	dw 0 ; OT ID
	dt 64000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 7, 7, 7, 10 ; DVs
	db 25, 15, 15, 20 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 40 ; Level
	db 0, 0 ; Status
	bigdw 146 ; HP
	bigdw 146 ; Max HP
	bigdw 86 ; Atk
	bigdw 83 ; Def
	bigdw 81 ; Spd
	bigdw 88 ; SAtk
	bigdw 122 ; SDef
	db "SURI-PA-@@@"

; BattleTowerMons group 5

	db KINGDRA
	db GOLD_BERRY
	db SURF, HYPER_BEAM, BLIZZARD, DRAGON_PULSE
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 55000
	bigdw 55000
	bigdw 60000
	bigdw 50000
	bigdw 55000
	dn 13, 13, 15, 15 ; DVs
	db 15, 5, 5, 20 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 179 ; HP
	bigdw 179 ; Max HP
	bigdw 142 ; Atk
	bigdw 143 ; Def
	bigdw 132 ; Spd
	bigdw 144 ; SAtk
	bigdw 144 ; SDef
	db "KINGUDORA@@"

	db HOUNDOOM
	db MIRACLEBERRY
	db REST, CRUNCH, DREAM_EATER, FLAMETHROWER
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 55000
	bigdw 50000
	bigdw 60000
	bigdw 60000
	bigdw 60000
	dn 13, 13, 15, 12 ; DVs
	db 10, 15, 15, 15 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 178 ; HP
	bigdw 178 ; Max HP
	bigdw 135 ; Atk
	bigdw 98 ; Def
	bigdw 145 ; Spd
	bigdw 157 ; SAtk
	bigdw 127 ; SDef
	db "HERUGA-@@@@"

	db SHAYMIN
	db LEFTOVERS
	db SANDSTORM, REST, TOXIC, WRAP
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 60000
	bigdw 60000
	bigdw 60000
	bigdw 60000
	bigdw 55000
	dn 15, 13, 12, 15 ; DVs
	db 10, 10, 10, 20 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 123 ; HP
	bigdw 123 ; Max HP
	bigdw 60 ; Atk
	bigdw 278 ; Def
	bigdw 52 ; Spd
	bigdw 59 ; SAtk
	bigdw 279 ; SDef
	db "TUBOTUBO@@@"

	db SNORLAX
	db LEFTOVERS
	db HYPER_BEAM, EARTHQUAKE, SURF, PSYCH_UP
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 60000
	bigdw 55000
	bigdw 55000
	bigdw 60000
	bigdw 55000
	dn 15, 13, 14, 15 ; DVs
	db 5, 10, 15, 10 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 263 ; HP
	bigdw 263 ; Max HP
	bigdw 159 ; Atk
	bigdw 112 ; Def
	bigdw 79 ; Spd
	bigdw 114 ; SAtk
	bigdw 159 ; SDef
	db "KABIGON@@@@"

	db LAPRAS
	db GOLD_BERRY
	db THUNDERBOLT, SURF, CONFUSE_RAY, BLIZZARD
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 55000
	bigdw 60000
	bigdw 60000
	bigdw 55000
	bigdw 60000
	dn 13, 13, 13, 13 ; DVs
	db 15, 15, 10, 5 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 234 ; HP
	bigdw 234 ; Max HP
	bigdw 133 ; Atk
	bigdw 128 ; Def
	bigdw 107 ; Spd
	bigdw 133 ; SAtk
	bigdw 143 ; SDef
	db "RAPURASU@@@"

	db JOLTEON
	db KINGS_ROCK
	db THUNDERBOLT, THUNDER_WAVE, SHADOW_BALL, HIDDEN_POWER
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 55000
	bigdw 60000
	bigdw 57000
	bigdw 55000
	bigdw 55000
	dn 14, 13, 15, 15 ; DVs
	db 15, 20, 15, 15 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 161 ; HP
	bigdw 161 ; Max HP
	bigdw 114 ; Atk
	bigdw 107 ; Def
	bigdw 179 ; Spd
	bigdw 159 ; SAtk
	bigdw 144 ; SDef
	db "SANDA-SU@@@"

	db SCIZOR
	db LEFTOVERS
	db HYPER_BEAM, SLASH, AGILITY, METAL_CLAW
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 40000
	bigdw 50000
	bigdw 45000
	dn 13, 15, 14, 13 ; DVs
	db 5, 20, 30, 35 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 169 ; HP
	bigdw 169 ; Max HP
	bigdw 175 ; Atk
	bigdw 145 ; Def
	bigdw 111 ; Spd
	bigdw 99 ; SAtk
	bigdw 124 ; SDef
	db "HAtuSAMU@@@"

	db SLOWKING
	db MINT_BERRY
	db REST, SURF, PSYCHIC_M, AMNESIA
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 40000
	bigdw 45000
	bigdw 50000
	bigdw 50000
	dn 13, 15, 13, 14 ; DVs
	db 10, 15, 10, 20 ; PP
	db 15 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 196 ; HP
	bigdw 196 ; Max HP
	bigdw 118 ; Atk
	bigdw 126 ; Def
	bigdw 75 ; Spd
	bigdw 146 ; SAtk
	bigdw 156 ; SDef
	db "YADOKINGU@@"

	db MACHAMP
	db GOLD_BERRY
	db DYNAMICPUNCH, EARTHQUAKE, FIRE_BLAST, THUNDERPUNCH
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 40000
	bigdw 45000
	bigdw 50000
	bigdw 40000
	bigdw 44000
	dn 15, 15, 14, 12 ; DVs
	db 5, 10, 5, 15 ; PP
	db 13 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 187 ; HP
	bigdw 187 ; Max HP
	bigdw 176 ; Atk
	bigdw 127 ; Def
	bigdw 99 ; Spd
	bigdw 108 ; SAtk
	bigdw 128 ; SDef
	db "KAIRIKI-@@@"

	db STARMIE
	db SCOPE_LENS
	db THUNDER_WAVE, RECOVER, THUNDERBOLT, SURF
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 44000
	bigdw 40000
	bigdw 45000
	bigdw 40000
	dn 15, 15, 15, 15 ; DVs
	db 20, 20, 15, 15 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 161 ; HP
	bigdw 161 ; Max HP
	bigdw 121 ; Atk
	bigdw 130 ; Def
	bigdw 161 ; Spd
	bigdw 145 ; SAtk
	bigdw 130 ; SDef
	db "SUTA-MI-@@@"

	db DUGTRIO
	db KINGS_ROCK
	db EARTHQUAKE, SLASH, HYPER_BEAM, SLUDGE_BOMB
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 40000
	bigdw 50000
	bigdw 45000
	bigdw 50000
	dn 15, 7, 15, 14 ; DVs
	db 10, 20, 5, 10 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 135 ; HP
	bigdw 135 ; Max HP
	bigdw 125 ; Atk
	bigdw 89 ; Def
	bigdw 166 ; Spd
	bigdw 96 ; SAtk
	bigdw 116 ; SDef
	db "DAGUTORIO@@"

	db ELECTRODE
	db MIRACLEBERRY
	db THUNDERBOLT, EXPLOSION, MIRROR_COAT, REST
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 45000
	bigdw 54000
	bigdw 40000
	bigdw 50000
	dn 7, 13, 15, 14 ; DVs
	db 15, 5, 20, 10 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 161 ; HP
	bigdw 161 ; Max HP
	bigdw 88 ; Atk
	bigdw 117 ; Def
	bigdw 185 ; Spd
	bigdw 126 ; SAtk
	bigdw 126 ; SDef
	db "MARUMAIN@@@"

	db AERODACTYL
	db KINGS_ROCK
	db HYPER_BEAM, EARTHQUAKE, FIRE_BLAST, IRON_HEAD
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 50000
	bigdw 45000
	bigdw 45000
	dn 15, 13, 13, 13 ; DVs
	db 5, 10, 5, 15 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 181 ; HP
	bigdw 181 ; Max HP
	bigdw 152 ; Atk
	bigdw 110 ; Def
	bigdw 174 ; Spd
	bigdw 104 ; SAtk
	bigdw 119 ; SDef
	db "PUTERA@@@@@"

	db CROBAT
	db LEFTOVERS
	db CONFUSE_RAY, ATTRACT, HYPER_BEAM, TOXIC
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 40000
	bigdw 50000
	bigdw 40000
	bigdw 50000
	dn 14, 15, 15, 15 ; DVs
	db 10, 15, 5, 10 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 178 ; HP
	bigdw 178 ; Max HP
	bigdw 134 ; Atk
	bigdw 127 ; Def
	bigdw 175 ; Spd
	bigdw 117 ; SAtk
	bigdw 127 ; SDef
	db "KUROBAtuTO@"

	db ZAPDOS
	db MIRACLEBERRY
	db DRILL_PECK, THUNDERBOLT, THUNDER_WAVE, HYPER_BEAM
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 45000
	bigdw 40000
	bigdw 50000
	dn 15, 13, 13, 14 ; DVs
	db 20, 15, 20, 5 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 190 ; HP
	bigdw 190 ; Max HP
	bigdw 137 ; Atk
	bigdw 129 ; Def
	bigdw 143 ; Spd
	bigdw 171 ; SAtk
	bigdw 136 ; SDef
	db "SANDA-@@@@@"

	db SKARMORY
	db GOLD_BERRY
	db SANDSTORM, FLY, IRON_HEAD, TOXIC
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 40000
	dn 13, 7, 14, 13 ; DVs
	db 10, 15, 25, 10 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 164 ; HP
	bigdw 164 ; Max HP
	bigdw 125 ; Atk
	bigdw 179 ; Def
	bigdw 116 ; Spd
	bigdw 83 ; SAtk
	bigdw 113 ; SDef
	db "EA-MUDO@@@@"

	db SALAMENCE
	db LEFTOVERS
	db SANDSTORM, TOXIC, EXPLOSION, SWAGGER
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 55000
	bigdw 45000
	bigdw 40000
	dn 12, 15, 13, 13 ; DVs
	db 10, 10, 5, 15 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 169 ; HP
	bigdw 169 ; Max HP
	bigdw 134 ; Atk
	bigdw 189 ; Def
	bigdw 84 ; Spd
	bigdw 103 ; SAtk
	bigdw 103 ; SDef
	db "HUoRETOSU@@"

	db STEELIX
	db MIRACLEBERRY
	db SANDSTORM, IRON_HEAD, REST, EARTHQUAKE
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 50000
	bigdw 40000
	bigdw 45000
	dn 13, 13, 13, 13 ; DVs
	db 10, 15, 10, 10 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 176 ; HP
	bigdw 176 ; Max HP
	bigdw 130 ; Atk
	bigdw 245 ; Def
	bigdw 73 ; Spd
	bigdw 99 ; SAtk
	bigdw 109 ; SDef
	db "HAGANE-RU@@"

	db BAGON
	db SCOPE_LENS
	db DREAM_EATER, CRUNCH, PSYCHIC_M, EARTHQUAKE
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 40000
	bigdw 40000
	bigdw 40000
	bigdw 40000
	bigdw 40000
	dn 4, 5, 5, 6 ; DVs
	db 15, 15, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 161 ; HP
	bigdw 161 ; Max HP
	bigdw 114 ; Atk
	bigdw 100 ; Def
	bigdw 120 ; Spd
	bigdw 126 ; SAtk
	bigdw 101 ; SDef
	db "KIRINRIKI@@"

; BattleTowerMons group 6

	db KINGDRA
	db LEFTOVERS
	db DRAGON_PULSE, SURF, HYPER_BEAM, BLIZZARD
	dw 0 ; OT ID
	dt 216000 ; Exp
	; Stat exp
	bigdw 55000
	bigdw 55000
	bigdw 50000
	bigdw 60000
	bigdw 60000
	dn 13, 13, 15, 14 ; DVs
	db 20, 15, 5, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 60 ; Level
	db 0, 0 ; Status
	bigdw 211 ; HP
	bigdw 211 ; Max HP
	bigdw 169 ; Atk
	bigdw 167 ; Def
	bigdw 161 ; Spd
	bigdw 172 ; SAtk
	bigdw 172 ; SDef
	db "KINGUDORA@@"

	db TYRANITAR
	db GOLD_BERRY
	db CRUNCH, EARTHQUAKE, ROCK_SLIDE, HYPER_BEAM
	dw 0 ; OT ID
	dt 216000 ; Exp
	; Stat exp
	bigdw 55000
	bigdw 60000
	bigdw 55000
	bigdw 60000
	bigdw 55000
	dn 15, 13, 14, 13 ; DVs
	db 15, 10, 10, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 60 ; Level
	db 0, 0 ; Status
	bigdw 240 ; HP
	bigdw 240 ; Max HP
	bigdw 220 ; Atk
	bigdw 187 ; Def
	bigdw 131 ; Spd
	bigdw 169 ; SAtk
	bigdw 175 ; SDef
	db "BANGIRASU@@"

	db HOUNDOOM
	db MIRACLEBERRY
	db FLAMETHROWER, CRUNCH, DREAM_EATER, REST
	dw 0 ; OT ID
	dt 216000 ; Exp
	; Stat exp
	bigdw 60000
	bigdw 55000
	bigdw 55000
	bigdw 60000
	bigdw 55000
	dn 15, 11, 14, 15 ; DVs
	db 15, 15, 15, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 60 ; Level
	db 0, 0 ; Status
	bigdw 212 ; HP
	bigdw 212 ; Max HP
	bigdw 165 ; Atk
	bigdw 113 ; Def
	bigdw 172 ; Spd
	bigdw 189 ; SAtk
	bigdw 153 ; SDef
	db "HERUGA-@@@@"

	db PORYGON2
	db LEFTOVERS
	db BLIZZARD, RECOVER, TOXIC, PSYCHIC_M
	dw 0 ; OT ID
	dt 216000 ; Exp
	; Stat exp
	bigdw 55000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 55000
	dn 13, 13, 13, 14 ; DVs
	db 5, 20, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 60 ; Level
	db 0, 0 ; Status
	bigdw 223 ; HP
	bigdw 223 ; Max HP
	bigdw 149 ; Atk
	bigdw 161 ; Def
	bigdw 125 ; Spd
	bigdw 182 ; SAtk
	bigdw 170 ; SDef
	db "PORIGON2@@@"

	db MACHAMP
	db QUICK_CLAW
	db FIRE_PUNCH, DYNAMICPUNCH, THUNDERPUNCH, EARTHQUAKE
	dw 0 ; OT ID
	dt 216000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 50000
	dn 15, 13, 14, 15 ; DVs
	db 15, 5, 15, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 60 ; Level
	db 0, 0 ; Status
	bigdw 226 ; HP
	bigdw 226 ; Max HP
	bigdw 212 ; Atk
	bigdw 148 ; Def
	bigdw 120 ; Spd
	bigdw 134 ; SAtk
	bigdw 158 ; SDef
	db "KAIRIKI-@@@"

	db ZAPDOS
	db MINT_BERRY
	db REST, DRILL_PECK, THUNDERBOLT, THUNDER_WAVE
	dw 0 ; OT ID
	dt 216000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 55000
	bigdw 50000
	dn 13, 13, 15, 13 ; DVs
	db 10, 20, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 60 ; Level
	db 0, 0 ; Status
	bigdw 229 ; HP
	bigdw 229 ; Max HP
	bigdw 160 ; Atk
	bigdw 155 ; Def
	bigdw 177 ; Spd
	bigdw 203 ; SAtk
	bigdw 161 ; SDef
	db "SANDA-@@@@@"

	db WOBBUFFET
	db GOLD_BERRY
	db COUNTER, MIRROR_COAT, DESTINY_BOND, SAFEGUARD
	dw 0 ; OT ID
	dt 216000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 45000
	dn 15, 13, 14, 13 ; DVs
	db 20, 20, 5, 25 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 60 ; Level
	db 0, 0 ; Status
	bigdw 346 ; HP
	bigdw 346 ; Max HP
	bigdw 95 ; Atk
	bigdw 122 ; Def
	bigdw 94 ; Spd
	bigdw 92 ; SAtk
	bigdw 122 ; SDef
	db "SO-NANSU@@@"

	db AERODACTYL
	db LEFTOVERS
	db HYPER_BEAM, SUPERSONIC, EARTHQUAKE, BITE
	dw 0 ; OT ID
	dt 216000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 50000
	bigdw 45000
	bigdw 45000
	dn 15, 13, 13, 13 ; DVs
	db 5, 20, 10, 25 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 60 ; Level
	db 0, 0 ; Status
	bigdw 215 ; HP
	bigdw 215 ; Max HP
	bigdw 182 ; Atk
	bigdw 131 ; Def
	bigdw 208 ; Spd
	bigdw 124 ; SAtk
	bigdw 142 ; SDef
	db "PUTERA@@@@@"

	db DRAGONITE
	db MIRACLEBERRY
	db HYPER_BEAM, ICY_WIND, THUNDERBOLT, SURF
	dw 0 ; OT ID
	dt 216000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 40000
	bigdw 50000
	bigdw 45000
	dn 13, 13, 15, 13 ; DVs
	db 5, 15, 15, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 60 ; Level
	db 0, 0 ; Status
	bigdw 229 ; HP
	bigdw 229 ; Max HP
	bigdw 214 ; Atk
	bigdw 164 ; Def
	bigdw 152 ; Spd
	bigdw 172 ; SAtk
	bigdw 172 ; SDef
	db "KAIRIyu-@@@"

	db UMBREON
	db GOLD_BERRY
	db SAND_ATTACK, MOONLIGHT, PSYCHIC_M, NIGHT_SLASH
	dw 0 ; OT ID
	dt 216000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 13, 14, 15 ; DVs
	db 10, 5, 10, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 60 ; Level
	db 0, 0 ; Status
	bigdw 232 ; HP
	bigdw 232 ; Max HP
	bigdw 134 ; Atk
	bigdw 185 ; Def
	bigdw 132 ; Spd
	bigdw 128 ; SAtk
	bigdw 212 ; SDef
	db "BURAtuKI-@@"

	db ARCANINE
	db CHARCOAL
	db FLAMETHROWER, CRUNCH, EXTREMESPEED, IRON_HEAD
	dw 0 ; OT ID
	dt 216000 ; Exp
	; Stat exp
	bigdw 55000
	bigdw 50000
	bigdw 40000
	bigdw 55000
	bigdw 50000
	dn 15, 13, 14, 13 ; DVs
	db 15, 15, 5, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 60 ; Level
	db 0, 0 ; Status
	bigdw 228 ; HP
	bigdw 228 ; Max HP
	bigdw 188 ; Atk
	bigdw 146 ; Def
	bigdw 170 ; Spd
	bigdw 173 ; SAtk
	bigdw 149 ; SDef
	db "UINDEi@@@@@"

	db SKARMORY
	db MIRACLEBERRY
	db IRON_HEAD, FLY, TOXIC, PROTECT
	dw 0 ; OT ID
	dt 216000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 50000
	dn 15, 11, 14, 11 ; DVs
	db 25, 15, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 60 ; Level
	db 0, 0 ; Status
	bigdw 196 ; HP
	bigdw 196 ; Max HP
	bigdw 152 ; Atk
	bigdw 218 ; Def
	bigdw 138 ; Spd
	bigdw 99 ; SAtk
	bigdw 135 ; SDef
	db "EA-MUDO@@@@"

	db BLISSEY
	db LEFTOVERS
	db SOFTBOILED, TOXIC, PROTECT, PSYCHIC_M
	dw 0 ; OT ID
	dt 216000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 45000
	bigdw 50000
	dn 15, 11, 12, 13 ; DVs
	db 10, 10, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 60 ; Level
	db 0, 0 ; Status
	bigdw 424 ; HP
	bigdw 424 ; Max HP
	bigdw 66 ; Atk
	bigdw 63 ; Def
	bigdw 117 ; Spd
	bigdw 143 ; SAtk
	bigdw 215 ; SDef
	db "HAPINASU@@@"

	db SNORLAX
	db PINK_BOW
	db ROCK_SLIDE, SURF, BODY_SLAM, EARTHQUAKE
	dw 0 ; OT ID
	dt 216000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 10, 15, 12 ; DVs
	db 10, 15, 15, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 60 ; Level
	db 0, 0 ; Status
	bigdw 307 ; HP
	bigdw 307 ; Max HP
	bigdw 186 ; Atk
	bigdw 128 ; Def
	bigdw 92 ; Spd
	bigdw 130 ; SAtk
	bigdw 184 ; SDef
	db "KABIGON@@@@"

	db HERACROSS
	db FOCUS_SASH
	db REVERSAL, MEGAHORN, EARTHQUAKE, COUNTER
	dw 0 ; OT ID
	dt 216000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 40000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 13, 15, 14, 13 ; DVs
	db 15, 10, 10, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 60 ; Level
	db 0, 0 ; Status
	bigdw 214 ; HP
	bigdw 214 ; Max HP
	bigdw 200 ; Atk
	bigdw 146 ; Def
	bigdw 156 ; Spd
	bigdw 101 ; SAtk
	bigdw 167 ; SDef
	db "HERAKUROSU@"

	db JYNX
	db MIRACLEBERRY
	db BLIZZARD, PSYCHIC_M, SHADOW_BALL, ICY_WIND
	dw 0 ; OT ID
	dt 216000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 15, 14, 11 ; DVs
	db 5, 10, 15, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 60 ; Level
	db 0, 0 ; Status
	bigdw 196 ; HP
	bigdw 196 ; Max HP
	bigdw 116 ; Atk
	bigdw 98 ; Def
	bigdw 168 ; Spd
	bigdw 189 ; SAtk
	bigdw 165 ; SDef
	db "RU-ZIyuRA@@"

	db BLASTOISE
	db GOLD_BERRY
	db SURF, EARTHQUAKE, RAPID_SPIN, BLIZZARD
	dw 0 ; OT ID
	dt 216000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 14, 15, 14 ; DVs
	db 15, 10, 40, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 60 ; Level
	db 0, 0 ; Status
	bigdw 209 ; HP
	bigdw 209 ; Max HP
	bigdw 155 ; Atk
	bigdw 174 ; Def
	bigdw 149 ; Spd
	bigdw 156 ; SAtk
	bigdw 180 ; SDef
	db "KAMEtuKUSU@"

	db RHYDON
	db QUICK_CLAW
	db EARTHQUAKE, SURF, IRON_HEAD, ROCK_SLIDE
	dw 0 ; OT ID
	dt 216000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 11, 15, 10 ; DVs
	db 10, 15, 15, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 60 ; Level
	db 0, 0 ; Status
	bigdw 245 ; HP
	bigdw 245 ; Max HP
	bigdw 212 ; Atk
	bigdw 195 ; Def
	bigdw 104 ; Spd
	bigdw 104 ; SAtk
	bigdw 104 ; SDef
	db "SAIDON@@@@@"

	db SANDSLASH
	db SCOPE_LENS
	db EARTHQUAKE, SLASH, HYPER_BEAM, SNORE
	dw 0 ; OT ID
	dt 216000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 11, 7, 6, 7 ; DVs
	db 10, 20, 5, 15 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 60 ; Level
	db 0, 0 ; Status
	bigdw 201 ; HP
	bigdw 201 ; Max HP
	bigdw 164 ; Atk
	bigdw 171 ; Def
	bigdw 116 ; Spd
	bigdw 93 ; SAtk
	bigdw 105 ; SDef
	db "SANDOPAN@@@"

; BattleTowerMons group 7

	db JOLTEON
	db MIRACLEBERRY
	db THUNDERBOLT, HYPER_BEAM, SHADOW_BALL, ROAR
	dw 0 ; OT ID
	dt 343000 ; Exp
	; Stat exp
	bigdw 60000
	bigdw 56000
	bigdw 55000
	bigdw 50000
	bigdw 60000
	dn 15, 11, 14, 15 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 70 ; Level
	db 0, 0 ; Status
	bigdw 231 ; HP
	bigdw 231 ; Max HP
	bigdw 158 ; Atk
	bigdw 145 ; Def
	bigdw 245 ; Spd
	bigdw 222 ; SAtk
	bigdw 201 ; SDef
	db "SANDA-SU@@@"

	db VAPOREON
	db LEFTOVERS
	db BLIZZARD, SHADOW_BALL, SURF, SAND_ATTACK
	dw 0 ; OT ID
	dt 343000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 60000
	bigdw 60000
	bigdw 50000
	dn 11, 15, 14, 15 ; DVs
	db 5, 15, 15, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 70 ; Level
	db 0, 0 ; Status
	bigdw 318 ; HP
	bigdw 318 ; Max HP
	bigdw 149 ; Atk
	bigdw 152 ; Def
	bigdw 158 ; Spd
	bigdw 218 ; SAtk
	bigdw 197 ; SDef
	db "SIyaWA-ZU@@"

	db UMBREON
	db GOLD_BERRY
	db NIGHT_SLASH, MOONLIGHT, PSYCH_UP, TOXIC
	dw 0 ; OT ID
	dt 343000 ; Exp
	; Stat exp
	bigdw 54000
	bigdw 60000
	bigdw 55000
	bigdw 50000
	bigdw 58000
	dn 13, 13, 13, 13 ; DVs
	db 20, 5, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 70 ; Level
	db 0, 0 ; Status
	bigdw 274 ; HP
	bigdw 274 ; Max HP
	bigdw 156 ; Atk
	bigdw 217 ; Def
	bigdw 152 ; Spd
	bigdw 149 ; SAtk
	bigdw 247 ; SDef
	db "BURAtuKI-@@"

	db BLISSEY
	db GOLD_BERRY
	db COUNTER, SOFTBOILED, SHADOW_BALL, THUNDERBOLT
	dw 0 ; OT ID
	dt 343000 ; Exp
	; Stat exp
	bigdw 55000
	bigdw 55000
	bigdw 55000
	bigdw 58000
	bigdw 50000
	dn 13, 15, 14, 13 ; DVs
	db 20, 10, 15, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 70 ; Level
	db 0, 0 ; Status
	bigdw 495 ; HP
	bigdw 495 ; Max HP
	bigdw 77 ; Atk
	bigdw 80 ; Def
	bigdw 143 ; Spd
	bigdw 166 ; SAtk
	bigdw 250 ; SDef
	db "HAPINASU@@@"

	db SNORLAX
	db LEFTOVERS
	db ROCK_SLIDE, EARTHQUAKE, BLIZZARD, SHADOW_BALL
	dw 0 ; OT ID
	dt 343000 ; Exp
	; Stat exp
	bigdw 55000
	bigdw 55000
	bigdw 60000
	bigdw 55000
	bigdw 50000
	dn 13, 13, 13, 13 ; DVs
	db 10, 10, 5, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 70 ; Level
	db 0, 0 ; Status
	bigdw 365 ; HP
	bigdw 365 ; Max HP
	bigdw 217 ; Atk
	bigdw 156 ; Def
	bigdw 105 ; Spd
	bigdw 152 ; SAtk
	bigdw 215 ; SDef
	db "KABIGON@@@@"

	db HOUNDOOM
	db KINGS_ROCK
	db CRUNCH, FLAMETHROWER, NIGHT_SLASH, ROAR
	dw 0 ; OT ID
	dt 343000 ; Exp
	; Stat exp
	bigdw 58000
	bigdw 50000
	bigdw 55000
	bigdw 60000
	bigdw 55000
	dn 13, 13, 12, 13 ; DVs
	db 15, 15, 20, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 70 ; Level
	db 0, 0 ; Status
	bigdw 245 ; HP
	bigdw 245 ; Max HP
	bigdw 187 ; Atk
	bigdw 133 ; Def
	bigdw 197 ; Spd
	bigdw 217 ; SAtk
	bigdw 175 ; SDef
	db "HERUGA-@@@@"

	db TYRANITAR
	db LEFTOVERS
	db EARTHQUAKE, CRUNCH, ROCK_SLIDE, HYPER_BEAM
	dw 0 ; OT ID
	dt 343000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 45000
	bigdw 45000
	bigdw 50000
	bigdw 45000
	dn 13, 11, 13, 15 ; DVs
	db 10, 15, 10, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 70 ; Level
	db 0, 0 ; Status
	bigdw 279 ; HP
	bigdw 279 ; Max HP
	bigdw 247 ; Atk
	bigdw 211 ; Def
	bigdw 147 ; Spd
	bigdw 196 ; SAtk
	bigdw 203 ; SDef
	db "BANGIRASU@@"

	db ZAPDOS
	db GOLD_BERRY
	db THUNDERBOLT, DRILL_PECK, THUNDER_WAVE, HYPER_BEAM
	dw 0 ; OT ID
	dt 343000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 50000
	bigdw 45000
	bigdw 45000
	dn 13, 11, 13, 15 ; DVs
	db 15, 20, 20, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 70 ; Level
	db 0, 0 ; Status
	bigdw 264 ; HP
	bigdw 264 ; Max HP
	bigdw 187 ; Atk
	bigdw 177 ; Def
	bigdw 200 ; Spd
	bigdw 238 ; SAtk
	bigdw 189 ; SDef
	db "SANDA-@@@@@"

	db EXEGGUTOR
	db MIRACLEBERRY
	db REST, EXPLOSION, PSYCHIC_M, GIGA_DRAIN
	dw 0 ; OT ID
	dt 343000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 40000
	bigdw 50000
	bigdw 45000
	dn 13, 13, 14, 13 ; DVs
	db 10, 5, 10, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 70 ; Level
	db 0, 0 ; Status
	bigdw 268 ; HP
	bigdw 268 ; Max HP
	bigdw 194 ; Atk
	bigdw 177 ; Def
	bigdw 140 ; Spd
	bigdw 235 ; SAtk
	bigdw 151 ; SDef
	db "NAtuSI-@@@@"

	db UMBREON
	db GOLD_BERRY
	db MOONLIGHT, NIGHT_SLASH, PSYCHIC_M, SHADOW_BALL
	dw 0 ; OT ID
	dt 343000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 45000
	bigdw 45000
	bigdw 50000
	dn 15, 13, 14, 11 ; DVs
	db 5, 20, 10, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 70 ; Level
	db 0, 0 ; Status
	bigdw 269 ; HP
	bigdw 269 ; Max HP
	bigdw 155 ; Atk
	bigdw 214 ; Def
	bigdw 152 ; Spd
	bigdw 142 ; SAtk
	bigdw 240 ; SDef
	db "BURAtuKI-@@"

	db GYARADOS
	db BRIGHTPOWDER
	db SURF, THUNDERBOLT, HYPER_BEAM, ROAR
	dw 0 ; OT ID
	dt 343000 ; Exp
	; Stat exp
	bigdw 55000
	bigdw 45000
	bigdw 50000
	bigdw 55000
	bigdw 50000
	dn 13, 11, 14, 15 ; DVs
	db 15, 15, 5, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 70 ; Level
	db 0, 0 ; Status
	bigdw 271 ; HP
	bigdw 271 ; Max HP
	bigdw 235 ; Atk
	bigdw 169 ; Def
	bigdw 178 ; Spd
	bigdw 148 ; SAtk
	bigdw 204 ; SDef
	db "GIyaRADOSU@"

	db QUAGSIRE
	db MIRACLEBERRY
	db EARTHQUAKE, SURF, SLUDGE_BOMB, IRON_HEAD
	dw 0 ; OT ID
	dt 343000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 50000
	dn 13, 14, 13, 13 ; DVs
	db 10, 15, 10, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 70 ; Level
	db 0, 0 ; Status
	bigdw 266 ; HP
	bigdw 266 ; Max HP
	bigdw 180 ; Atk
	bigdw 180 ; Def
	bigdw 110 ; Spd
	bigdw 152 ; SAtk
	bigdw 152 ; SDef
	db "NUO-@@@@@@@"

	db URSARING
	db SCOPE_LENS
	db SLASH, EARTHQUAKE, HYPER_BEAM, THUNDERPUNCH
	dw 0 ; OT ID
	dt 343000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 45000
	bigdw 50000
	dn 15, 13, 14, 13 ; DVs
	db 20, 10, 5, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 70 ; Level
	db 0, 0 ; Status
	bigdw 262 ; HP
	bigdw 262 ; Max HP
	bigdw 245 ; Atk
	bigdw 166 ; Def
	bigdw 138 ; Spd
	bigdw 166 ; SAtk
	bigdw 166 ; SDef
	db "RINGUMA@@@@"

	db MR__MIME
	db KINGS_ROCK
	db REFLECT, FIRE_PUNCH, PSYCHIC_M, ENCORE
	dw 0 ; OT ID
	dt 343000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 45000
	bigdw 45000
	bigdw 50000
	bigdw 50000
	dn 11, 13, 15, 11 ; DVs
	db 20, 15, 10, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 70 ; Level
	db 0, 0 ; Status
	bigdw 195 ; HP
	bigdw 195 ; Max HP
	bigdw 120 ; Atk
	bigdw 151 ; Def
	bigdw 190 ; Spd
	bigdw 198 ; SAtk
	bigdw 226 ; SDef
	db "BARIYA-DO@@"

	db BRELOOM
	db QUICK_CLAW
	db DYNAMICPUNCH, ICE_PUNCH, THUNDERPUNCH, ROCK_SLIDE
	dw 0 ; OT ID
	dt 343000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 40000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 11, 13, 14, 15 ; DVs
	db 5, 15, 15, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 70 ; Level
	db 0, 0 ; Status
	bigdw 227 ; HP
	bigdw 227 ; Max HP
	bigdw 202 ; Atk
	bigdw 145 ; Def
	bigdw 196 ; Spd
	bigdw 148 ; SAtk
	bigdw 162 ; SDef
	db "OKORIZARU@@"

	db BAGON
	db GOLD_BERRY
	db AGILITY, BATON_PASS, CRUNCH, EARTHQUAKE
	dw 0 ; OT ID
	dt 343000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 14, 15, 13 ; DVs
	db 30, 40, 15, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 70 ; Level
	db 0, 0 ; Status
	bigdw 231 ; HP
	bigdw 231 ; Max HP
	bigdw 176 ; Atk
	bigdw 154 ; Def
	bigdw 183 ; Spd
	bigdw 187 ; SAtk
	bigdw 152 ; SDef
	db "KIRINRIKI@@"

	db SOLOSIS
	db FOCUS_SASH
	db REVERSAL, ENDURE, BODY_SLAM, MEGA_KICK
	dw 0 ; OT ID
	dt 343000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 14, 15, 14 ; DVs
	db 15, 10, 15, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 70 ; Level
	db 0, 0 ; Status
	bigdw 202 ; HP
	bigdw 202 ; Max HP
	bigdw 232 ; Atk
	bigdw 137 ; Def
	bigdw 186 ; Spd
	bigdw 112 ; SAtk
	bigdw 217 ; SDef
	db "SAWAMURA-@@"

	db HERACROSS
	db BRIGHTPOWDER
	db REVERSAL, ENDURE, MEGAHORN, EARTHQUAKE
	dw 0 ; OT ID
	dt 343000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 7, 15, 7 ; DVs
	db 15, 10, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 70 ; Level
	db 0, 0 ; Status
	bigdw 251 ; HP
	bigdw 251 ; Max HP
	bigdw 239 ; Atk
	bigdw 158 ; Def
	bigdw 183 ; Spd
	bigdw 109 ; SAtk
	bigdw 186 ; SDef
	db "HERAKUROSU@"

	db VENUSAUR
	db BRIGHTPOWDER
	db SUNNY_DAY, SOLARBEAM, SYNTHESIS, HYPER_BEAM
	dw 0 ; OT ID
	dt 343000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 7, 6, 4, 4 ; DVs
	db 5, 10, 5, 5 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 70 ; Level
	db 0, 0 ; Status
	bigdw 233 ; HP
	bigdw 233 ; Max HP
	bigdw 159 ; Atk
	bigdw 159 ; Def
	bigdw 152 ; Spd
	bigdw 180 ; SAtk
	bigdw 180 ; SDef
	db "HUSIGIBANA@"

; BattleTowerMons group 8

	db JOLTEON
	db MIRACLEBERRY
	db THUNDER_WAVE, THUNDERBOLT, IRON_HEAD, ROAR
	dw 0 ; OT ID
	dt 512000 ; Exp
	; Stat exp
	bigdw 60000
	bigdw 55000
	bigdw 60000
	bigdw 55000
	bigdw 55000
	dn 15, 13, 14, 11 ; DVs
	db 20, 15, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 80 ; Level
	db 0, 0 ; Status
	bigdw 263 ; HP
	bigdw 263 ; Max HP
	bigdw 179 ; Atk
	bigdw 170 ; Def
	bigdw 281 ; Spd
	bigdw 245 ; SAtk
	bigdw 221 ; SDef
	db "SANDA-SU@@@"

	db SNORLAX
	db LEFTOVERS
	db REST, BELLY_DRUM, SNORE, EARTHQUAKE
	dw 0 ; OT ID
	dt 512000 ; Exp
	; Stat exp
	bigdw 60000
	bigdw 55000
	bigdw 50000
	bigdw 55500
	bigdw 60000
	dn 13, 11, 14, 13 ; DVs
	db 10, 10, 15, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 80 ; Level
	db 0, 0 ; Status
	bigdw 415 ; HP
	bigdw 415 ; Max HP
	bigdw 248 ; Atk
	bigdw 170 ; Def
	bigdw 121 ; Spd
	bigdw 178 ; SAtk
	bigdw 250 ; SDef
	db "KABIGON@@@@"

	db HOUNDOOM
	db MINT_BERRY
	db REST, CRUNCH, FLAMETHROWER, SUNNY_DAY
	dw 0 ; OT ID
	dt 512000 ; Exp
	; Stat exp
	bigdw 55000
	bigdw 50000
	bigdw 55000
	bigdw 55000
	bigdw 55000
	dn 15, 13, 13, 11 ; DVs
	db 10, 15, 15, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 80 ; Level
	db 0, 0 ; Status
	bigdw 280 ; HP
	bigdw 280 ; Max HP
	bigdw 217 ; Atk
	bigdw 152 ; Def
	bigdw 224 ; Spd
	bigdw 245 ; SAtk
	bigdw 197 ; SDef
	db "HERUGA-@@@@"

	db TAUROS
	db GOLD_BERRY
	db EARTHQUAKE, BODY_SLAM, IRON_HEAD, HYPER_BEAM
	dw 0 ; OT ID
	dt 512000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 30000
	bigdw 50000
	dn 15, 13, 13, 14 ; DVs
	db 10, 15, 15, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 80 ; Level
	db 0, 0 ; Status
	bigdw 276 ; HP
	bigdw 276 ; Max HP
	bigdw 233 ; Atk
	bigdw 221 ; Def
	bigdw 236 ; Spd
	bigdw 135 ; SAtk
	bigdw 183 ; SDef
	db "KENTAROSU@@"

	db LAPRAS
	db MINT_BERRY
	db REST, SURF, CONFUSE_RAY, PSYCHIC_M
	dw 0 ; OT ID
	dt 512000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 55000
	bigdw 50000
	dn 13, 15, 13, 11 ; DVs
	db 10, 15, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 80 ; Level
	db 0, 0 ; Status
	bigdw 366 ; HP
	bigdw 366 ; Max HP
	bigdw 205 ; Atk
	bigdw 201 ; Def
	bigdw 168 ; Spd
	bigdw 202 ; SAtk
	bigdw 218 ; SDef
	db "RAPURASU@@@"

	db TYRANITAR
	db MIRACLEBERRY
	db REST, CRUNCH, EARTHQUAKE, ROCK_SLIDE
	dw 0 ; OT ID
	dt 512000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 55000
	bigdw 50000
	bigdw 55000
	bigdw 50000
	dn 13, 15, 13, 11 ; DVs
	db 10, 15, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 80 ; Level
	db 0, 0 ; Status
	bigdw 318 ; HP
	bigdw 318 ; Max HP
	bigdw 286 ; Atk
	bigdw 249 ; Def
	bigdw 169 ; Spd
	bigdw 218 ; SAtk
	bigdw 226 ; SDef
	db "BANGIRASU@@"

	db GENGAR
	db NO_ITEM
	db THUNDERBOLT, SHADOW_BALL, CONFUSE_RAY, SHADOW_BALL
	dw 0 ; OT ID
	dt 512000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 45000
	bigdw 55000
	bigdw 50000
	dn 13, 14, 13, 13 ; DVs
	db 15, 15, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 80 ; Level
	db 0, 0 ; Status
	bigdw 247 ; HP
	bigdw 247 ; Max HP
	bigdw 173 ; Atk
	bigdw 165 ; Def
	bigdw 248 ; Spd
	bigdw 277 ; SAtk
	bigdw 189 ; SDef
	db "GENGA-@@@@@"

	db SALAMENCE
	db LEFTOVERS
	db EXPLOSION, TOXIC, SOLARBEAM, SWAGGER
	dw 0 ; OT ID
	dt 512000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 50000
	bigdw 45000
	bigdw 50000
	dn 15, 13, 14, 13 ; DVs
	db 5, 10, 10, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 80 ; Level
	db 0, 0 ; Status
	bigdw 273 ; HP
	bigdw 273 ; Max HP
	bigdw 217 ; Atk
	bigdw 293 ; Def
	bigdw 133 ; Spd
	bigdw 165 ; SAtk
	bigdw 165 ; SDef
	db "HUoRETOSU@@"

	db KINGDRA
	db MINT_BERRY
	db REST, SURF, BLIZZARD, DRAGON_PULSE
	dw 0 ; OT ID
	dt 512000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 40000
	bigdw 55000
	bigdw 50000
	dn 15, 11, 14, 13 ; DVs
	db 10, 15, 5, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 80 ; Level
	db 0, 0 ; Status
	bigdw 273 ; HP
	bigdw 273 ; Max HP
	bigdw 225 ; Atk
	bigdw 214 ; Def
	bigdw 209 ; Spd
	bigdw 221 ; SAtk
	bigdw 221 ; SDef
	db "KINGUDORA@@"

	db DRAGONITE
	db GOLD_BERRY
	db THUNDER_WAVE, SURF, THUNDERBOLT, OUTRAGE
	dw 0 ; OT ID
	dt 512000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 45000
	dn 13, 13, 13, 13 ; DVs
	db 20, 15, 15, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 80 ; Level
	db 0, 0 ; Status
	bigdw 303 ; HP
	bigdw 303 ; Max HP
	bigdw 284 ; Atk
	bigdw 221 ; Def
	bigdw 197 ; Spd
	bigdw 228 ; SAtk
	bigdw 228 ; SDef
	db "KAIRIyu-@@@"

	db PORYGON2
	db LEFTOVERS
	db PSYCHIC_M, RECOVER, HYPER_BEAM, TRI_ATTACK
	dw 0 ; OT ID
	dt 512000 ; Exp
	; Stat exp
	bigdw 55000
	bigdw 50000
	bigdw 40000
	bigdw 55000
	bigdw 50000
	dn 13, 15, 14, 13 ; DVs
	db 10, 20, 5, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 80 ; Level
	db 0, 0 ; Status
	bigdw 293 ; HP
	bigdw 293 ; Max HP
	bigdw 197 ; Atk
	bigdw 213 ; Def
	bigdw 169 ; Spd
	bigdw 237 ; SAtk
	bigdw 221 ; SDef
	db "PORIGON2@@@"

	db JYNX
	db QUICK_CLAW
	db LOVELY_KISS, BLIZZARD, DREAM_EATER, PSYCHIC_M
	dw 0 ; OT ID
	dt 512000 ; Exp
	; Stat exp
	bigdw 55000
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 50000
	dn 13, 15, 13, 15 ; DVs
	db 10, 5, 15, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 80 ; Level
	db 0, 0 ; Status
	bigdw 264 ; HP
	bigdw 264 ; Max HP
	bigdw 149 ; Atk
	bigdw 127 ; Def
	bigdw 221 ; Spd
	bigdw 257 ; SAtk
	bigdw 225 ; SDef
	db "RU-ZIyuRA@@"

	db GROUDON
	db GOLD_BERRY
	db SURF, CONFUSE_RAY, BLIZZARD, WING_ATTACK
	dw 0 ; OT ID
	dt 512000 ; Exp
	; Stat exp
	bigdw 40000
	bigdw 45000
	bigdw 40000
	bigdw 45000
	bigdw 50000
	dn 13, 15, 13, 12 ; DVs
	db 15, 10, 5, 35 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 80 ; Level
	db 0, 0 ; Status
	bigdw 256 ; HP
	bigdw 256 ; Max HP
	bigdw 132 ; Atk
	bigdw 181 ; Def
	bigdw 180 ; Spd
	bigdw 196 ; SAtk
	bigdw 292 ; SDef
	db "MANTAIN@@@@"

	db SKARMORY
	db QUICK_CLAW
	db IRON_HEAD, FLY, SAND_ATTACK, TOXIC
	dw 0 ; OT ID
	dt 512000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 45000
	bigdw 35000
	bigdw 50000
	bigdw 50000
	dn 13, 13, 14, 15 ; DVs
	db 25, 15, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 80 ; Level
	db 0, 0 ; Status
	bigdw 258 ; HP
	bigdw 258 ; Max HP
	bigdw 196 ; Atk
	bigdw 286 ; Def
	bigdw 183 ; Spd
	bigdw 137 ; SAtk
	bigdw 185 ; SDef
	db "EA-MUDO@@@@"

	db MOLTRES
	db CHARCOAL
	db FLAMETHROWER, SKY_ATTACK, IRON_HEAD, HYPER_BEAM
	dw 0 ; OT ID
	dt 512000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 40000
	bigdw 50000
	bigdw 40000
	bigdw 50000
	dn 13, 13, 15, 14 ; DVs
	db 15, 5, 25, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 80 ; Level
	db 0, 0 ; Status
	bigdw 300 ; HP
	bigdw 300 ; Max HP
	bigdw 225 ; Atk
	bigdw 213 ; Def
	bigdw 213 ; Spd
	bigdw 271 ; SAtk
	bigdw 207 ; SDef
	db "HUaIYA-@@@@"

	db AERODACTYL
	db MIRACLEBERRY
	db HYPER_BEAM, REST, EARTHQUAKE, ROAR
	dw 0 ; OT ID
	dt 512000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 40000
	bigdw 50000
	bigdw 40000
	bigdw 50000
	dn 15, 15, 14, 13 ; DVs
	db 5, 10, 10, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 80 ; Level
	db 0, 0 ; Status
	bigdw 282 ; HP
	bigdw 282 ; Max HP
	bigdw 237 ; Atk
	bigdw 177 ; Def
	bigdw 275 ; Spd
	bigdw 165 ; SAtk
	bigdw 189 ; SDef
	db "PUTERA@@@@@"

	db ELECTRODE
	db KINGS_ROCK
	db THUNDERBOLT, EXPLOSION, MIRROR_COAT, TOXIC
	dw 0 ; OT ID
	dt 512000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 40000
	bigdw 40000
	bigdw 50000
	dn 15, 15, 14, 15 ; DVs
	db 15, 5, 20, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 80 ; Level
	db 0, 0 ; Status
	bigdw 250 ; HP
	bigdw 250 ; Max HP
	bigdw 153 ; Atk
	bigdw 181 ; Def
	bigdw 291 ; Spd
	bigdw 201 ; SAtk
	bigdw 201 ; SDef
	db "MARUMAIN@@@"

	db DUGTRIO
	db SCOPE_LENS
	db SLASH, EARTHQUAKE, SHADOW_BALL, SAND_ATTACK
	dw 0 ; OT ID
	dt 512000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 40000
	bigdw 50000
	bigdw 40000
	dn 15, 13, 13, 13 ; DVs
	db 20, 10, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 80 ; Level
	db 0, 0 ; Status
	bigdw 214 ; HP
	bigdw 214 ; Max HP
	bigdw 201 ; Atk
	bigdw 145 ; Def
	bigdw 261 ; Spd
	bigdw 145 ; SAtk
	bigdw 177 ; SDef
	db "DAGUTORIO@@"

	db VICTREEBEL
	db QUICK_CLAW
	db GIGA_DRAIN, SLUDGE_BOMB, HYPER_BEAM, TOXIC
	dw 0 ; OT ID
	dt 512000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 6, 5, 6, 5 ; DVs
	db 5, 10, 5, 10 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 80 ; Level
	db 0, 0 ; Status
	bigdw 260 ; HP
	bigdw 260 ; Max HP
	bigdw 217 ; Atk
	bigdw 151 ; Def
	bigdw 161 ; Spd
	bigdw 207 ; SAtk
	bigdw 143 ; SDef
	db "UTUBOtuTO@@"

; BattleTowerMons group 9

	db UMBREON
	db KINGS_ROCK
	db NIGHT_SLASH, SAND_ATTACK, MOONLIGHT, CONFUSE_RAY
	dw 0 ; OT ID
	dt 729000 ; Exp
	; Stat exp
	bigdw 60000
	bigdw 60000
	bigdw 55000
	bigdw 60000
	bigdw 55000
	dn 15, 13, 14, 13 ; DVs
	db 20, 10, 5, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 90 ; Level
	db 0, 0 ; Status
	bigdw 349 ; HP
	bigdw 349 ; Max HP
	bigdw 203 ; Atk
	bigdw 278 ; Def
	bigdw 202 ; Spd
	bigdw 188 ; SAtk
	bigdw 314 ; SDef
	db "BURAtuKI-@@"

	db DRAGONITE
	db QUICK_CLAW
	db FIRE_BLAST, HYPER_BEAM, OUTRAGE, BLIZZARD
	dw 0 ; OT ID
	dt 729000 ; Exp
	; Stat exp
	bigdw 65000
	bigdw 50000
	bigdw 56000
	bigdw 60000
	bigdw 60000
	dn 15, 13, 14, 13 ; DVs
	db 5, 5, 15, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 90 ; Level
	db 0, 0 ; Status
	bigdw 343 ; HP
	bigdw 343 ; Max HP
	bigdw 322 ; Atk
	bigdw 252 ; Def
	bigdw 229 ; Spd
	bigdw 263 ; SAtk
	bigdw 263 ; SDef
	db "KAIRIyu-@@@"

	db STARMIE
	db LEFTOVERS
	db RECOVER, THUNDERBOLT, SURF, PSYCHIC_M
	dw 0 ; OT ID
	dt 729000 ; Exp
	; Stat exp
	bigdw 60000
	bigdw 60000
	bigdw 60000
	bigdw 55000
	bigdw 60000
	dn 13, 15, 13, 13 ; DVs
	db 20, 15, 15, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 90 ; Level
	db 0, 0 ; Status
	bigdw 289 ; HP
	bigdw 289 ; Max HP
	bigdw 218 ; Atk
	bigdw 239 ; Def
	bigdw 287 ; Spd
	bigdw 263 ; SAtk
	bigdw 236 ; SDef
	db "SUTA-MI-@@@"

	db CLOYSTER
	db LEFTOVERS
	db EXPLOSION, BLIZZARD, SURF, ICY_WIND
	dw 0 ; OT ID
	dt 729000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 13, 11, 13, 15 ; DVs
	db 5, 5, 15, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 90 ; Level
	db 0, 0 ; Status
	bigdw 266 ; HP
	bigdw 266 ; Max HP
	bigdw 248 ; Atk
	bigdw 398 ; Def
	bigdw 203 ; Spd
	bigdw 234 ; SAtk
	bigdw 162 ; SDef
	db "PARUSIeN@@@"

	db CROBAT
	db GOLD_BERRY
	db WING_ATTACK, HAZE, HYPER_BEAM, GIGA_DRAIN
	dw 0 ; OT ID
	dt 729000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 13, 12, 15 ; DVs
	db 35, 30, 5, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 90 ; Level
	db 0, 0 ; Status
	bigdw 325 ; HP
	bigdw 325 ; Max HP
	bigdw 243 ; Atk
	bigdw 221 ; Def
	bigdw 310 ; Spd
	bigdw 207 ; SAtk
	bigdw 225 ; SDef
	db "KUROBAtuTO@"

	db PORYGON2
	db QUICK_CLAW
	db TOXIC, PSYCHIC_M, RECOVER, PROTECT
	dw 0 ; OT ID
	dt 729000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 55000
	bigdw 50000
	dn 15, 13, 14, 13 ; DVs
	db 10, 10, 20, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 90 ; Level
	db 0, 0 ; Status
	bigdw 325 ; HP
	bigdw 325 ; Max HP
	bigdw 223 ; Atk
	bigdw 239 ; Def
	bigdw 190 ; Spd
	bigdw 266 ; SAtk
	bigdw 248 ; SDef
	db "PORIGON2@@@"

	db KINGDRA
	db LEFTOVERS
	db DRAGON_PULSE, SURF, HYPER_BEAM, BLIZZARD
	dw 0 ; OT ID
	dt 729000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 55000
	bigdw 50000
	bigdw 45000
	dn 13, 15, 13, 14 ; DVs
	db 20, 15, 5, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 90 ; Level
	db 0, 0 ; Status
	bigdw 309 ; HP
	bigdw 309 ; Max HP
	bigdw 248 ; Atk
	bigdw 255 ; Def
	bigdw 230 ; Spd
	bigdw 248 ; SAtk
	bigdw 248 ; SDef
	db "KINGUDORA@@"

	db TYRANITAR
	db QUICK_CLAW
	db HYPER_BEAM, CRUNCH, EARTHQUAKE, ROCK_SLIDE
	dw 0 ; OT ID
	dt 729000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 55000
	bigdw 50000
	bigdw 45000
	bigdw 50000
	dn 13, 15, 13, 14 ; DVs
	db 5, 15, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 90 ; Level
	db 0, 0 ; Status
	bigdw 354 ; HP
	bigdw 354 ; Max HP
	bigdw 321 ; Atk
	bigdw 279 ; Def
	bigdw 185 ; Spd
	bigdw 250 ; SAtk
	bigdw 259 ; SDef
	db "BANGIRASU@@"

	db LAPRAS
	db MINT_BERRY
	db REST, SURF, THUNDERBOLT, PSYCHIC_M
	dw 0 ; OT ID
	dt 729000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 55000
	dn 11, 13, 14, 15 ; DVs
	db 10, 15, 15, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 90 ; Level
	db 0, 0 ; Status
	bigdw 405 ; HP
	bigdw 405 ; Max HP
	bigdw 227 ; Atk
	bigdw 221 ; Def
	bigdw 187 ; Spd
	bigdw 237 ; SAtk
	bigdw 255 ; SDef
	db "RAPURASU@@@"

	db ESPEON
	db GOLD_BERRY
	db PSYCHIC_M, SHADOW_BALL, SUNNY_DAY, MORNING_SUN
	dw 0 ; OT ID
	dt 729000 ; Exp
	; Stat exp
	bigdw 55000
	bigdw 50000
	bigdw 50000
	bigdw 55000
	bigdw 50000
	dn 13, 13, 15, 14 ; DVs
	db 10, 15, 5, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 90 ; Level
	db 0, 0 ; Status
	bigdw 294 ; HP
	bigdw 294 ; Max HP
	bigdw 194 ; Atk
	bigdw 185 ; Def
	bigdw 282 ; Spd
	bigdw 313 ; SAtk
	bigdw 250 ; SDef
	db "E-HUi@@@@@@"

	db MACHAMP
	db QUICK_CLAW
	db ICE_PUNCH, DYNAMICPUNCH, FIRE_BLAST, EARTHQUAKE
	dw 0 ; OT ID
	dt 729000 ; Exp
	; Stat exp
	bigdw 55000
	bigdw 55000
	bigdw 50000
	bigdw 55000
	bigdw 50000
	dn 13, 13, 14, 13 ; DVs
	db 5, 10, 5, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 90 ; Level
	db 0, 0 ; Status
	bigdw 337 ; HP
	bigdw 337 ; Max HP
	bigdw 314 ; Atk
	bigdw 221 ; Def
	bigdw 181 ; Spd
	bigdw 194 ; SAtk
	bigdw 230 ; SDef
	db "KAIRIKI-@@@"

	db SNORLAX
	db MIRACLEBERRY
	db FIRE_BLAST, SURF, EARTHQUAKE, HYPER_BEAM
	dw 0 ; OT ID
	dt 729000 ; Exp
	; Stat exp
	bigdw 45000
	bigdw 50000
	bigdw 55000
	bigdw 50000
	bigdw 50000
	dn 15, 14, 15, 13 ; DVs
	db 5, 15, 10, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 90 ; Level
	db 0, 0 ; Status
	bigdw 455 ; HP
	bigdw 455 ; Max HP
	bigdw 279 ; Atk
	bigdw 199 ; Def
	bigdw 135 ; Spd
	bigdw 194 ; SAtk
	bigdw 275 ; SDef
	db "KABIGON@@@@"

	db ARCANINE
	db MINT_BERRY
	db SUNNY_DAY, FLAMETHROWER, EXTREMESPEED, REST
	dw 0 ; OT ID
	dt 729000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 45000
	bigdw 55000
	dn 13, 15, 13, 14 ; DVs
	db 5, 15, 5, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 90 ; Level
	db 0, 0 ; Status
	bigdw 336 ; HP
	bigdw 336 ; Max HP
	bigdw 274 ; Atk
	bigdw 225 ; Def
	bigdw 247 ; Spd
	bigdw 262 ; SAtk
	bigdw 226 ; SDef
	db "UINDEi@@@@@"

	db BLISSEY
	db LEFTOVERS
	db SOLARBEAM, SUNNY_DAY, SOFTBOILED, FIRE_BLAST
	dw 0 ; OT ID
	dt 729000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 45000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 11, 13, 15, 14 ; DVs
	db 10, 5, 10, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 90 ; Level
	db 0, 0 ; Status
	bigdw 633 ; HP
	bigdw 633 ; Max HP
	bigdw 90 ; Atk
	bigdw 95 ; Def
	bigdw 180 ; Spd
	bigdw 214 ; SAtk
	bigdw 322 ; SDef
	db "HAPINASU@@@"

	db HOUNDOOM
	db BRIGHTPOWDER
	db FLAMETHROWER, CRUNCH, SUNNY_DAY, SOLARBEAM
	dw 0 ; OT ID
	dt 729000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 40000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 13, 11, 15, 14 ; DVs
	db 15, 15, 5, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 90 ; Level
	db 0, 0 ; Status
	bigdw 309 ; HP
	bigdw 309 ; Max HP
	bigdw 235 ; Atk
	bigdw 164 ; Def
	bigdw 252 ; Spd
	bigdw 277 ; SAtk
	bigdw 223 ; SDef
	db "HERUGA-@@@@"

	db SKARMORY
	db QUICK_CLAW
	db SANDSTORM, IRON_HEAD, TOXIC, RETURN
	dw 0 ; OT ID
	dt 729000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 14, 15, 15, 7 ; DVs
	db 10, 25, 10, 20 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 90 ; Level
	db 0, 0 ; Status
	bigdw 279 ; HP
	bigdw 279 ; Max HP
	bigdw 223 ; Atk
	bigdw 333 ; Def
	bigdw 207 ; Spd
	bigdw 139 ; SAtk
	bigdw 193 ; SDef
	db "EA-MUDO@@@@"

	db SHAYMIN
	db LEFTOVERS
	db TOXIC, WRAP, PROTECT, ENCORE
	dw 0 ; OT ID
	dt 729000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 14, 15, 14 ; DVs
	db 10, 20, 10, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 90 ; Level
	db 0, 0 ; Status
	bigdw 203 ; HP
	bigdw 203 ; Max HP
	bigdw 99 ; Atk
	bigdw 493 ; Def
	bigdw 90 ; Spd
	bigdw 97 ; SAtk
	bigdw 493 ; SDef
	db "TUBOTUBO@@@"

	db FLAREON
	db MINT_BERRY
	db HYPER_BEAM, FLAMETHROWER, SHADOW_BALL, ROAR
	dw 0 ; OT ID
	dt 729000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 15, 7, 15, 7 ; DVs
	db 5, 15, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 90 ; Level
	db 0, 0 ; Status
	bigdw 293 ; HP
	bigdw 293 ; Max HP
	bigdw 315 ; Atk
	bigdw 175 ; Def
	bigdw 198 ; Spd
	bigdw 238 ; SAtk
	bigdw 265 ; SDef
	db "BU-SUTA-@@@"

	db MILTANK
	db LEFTOVERS
	db MILK_DRINK, EARTHQUAKE, ATTRACT, BODY_SLAM
	dw 0 ; OT ID
	dt 729000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 4, 7, 5, 7 ; DVs
	db 10, 10, 15, 15 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 90 ; Level
	db 0, 0 ; Status
	bigdw 322 ; HP
	bigdw 322 ; Max HP
	bigdw 194 ; Atk
	bigdw 245 ; Def
	bigdw 232 ; Spd
	bigdw 128 ; SAtk
	bigdw 182 ; SDef
	db "MIRUTANKU@@"

; BattleTowerMons group 10

	db MEWTWO
	db LEFTOVERS
	db SERENITY, BARRIER, PSYBLAST, RECOVER
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 32, 48, 48, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 403 ; HP
	bigdw 403 ; Max HP
	bigdw 318 ; Atk
	bigdw 278 ; Def
	bigdw 358 ; Spd
	bigdw 406 ; SAtk
	bigdw 406 ; SDef
	db "RANTA-N@@@@"

    db HO_OH
	db LIFE_ORB
	db BRAVE_BIRD, EARTHQUAKE, SACRED_FIRE, RECOVER
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 24, 16, 16, 15 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 415 ; HP
	bigdw 415 ; Max HP
	bigdw 358 ; Atk
	bigdw 278 ; Def
	bigdw 278 ; Spd
	bigdw 318 ; SAtk
	bigdw 406 ; SDef
	db "RANTA-N@@@@"

	db LUGIA
	db LEFTOVERS
	db AEROBLAST, EARTH_POWER, CALM_MIND, RECOVER
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 16, 15, 15 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 415 ; HP
	bigdw 415 ; Max HP
	bigdw 278 ; Atk
	bigdw 358 ; Def
	bigdw 318 ; Spd
	bigdw 278 ; SAtk
	bigdw 406 ; SDef
	db "RANTA-N@@@@"

    db DEOXYS
	db FOCUS_SASH
	db NASTY_PLOT, PSYCHO_BOOST, ICE_BEAM, CLOSE_COMBAT
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 20, 16, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 303 ; HP
	bigdw 303 ; Max HP
	bigdw 458 ; Atk
	bigdw 138 ; Def
	bigdw 398 ; Spd
	bigdw 458 ; SAtk
	bigdw 138 ; SDef
	db "RANTA-N@@@@"

    db KYOGRE
	db LEFTOVERS
	db SURF, CALM_MIND, ICE_BEAM, THUNDER
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 24, 15, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 403 ; HP
	bigdw 403 ; Max HP
	bigdw 298 ; Atk
	bigdw 278 ; Def
	bigdw 278 ; Spd
	bigdw 398 ; SAtk
	bigdw 378 ; SDef
	db "RANTA-N@@@@"

    db GROUDON
	db LEFTOVERS
	db EARTHQUAKE, FIRE_PUNCH, ROCK_SLIDE, SWORDS_DANCE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 32, 16, 32 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 403 ; HP
	bigdw 403 ; Max HP
	bigdw 398 ; Atk
	bigdw 378 ; Def
	bigdw 278 ; Spd
	bigdw 298 ; SAtk
	bigdw 278 ; SDef
	db "RANTA-N@@@@"

    db RAYQUAZA
	db FOCUS_SASH
	db SKY_CLEAVE, EARTHQUAKE, EXTREMESPEED, DRAGON_DANCE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 32, 16, 24, 30 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 413 ; HP
	bigdw 413 ; Max HP
	bigdw 398 ; Atk
	bigdw 278 ; Def
	bigdw 288 ; Spd
	bigdw 398 ; SAtk
	bigdw 278 ; SDef
	db "RANTA-N@@@@"

    db PALKIA
	db LIFE_ORB
	db HYDRO_PUMP, THUNDERBOLT, ICE_BEAM, DRACO_METEOR
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 24, 24, 16, 15 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 383 ; HP
	bigdw 383 ; Max HP
	bigdw 338 ; Atk
	bigdw 298 ; Def
	bigdw 298 ; Spd
	bigdw 398 ; SAtk
	bigdw 338 ; SDef
	db "RANTA-N@@@@"

    db DIALGA
	db LEFTOVERS
	db OUTRAGE, CURSE, REST, SLEEP_TALK
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 24, 16, 10, 10 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 403 ; HP
	bigdw 403 ; Max HP
	bigdw 398 ; Atk
	bigdw 338 ; Def
	bigdw 278 ; Spd
	bigdw 338 ; SAtk
	bigdw 298 ; SDef
	db "RANTA-N@@@@"

    db GIRATINA
	db LEFTOVERS
	db SLEEP_TALK, DRACO_METEOR, CALM_MIND, REST
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 24, 24, 15, 10 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 503 ; HP
	bigdw 503 ; Max HP
	bigdw 298 ; Atk
	bigdw 338 ; Def
	bigdw 278 ; Spd
	bigdw 298 ; SAtk
	bigdw 338 ; SDef
	db "RANTA-N@@@@"

    db XERNEAS
	db PINK_BOW
	db GEOMANCY, MOON_BLAST, AURA_SPHERE, THUNDERBOLT
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 10, 24, 32, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 455 ; HP
	bigdw 455 ; Max HP
	bigdw 360 ; Atk
	bigdw 288 ; Def
	bigdw 296 ; Spd
	bigdw 360 ; SAtk
	bigdw 294 ; SDef
	db "RANTA-N@@@@"

    db YVELTAL
	db LIFE_ORB
	db OBLIVION, DARK_PULSE, NASTY_PLOT, RECOVER
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 24, 24, 20, 15 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 455 ; HP
	bigdw 455 ; Max HP
	bigdw 360 ; Atk
	bigdw 288 ; Def
	bigdw 296 ; Spd
	bigdw 360 ; SAtk
	bigdw 294 ; SDef
	db "RANTA-N@@@@"

    db DARKRAI
	db LEFTOVERS
	db DARK_VOID, DARK_PULSE, AURA_SPHERE, NASTY_PLOT
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 10, 24, 32, 20 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 343 ; HP
	bigdw 343 ; Max HP
	bigdw 278 ; Atk
	bigdw 278 ; Def
	bigdw 348 ; Spd
	bigdw 368 ; SAtk
	bigdw 278 ; SDef
	db "RANTA-N@@@@"

    db SNORLAX
	db LEFTOVERS
	db DOUBLE_EDGE, CURSE, REST, CRUNCH
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 24, 10, 10, 10 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 523 ; HP
	bigdw 523 ; Max HP
	bigdw 318 ; Atk
	bigdw 228 ; Def
	bigdw 158 ; Spd
	bigdw 228 ; SAtk
	bigdw 318 ; SDef
	db "RANTA-N@@@@"

    db MEW
	db PINK_BOW
	db SWORDS_DANCE, CRUNCH, DOUBLE_EDGE, EXPLOSION
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
    bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 20, 16, 32, 8 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 403 ; HP
	bigdw 403 ; Max HP
	bigdw 298 ; Atk
	bigdw 298 ; Def
	bigdw 298 ; Spd
	bigdw 298 ; SAtk
	bigdw 298 ; SDef
	db "RANTA-N@@@@"

	db SMEARGLE
	db FOCUS_SASH
	db SHELL_SMASH, SPORE, BATON_PASS, ANCIENTPOWER
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 24, 30, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 313 ; HP
	bigdw 313 ; Max HP
	bigdw 138 ; Atk
	bigdw 168 ; Def
	bigdw 248 ; Spd
	bigdw 138 ; SAtk
	bigdw 188 ; SDef
	db "RANTA-N@@@@"

	db BLASTOISE
	db MYSTIC_WATER
	db SHELL_SMASH, HYDRO_PUMP, ICE_BEAM, EARTHQUAKE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 24, 16, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 361 ; HP
	bigdw 361 ; Max HP
	bigdw 264 ; Atk
	bigdw 298 ; Def
	bigdw 254 ; Spd
	bigdw 268 ; SAtk
	bigdw 308 ; SDef
	db "RANTA-N@@@@"

    db CLOYSTER
	db FOCUS_SASH
	db SHELL_SMASH, HYDRO_PUMP, ICE_BEAM, WATERFALL
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 16, 16, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 303 ; HP
	bigdw 303 ; Max HP
	bigdw 288 ; Atk
	bigdw 458 ; Def
	bigdw 238 ; Spd
	bigdw 268 ; SAtk
	bigdw 188 ; SDef
	db "RANTA-N@@@@"

    db GENESECT
	db EXPERT_BELT
	db BUG_BUZZ, THUNDERBOLT, ICE_BEAM, FLAMETHROWER
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 24, 24, 16, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 345 ; HP
	bigdw 345 ; Max HP
	bigdw 338 ; Atk
	bigdw 288 ; Def
	bigdw 296 ; Spd
	bigdw 338 ; SAtk
	bigdw 288 ; SDef
	db "RANTA-N@@@@"

    db VOLCARONA
	db CHARCOAL
	db QUIVER_DANCE, BUG_BUZZ, FIRE_BLAST, ANCIENTPOWER
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 15, 16, 16, 8 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 373 ; HP
	bigdw 373 ; Max HP
	bigdw 208 ; Atk
	bigdw 228 ; Def
	bigdw 298 ; Spd
	bigdw 368 ; SAtk
	bigdw 308 ; SDef
	db "RANTA-N@@@@"

	db SUICUNE
	db LEFTOVERS
	db CALM_MIND, SURF, REST, SLEEP_TALK
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 24, 24, 10, 10 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 403 ; HP
	bigdw 403 ; Max HP
	bigdw 248 ; Atk
	bigdw 328 ; Def
	bigdw 268 ; Spd
	bigdw 278 ; SAtk
	bigdw 328 ; SDef
	db "RANTA-N@@@@"

	db ENTEI
	db LIFE_ORB
	db CLOSE_COMBAT, SACRED_FIRE, EARTHQUAKE, EXTREMESPEED
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 16, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 433 ; HP
	bigdw 433 ; Max HP
	bigdw 328 ; Atk
	bigdw 268 ; Def
	bigdw 298 ; Spd
	bigdw 278 ; SAtk
	bigdw 248 ; SDef
	db "RANTA-N@@@@"

	db RAIKOU
	db MAGNET
	db VOLT_TACKLE, THUNDERBOLT, DARK_PULSE, AURA_SPHERE ; ice
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 16, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 383 ; HP
	bigdw 383 ; Max HP
	bigdw 268 ; Atk
	bigdw 248 ; Def
	bigdw 328 ; Spd
	bigdw 328 ; SAtk
	bigdw 298 ; SDef
	db "RANTA-N@@@@"

	db GARCHOMP
	db LIFE_ORB
	db SWORDS_DANCE, OUTRAGE, EARTHQUAKE, ROCK_SLIDE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 30, 24, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 419 ; HP
	bigdw 419 ; Max HP
	bigdw 358 ; Atk
	bigdw 288 ; Def
	bigdw 302 ; Spd
	bigdw 258 ; SAtk
	bigdw 268 ; SDef
	db "RANTA-N@@@@"

    db METAGROSS
	db QUICK_CLAW
	db METEOR_MASH, EARTHQUAKE, THUNDERPUNCH, EXPLOSION
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 16, 16, 8 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 363 ; HP
	bigdw 363 ; Max HP
	bigdw 368 ; Atk
	bigdw 358 ; Def
	bigdw 138 ; Spd
	bigdw 288 ; SAtk
	bigdw 278 ; SDef
	db "RANTA-N@@@@"

    db SALAMENCE
	db FOCUS_SASH
	db DRAGON_DANCE, OUTRAGE, EARTHQUAKE, IRON_HEAD
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 20, 16, 16, 8 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 393 ; HP
	bigdw 393 ; Max HP
	bigdw 368 ; Atk
	bigdw 258 ; Def
	bigdw 298 ; Spd
	bigdw 318 ; SAtk
	bigdw 258 ; SDef
	db "RANTA-N@@@@"

    db SCIZOR
	db METAL_COAT
	db SWORDS_DANCE, BULLET_PUNCH, X_SCISSOR, ROCK_SMASH
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 20, 32, 24, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 323 ; HP
	bigdw 323 ; Max HP
	bigdw 358 ; Atk
	bigdw 298 ; Def
	bigdw 228 ; Spd
	bigdw 208 ; SAtk
	bigdw 258 ; SDef
	db "RANTA-N@@@@"

	db ALAKAZAM
	db FOCUS_SASH
	db NASTY_PLOT, PSYCHIC_M, SHADOW_BALL, AURA_SPHERE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 32, 16, 24, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 313 ; HP
	bigdw 313 ; Max HP
	bigdw 198 ; Atk
	bigdw 188 ; Def
	bigdw 338 ; Spd
	bigdw 368 ; SAtk
	bigdw 268 ; SDef
	db "RANTA-N@@@@"

	db AEGISLASH
	db LEFTOVERS
	db KINGS_SHIELD, SWORDS_DANCE, SHADOW_CLAW, CLOSE_COMBAT
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 30, 30, 24, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 323 ; HP
	bigdw 323 ; Max HP
	bigdw 398 ; Atk
	bigdw 198 ; Def
	bigdw 218 ; Spd
	bigdw 398 ; SAtk
	bigdw 198 ; SDef
	db "RANTA-N@@@@"

	db KLEFKI
	db LEFTOVERS
	db THUNDER_WAVE, CONFUSE_RAY, FLASH, IRON_HEAD
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 30, 30, 16, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 317 ; HP
	bigdw 317 ; Max HP
	bigdw 258 ; Atk
	bigdw 280 ; Def
	bigdw 248 ; Spd
	bigdw 258 ; SAtk
	bigdw 272 ; SDef
	db "RANTA-N@@@@"

; ============ Final Trainer End ==============

    db LATIOS
	db CHOICE_SPECS
	;db THUNDERBOLT, DRAGON_PULSE, SURF, ICE_BEAM
	db DRACO_METEOR, NO_MOVE, NO_MOVE, NO_MOVE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 24, 24, 15, 15 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 363 ; HP
	bigdw 363 ; Max HP
	bigdw 278 ; Atk
	bigdw 258 ; Def
	bigdw 318 ; Spd
	bigdw 358 ; SAtk
	bigdw 318 ; SDef
	db "RANTA-N@@@@"

	db SHAYMIN
	db LEFTOVERS
	db SEED_FLARE, AIR_SLASH, EARTH_POWER, NO_MOVE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 24, 24, 0 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 403 ; HP
	bigdw 403 ; Max HP
	bigdw 304 ; Atk
	bigdw 248 ; Def
	bigdw 352 ; Spd
	bigdw 338 ; SAtk
	bigdw 248 ; SDef
	db "RANTA-N@@@@"

	db CELEBI
	db LEFTOVERS
	db GIGA_DRAIN, PSYCHIC_M, NASTY_PLOT, RECOVER
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 16, 32, 15 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 403 ; HP
	bigdw 403 ; Max HP
	bigdw 298 ; Atk
	bigdw 298 ; Def
	bigdw 298 ; Spd
	bigdw 298 ; SAtk
	bigdw 298 ; SDef
	db "RANTA-N@@@@"

    db MACHAMP
	db QUICK_CLAW
	db DYNAMICPUNCH, ICE_PUNCH, FIRE_PUNCH, THUNDERPUNCH
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 24, 24, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 383 ; HP
	bigdw 383 ; Max HP
	bigdw 358 ; Atk
	bigdw 258 ; Def
	bigdw 208 ; Spd
	bigdw 228 ; SAtk
	bigdw 288 ; SDef
	db "RANTA-N@@@@"

	db LATIAS
	db LEFTOVERS
	db DRACO_METEOR, CALM_MIND, REST, SLEEP_TALK
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 24, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 363 ; HP
	bigdw 363 ; Max HP
	bigdw 258 ; Atk
	bigdw 278 ; Def
	bigdw 318 ; Spd
	bigdw 318 ; SAtk
	bigdw 358 ; SDef
	db "RANTA-N@@@@"

    db TYRANITAR
	db LEFTOVERS
	db DRAGON_DANCE, ROCK_SLIDE, CRUNCH, EARTHQUAKE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 10, 10, 24, 10 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 403 ; HP
	bigdw 403 ; Max HP
	bigdw 366 ; Atk
	bigdw 318 ; Def
	bigdw 220 ; Spd
	bigdw 288 ; SAtk
	bigdw 298 ; SDef
	db "RANTA-N@@@@"

	db PERSIAN
	db CHOICE_BAND
	db SLASH, BITE, NO_MOVE, NO_MOVE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 32, 0, 0, 0 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 333 ; HP
	bigdw 333 ; Max HP
	bigdw 238 ; Atk
	bigdw 218 ; Def
	bigdw 328 ; Spd
	bigdw 228 ; SAtk
	bigdw 228 ; SDef
	db "RANTA-N@@@@"

	db AERODACTYL
	db CHOICE_BAND
	db BRAVE_BIRD, NO_MOVE, NO_MOVE, NO_MOVE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 0, 0, 0 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 363 ; HP
	bigdw 363 ; Max HP
	bigdw 308 ; Atk
	bigdw 228 ; Def
	bigdw 358 ; Spd
	bigdw 218 ; SAtk
	bigdw 248 ; SDef
	db "RANTA-N@@@@"

	db DRAGONITE
	db DRAGON_SCALE
	db DRAGON_DANCE, OUTRAGE, EARTHQUAKE, IRON_HEAD
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 16, 16, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 385 ; HP
	bigdw 385 ; Max HP
	bigdw 366 ; Atk
	bigdw 288 ; Def
	bigdw 258 ; Spd
	bigdw 298 ; SAtk
	bigdw 298 ; SDef
	db "RANTA-N@@@@"

	db LUCARIO
	db FOCUS_SASH
	db SWORDS_DANCE, CLOSE_COMBAT, ROCK_SLIDE, EXTREMESPEED
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 16, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 343 ; HP
	bigdw 343 ; Max HP
	bigdw 318 ; Atk
	bigdw 238 ; Def
	bigdw 278 ; Spd
	bigdw 328 ; SAtk
	bigdw 238 ; SDef
	db "RANTA-N@@@@"

	db GENGAR
	db FOCUS_SASH
	db SHADOW_BALL, SLUDGE_BOMB, THUNDERBOLT, EXPLOSION
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 16, 16, 8 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 323 ; HP
	bigdw 323 ; Max HP
	bigdw 228 ; Atk
	bigdw 218 ; Def
	bigdw 318 ; Spd
	bigdw 358 ; SAtk
	bigdw 248 ; SDef
	db "RANTA-N@@@@"

	db KINGDRA
	db MYSTIC_WATER
	db RAIN_DANCE, HYDRO_PUMP, ICE_BEAM, WATERFALL
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 8, 16, 16, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 353 ; HP
	bigdw 353 ; Max HP
	bigdw 288 ; Atk
	bigdw 288 ; Def
	bigdw 268 ; Spd
	bigdw 288 ; SAtk
	bigdw 288 ; SDef
	db "RANTA-N@@@@"

	db GYARADOS
	db LIFE_ORB
	db WATERFALL, DRAGON_DANCE, EARTHQUAKE, ROCK_SLIDE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 24, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 393 ; HP
	bigdw 393 ; Max HP
	bigdw 348 ; Atk
	bigdw 256 ; Def
	bigdw 260 ; Spd
	bigdw 218 ; SAtk
	bigdw 298 ; SDef
	db "RANTA-N@@@@"

	db VENUSAUR
	db MIRACLE_SEED
	db SUNNY_DAY, SLUDGE_BOMB, SOLARBEAM, HIDDEN_POWER ; fire
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 14, 12, 15, 15 ; DVs
	db 8, 16, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 363 ; HP
	bigdw 363 ; Max HP
	bigdw 260 ; Atk
	bigdw 258 ; Def
	bigdw 258 ; Spd
	bigdw 298 ; SAtk
	bigdw 298 ; SDef
	db "RANTA-N@@@@"

	db CHARIZARD
	db LIFE_ORB
	db DRAGON_DANCE, BRAVE_BIRD, SACRED_FIRE, EARTHQUAKE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 24, 16, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 359 ; HP
	bigdw 359 ; Max HP
	bigdw 266 ; Atk
	bigdw 254 ; Def
	bigdw 298 ; Spd
	bigdw 316 ; SAtk
	bigdw 268 ; SDef
	db "RANTA-N@@@@"

	db EXCADRILL
	db LEFTOVERS
	db SANDSTORM, SWORDS_DANCE, EARTHQUAKE, IRON_HEAD
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 8, 30, 16, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 423 ; HP
	bigdw 423 ; Max HP
	bigdw 368 ; Atk
	bigdw 218 ; Def
	bigdw 274 ; Spd
	bigdw 198 ; SAtk
	bigdw 228 ; SDef
	db "RANTA-N@@@@"

	db TOGEKISS
	db LEFTOVERS
	db THUNDER_WAVE, AIR_SLASH, NASTY_PLOT, SOFTBOILED
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 32, 32, 32, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 373 ; HP
	bigdw 373 ; Max HP
	bigdw 198 ; Atk
	bigdw 288 ; Def
	bigdw 258 ; Spd
	bigdw 338 ; SAtk
	bigdw 328 ; SDef
	db "RANTA-N@@@@"

	db PORYGONZ
	db EXPERT_BELT
	db TRI_ATTACK, DARK_PULSE, THUNDERBOLT, ICE_BEAM
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 24, 24, 24, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 373 ; HP
	bigdw 373 ; Max HP
	bigdw 258 ; Atk
	bigdw 238 ; Def
	bigdw 278 ; Spd
	bigdw 368 ; SAtk
	bigdw 248 ; SDef
	db "RANTA-N@@@@"

	db ZAPDOS
	db LEFTOVERS
	db THUNDERBOLT, ICY_WIND, AIR_SLASH, THUNDER_WAVE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 24, 24, 24, 32 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 383 ; HP
	bigdw 383 ; Max HP
	bigdw 278 ; Atk
	bigdw 268 ; Def
	bigdw 298 ; Spd
	bigdw 348 ; SAtk
	bigdw 278 ; SDef
	db "RANTA-N@@@@"

	db ARTICUNO
	db LEFTOVERS
	db ICE_BEAM, TOXIC, REST, SLEEP_TALK
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 16, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 383 ; HP
	bigdw 383 ; Max HP
	bigdw 268 ; Atk
	bigdw 298 ; Def
	bigdw 268 ; Spd
	bigdw 288 ; SAtk
	bigdw 348 ; SDef
	db "RANTA-N@@@@"

	db MOLTRES
	db LIFE_ORB
	db FIRE_BLAST, BRAVE_BIRD, REST, SLEEP_TALK
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 24, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 383 ; HP
	bigdw 383 ; Max HP
	bigdw 298 ; Atk
	bigdw 278 ; Def
	bigdw 278 ; Spd
	bigdw 348 ; SAtk
	bigdw 268 ; SDef
	db "RANTA-N@@@@"

	db CONKELDURR
	db LEFTOVERS
	db CURSE, DRAIN_PUNCH, ICE_PUNCH, THUNDERPUNCH
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 24, 24, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 413 ; HP
	bigdw 413 ; Max HP
	bigdw 378 ; Atk
	bigdw 288 ; Def
	bigdw 188 ; Spd
	bigdw 208 ; SAtk
	bigdw 228 ; SDef
	db "RANTA-N@@@@"

	db CHANDELURE
	db CHOICE_SPECS
	db FIRE_BLAST, SHADOW_BALL, NO_MOVE, NO_MOVE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 24, 0, 0 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 323 ; HP
	bigdw 323 ; Max HP
	bigdw 208 ; Atk
	bigdw 278 ; Def
	bigdw 258 ; Spd
	bigdw 388 ; SAtk
	bigdw 278 ; SDef
	db "RANTA-N@@@@"

	db HONCHKROW
	db CHOICE_BAND
	db BRAVE_BIRD, NIGHT_SLASH, CLOSE_COMBAT, NO_MOVE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 24, 24, 16, 0 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 403 ; HP
	bigdw 403 ; Max HP
	bigdw 348 ; Atk
	bigdw 202 ; Def
	bigdw 240 ; Spd
	bigdw 308 ; SAtk
	bigdw 202 ; SDef
	db "RANTA-N@@@@"

	db WEAVILE
	db FOCUS_SASH
	db SWORDS_DANCE, ICE_PUNCH, NIGHT_SLASH, ROCK_SMASH
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 32, 24, 24, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 343 ; HP
	bigdw 343 ; Max HP
	bigdw 338 ; Atk
	bigdw 228 ; Def
	bigdw 348 ; Spd
	bigdw 188 ; SAtk
	bigdw 268 ; SDef
	db "RANTA-N@@@@"

	db MAGNEZONE
	db MAGNET
	db THUNDERBOLT, THUNDER_WAVE, EXPLOSION, FLASH_CANNON
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 24, 24, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 413 ; HP
	bigdw 413 ; Max HP
	bigdw 378 ; Atk
	bigdw 288 ; Def
	bigdw 188 ; Spd
	bigdw 208 ; SAtk
	bigdw 228 ; SDef
	db "RANTA-N@@@@"

	db HERACROSS
	db LEFTOVERS
	db SWORDS_DANCE, MEGAHORN, CLOSE_COMBAT, ROCK_SLIDE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 32, 16, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 363 ; HP
	bigdw 363 ; Max HP
	bigdw 348 ; Atk
	bigdw 248 ; Def
	bigdw 268 ; Spd
	bigdw 178 ; SAtk
	bigdw 288 ; SDef
	db "RANTA-N@@@@"

	db MISMAGIUS
	db FOCUS_SASH
	db NASTY_PLOT, SHADOW_BALL, THUNDERBOLT, GIGA_DRAIN
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 32, 24, 24, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 323 ; HP
	bigdw 323 ; Max HP
	bigdw 218 ; Atk
	bigdw 218 ; Def
	bigdw 308 ; Spd
	bigdw 308 ; SAtk
	bigdw 308 ; SDef
	db "RANTA-N@@@@"

	db SYLVEON
	db LEFTOVERS
	db MOON_BLAST, CALM_MIND, EARTH_POWER, MOONLIGHT
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 24, 24, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 393 ; HP
	bigdw 393 ; Max HP
	bigdw 228 ; Atk
	bigdw 228 ; Def
	bigdw 218 ; Spd
	bigdw 318 ; SAtk
	bigdw 358 ; SDef
	db "RANTA-N@@@@"

	db CLEFABLE
	db LEFTOVERS
	db MOON_BLAST, THUNDER_WAVE, CALM_MIND, SOFTBOILED
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 32, 24, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 393 ; HP
	bigdw 393 ; Max HP
	bigdw 238 ; Atk
	bigdw 244 ; Def
	bigdw 218 ; Spd
	bigdw 288 ; SAtk
	bigdw 278 ; SDef
	db "RANTA-N@@@@"

	db GLISCOR
	db LEFTOVERS
	db SWORDS_DANCE, EARTHQUAKE, FLY, ROCK_SLIDE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 24, 24, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 413 ; HP
	bigdw 413 ; Max HP
	bigdw 378 ; Atk
	bigdw 288 ; Def
	bigdw 188 ; Spd
	bigdw 208 ; SAtk
	bigdw 228 ; SDef
	db "RANTA-N@@@@"

	db YANMEGA
	db FOCUS_SASH
	db AIR_SLASH, BUG_BUZZ, GIGA_DRAIN, HYPNOSIS
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 24, 16, 16, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 375 ; HP
	bigdw 375 ; Max HP
	bigdw 250 ; Atk
	bigdw 270 ; Def
	bigdw 288 ; Spd
	bigdw 330 ; SAtk
	bigdw 210 ; SDef
	db "RANTA-N@@@@"

	db MAMOSWINE
	db LEFTOVERS
	db EARTHQUAKE, AVALANCHE, REST, CURSE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 16, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 423 ; HP
	bigdw 423 ; Max HP
	bigdw 358 ; Atk
	bigdw 258 ; Def
	bigdw 258 ; Spd
	bigdw 238 ; SAtk
	bigdw 218 ; SDef
	db "RANTA-N@@@@"

	db ELECTIVIRE
	db EXPERT_BELT
	db VOLT_TACKLE, EARTHQUAKE, ICE_PUNCH, DRAIN_PUNCH
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 16, 24, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 353 ; HP
	bigdw 353 ; Max HP
	bigdw 344 ; Atk
	bigdw 232 ; Def
	bigdw 288 ; Spd
	bigdw 288 ; SAtk
	bigdw 268 ; SDef
	db "RANTA-N@@@@"

	db MAGMORTAR
	db EXPERT_BELT
	db FIRE_BLAST, THUNDERBOLT, EARTHQUAKE, GIGA_DRAIN
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 24, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 353 ; HP
	bigdw 353 ; Max HP
	bigdw 288 ; Atk
	bigdw 232 ; Def
	bigdw 264 ; Spd
	bigdw 348 ; SAtk
	bigdw 288 ; SDef
	db "RANTA-N@@@@"

	db RHYPERIOR
	db LEFTOVERS
	db EARTHQUAKE, ROCK_SLIDE, MEGAHORN, SWORDS_DANCE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 16, 16, 32 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 433 ; HP
	bigdw 433 ; Max HP
	bigdw 378 ; Atk
	bigdw 358 ; Def
	bigdw 178 ; Spd
	bigdw 208 ; SAtk
	bigdw 208 ; SDef
	db "RANTA-N@@@@"

	db BRELOOM
	db FOCUS_SASH
	db SPORE, SWORDS_DANCE, DRAIN_PUNCH, LEAF_BLADE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 30, 24, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 433 ; HP
	bigdw 433 ; Max HP
	bigdw 378 ; Atk
	bigdw 358 ; Def
	bigdw 178 ; Spd
	bigdw 208 ; SAtk
	bigdw 208 ; SDef
	db "RANTA-N@@@@"

	db REUNICLUS
	db LEFTOVERS
	db CALM_MIND, RECOVER, PSYCHIC_M, THUNDERBOLT
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 32, 15, 16, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 423 ; HP
	bigdw 423 ; Max HP
	bigdw 228 ; Atk
	bigdw 248 ; Def
	bigdw 158 ; Spd
	bigdw 348 ; SAtk
	bigdw 268 ; SDef
	db "RANTA-N@@@@"

	db GARDEVOIR
	db LEFTOVERS
	db CALM_MIND, MOON_BLAST, PSYCHIC_M, THUNDERBOLT
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 32, 16, 16, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 339 ; HP
	bigdw 339 ; Max HP
	bigdw 228 ; Atk
	bigdw 228 ; Def
	bigdw 258 ; Spd
	bigdw 348 ; SAtk
	bigdw 328 ; SDef
	db "RANTA-N@@@@"

	db GALADE
	db LIFE_ORB
	db SWORDS_DANCE, CLOSE_COMBAT, PSYCHO_SLASH, ICE_PUNCH
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 32, 16, 32, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 339 ; HP
	bigdw 339 ; Max HP
	bigdw 348 ; Atk
	bigdw 228 ; Def
	bigdw 258 ; Spd
	bigdw 228 ; SAtk
	bigdw 328 ; SDef
	db "RANTA-N@@@@"

	db SCEPTILE
	db LIFE_ORB
	db SWORDS_DANCE, LEAF_BLADE, EARTHQUAKE, ICE_PUNCH
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 32, 24, 16, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 343 ; HP
	bigdw 343 ; Max HP
	bigdw 268 ; Atk
	bigdw 228 ; Def
	bigdw 338 ; Spd
	bigdw 308 ; SAtk
	bigdw 268 ; SDef
	db "RANTA-N@@@@"

	db INFERNAPE
	db FOCUS_SASH
	db NASTY_PLOT, CLOSE_COMBAT, FIRE_BLAST, GIGA_DRAIN
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 32, 16, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 355 ; HP
	bigdw 355 ; Max HP
	bigdw 306 ; Atk
	bigdw 240 ; Def
	bigdw 314 ; Spd
	bigdw 306 ; SAtk
	bigdw 240 ; SDef
	db "RANTA-N@@@@"

	db GRENINJA
	db LIFE_ORB
	db NASTY_PLOT, HYDRO_PUMP, DARK_PULSE, ICE_BEAM
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 32, 16, 24, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 347 ; HP
	bigdw 347 ; Max HP
	bigdw 288 ; Atk
	bigdw 232 ; Def
	bigdw 342 ; Spd
	bigdw 304 ; SAtk
	bigdw 240 ; SDef
	db "RANTA-N@@@@"

	db AEGISLASH
	db LEFTOVERS
	db KINGS_SHIELD, SWORDS_DANCE, SHADOW_CLAW, CLOSE_COMBAT
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 30, 30, 24, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 323 ; HP
	bigdw 323 ; Max HP
	bigdw 398 ; Atk
	bigdw 198 ; Def
	bigdw 218 ; Spd
	bigdw 398 ; SAtk
	bigdw 198 ; SDef
	db "RANTA-N@@@@"

	db KLEFKI
	db LEFTOVERS
	db THUNDER_WAVE, SWAGGER, FLASH, IRON_HEAD
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 30, 30, 16, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 317 ; HP
	bigdw 317 ; Max HP
	bigdw 258 ; Atk
	bigdw 280 ; Def
	bigdw 248 ; Spd
	bigdw 258 ; SAtk
	bigdw 272 ; SDef
	db "RANTA-N@@@@"

	db WHIMSICOTT
	db LEFTOVERS
	db STUN_SPORE, LEECH_SEED, SWAGGER, GIGA_DRAIN
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 30, 30, 30, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 323 ; HP
	bigdw 323 ; Max HP
	bigdw 232 ; Atk
	bigdw 268 ; Def
	bigdw 330 ; Spd
	bigdw 252 ; SAtk
	bigdw 248 ; SDef
	db "RANTA-N@@@@"

	db STARAPTOR
	db LIFE_ORB
	db BRAVE_BIRD, DOUBLE_EDGE, CLOSE_COMBAT, EXTREMESPEED
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 24, 24, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 373 ; HP
	bigdw 373 ; Max HP
	bigdw 338 ; Atk
	bigdw 238 ; Def
	bigdw 298 ; Spd
	bigdw 198 ; SAtk
	bigdw 218 ; SDef
	db "RANTA-N@@@@"

	db GALVANTULA
	db MAGNET
	db THUNDER, BUG_BUZZ, GIGA_DRAIN, SLUDGE_BOMB
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 24, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 343 ; HP
	bigdw 343 ; Max HP
	bigdw 252 ; Atk
	bigdw 218 ; Def
	bigdw 314 ; Spd
	bigdw 292 ; SAtk
	bigdw 218 ; SDef
	db "RANTA-N@@@@"

	db MUK
	db LEFTOVERS
	db LEECH_SEED, THUNDER_WAVE, SPIKES, IRON_HEAD
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 32, 16, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 351 ; HP
	bigdw 351 ; Max HP
	bigdw 286 ; Atk
	bigdw 360 ; Def
	bigdw 138 ; Spd
	bigdw 206 ; SAtk
	bigdw 330 ; SDef
	db "RANTA-N@@@@"

	db KINGLER
	db LEFTOVERS
	db SURF, ICE_BEAM, CALM_MIND, RECOVER
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 16, 24, 24 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 393 ; HP
	bigdw 393 ; Max HP
	bigdw 218 ; Atk
	bigdw 256 ; Def
	bigdw 260 ; Spd
	bigdw 298 ; SAtk
	bigdw 348 ; SDef
	db "RANTA-N@@@@"

	db STARMIE
	db LIFE_ORB
	db HYDRO_PUMP, THUNDERBOLT, ICE_BEAM, PSYCHIC_M
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 16, 24, 16, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 323 ; HP
	bigdw 323 ; Max HP
	bigdw 248 ; Atk
	bigdw 268 ; Def
	bigdw 324 ; Spd
	bigdw 298 ; SAtk
	bigdw 268 ; SDef
	db "RANTA-N@@@@"

	db PIKACHU
	db LIGHT_BALL
	db THUNDERBOLT, SURF, ICE_PUNCH, VOLT_TACKLE
	dw 0 ; OT ID
	dt 1250000 ; Exp
	; Stat exp
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	bigdw 65500
	dn 15, 15, 15, 15 ; DVs
	db 24, 24, 24, 16 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 125 ; Level
	db 0, 0 ; Status
	bigdw 338 ; HP
	bigdw 338 ; Max HP
	bigdw 258 ; Atk
	bigdw 221 ; Def
	bigdw 346 ; Spd
	bigdw 246 ; SAtk
	bigdw 246 ; SDef
	db "RANTA-N@@@@"

	;assert_table_length 11 * BATTLETOWER_NUM_UNIQUE_MON
