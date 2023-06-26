npctrade: MACRO
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, gender requested
	db \1, \2, \3, \4, \5, \6, \7
	dw \8
	db \9, \<10>, 0
ENDM

NPCTrades:
; entries correspond to NPCTRADE_* constants
	table_width NPCTRADE_STRUCT_LENGTH, NPCTrades
	npctrade TRADE_DIALOGSET_COLLECTOR, RALTS,       HOUNDOUR,     "AZULA@@@@@@", $5B, $BB, BLACKGLASSES,   37460, "MIKE@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, LARVITAR,    BAGON,        "TOOTHLESS@@", $BB, $BB, DRAGON_SCALE, 48926, "KYLE@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     POLIWAG,     PORYGON,      "DIGIMON@@@@", $BB, $BB, PINK_BOW, 29189, "TIM@@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      DRAGONAIR,   SNORLAX,      "HAKUHO@@@@@", $FF, $FF, LEFTOVERS,   00283, "EMY@@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_NEWBIE,    MISMAGIUS,   GARDEVOIR,    "SABRINA@@@@", $BB, $BB, POLKADOT_BOW, 15616, "CHRIS@@@@@@", TRADE_GENDER_FEMALE
	npctrade TRADE_DIALOGSET_GIRL,      CHANSEY,     AERODACTYL,   "DEATHEATER@", $BB, $BB, FOCUS_SASH,   26491, "KIM@@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, LUCARIO,     GENESECT,     "TERMINATOR@", $EA, $AA, EXPERT_BELT,   01390, "FOREST@@@@@", TRADE_GENDER_EITHER
	assert_table_length NUM_NPC_TRADES
