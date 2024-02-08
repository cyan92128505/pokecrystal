    object_const_def
    const MANOR_ANDREW
    const MANOR_CATHERINE
    const MANOR_JAMES

ManorInside_MapScripts:
	def_scene_scripts

	def_callbacks

AndrewScript:
    faceplayer
    opentext
    checkevent EVENT_BEAT_ANDREW
    iftrue .fightDone
    checkevent EVENT_BEAT_LORD_OAK
    iffalse .intro
.fight
    writetext AndrewBeatOakText
    waitbutton
    closetext
    opentext
    writetext AndrewOfferBattleText
    waitbutton
    yesorno
    iffalse .refused
    writetext AndrewBattleTypeText
    waitbutton
    yesorno
    iffalse .fullPower
    writetext AndrewBeginBattleText
    closetext
	setval MUSIC_EPIC_TETRIS
	writemem wBattleMusicOverride
	winlosstext AndrewBeatenText, AndrewWinText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer RED, ANDREW_ME
	startbattle
	ifequal LOSE, .lose
	reloadmapafterbattle
	checkevent EVENT_BEAT_ANDREW
	iftrue .skipHandOfGod
	setevent EVENT_BEAT_ANDREW
	opentext
	writetext AndrewGiveHandText
	waitbutton
	verbosegiveitem HAND_OF_GOD
	writetext AndrewExplainHandText
	waitbutton
	closetext
.skipHandOfGod
	opentext
	writetext AndrewAfterBattleText
	waitbutton
	closetext
	end
.fullPower
    writetext AndrewBeginBattleText
    closetext
	setval MUSIC_EPIC_TETRIS
	writemem wBattleMusicOverride
   	winlosstext AndrewImpossibleBeatenText, AndrewImpossibleWinText
   	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
   	loadtrainer RED, ANDREW_IMPOSSIBLE
   	startbattle
   	ifequal LOSE, .loseImpossible
   	opentext
   	writetext AndrewUnreachableText
   	waitbutton
   	closetext
   	end
.lose
    special HealParty
    reloadmap
    opentext
    writetext AndrewLoseAfterBattleText
    waitbutton
    closetext
    end
.loseImpossible
    special HealParty
    reloadmap
    opentext
    writetext AndrewLoseAfterImpossibleBattleText
    waitbutton
    closetext
    end
.fightDone:
	writetext AndrewAfterBattleText
	waitbutton
    closetext
	opentext
	writetext AndrewRematchText
	yesorno
	iftrue .fight
.refused
    writetext AndrewBattleRefusedText
    waitbutton
    closetext
    end
.intro
    writetext AndrewIntroText
    waitbutton
    closetext
    end

AndrewIntroText:
	text "Hello <PLAYER>."
	para "Welcome to my"
	line "house!"
	para "I am the creator"
	line "of this world."
	para "I hope you are"
	line "having fun."
	para "You still have"
	line "more to do!"
	para "Come back when you"
	line "have achieved the"
	cont "MARK OF GOD."
	para "Good luck!"
	done

AndrewBeatOakText:
	text "You have the MARK!"
	para "I am very proud of"
	line "you."
	para "You are the master"
	line "of this world!"
	para "Or so you think."
	para "You haven't beat"
	line "me yet."
	done

AndrewOfferBattleText:
	text "Shall we?"
	done

AndrewBattleTypeText:
	text "Would you like to"
	line "have some chance"
	cont "at winning?"
	done

AndrewBeginBattleText:
    text "Let's do it!"
    done

AndrewBeatenText:
    text "Fantastic!"
    done

AndrewWinText:
	text "It's not exactly"
	line "fair."
	done

AndrewImpossibleBeatenText:
	text "Very good..."
	para "Nice cheat codes."
	done

AndrewImpossibleWinText:
	text "You were never"
	line "winning this."
	done

AndrewGiveHandText:
	text "You have proven"
	line "yourself worthy of"
	cont "the ultimate"
	cont "forbidden power."
	done

AndrewExplainHandText:
	text "The HAND OF GOD is"
	line "a key item which"
	cont "when turned on"
	cont "will cause your"
	cont "team to be"
	cont "replaced by the"
	cont "team of the"
	cont "trainer you fight."
	para "This persists"
	line "after battle!"
	para "When turned off"
	line "you can restore"
	cont "your team from the"
	cont "last save."
	para "You can choose not"
	line "to restore and"
	cont "keep the copied"
	cont "team."
	para "You can put them"
	line "in your PC if you"
	cont "want."
	para "Now you can copy"
	line "and keep any"
	cont "players team."
	para "Note though it"
	line "doesn't work on"
	cont "me, CATHERINE,"
	cont "JAMES or LORD OAK"
	cont "but does on"
	cont "anybody else!"
	done

AndrewAfterBattleText:
	text "You have made all"
	line "those many hours"
	cont "making this world"
	cont "worth it."
	para "No matter what"
	line "happens in life"
	cont "this place will"
	cont "always be here."
	para "I will always be"
	line "here."
	para "Be kind to"
	line "yourself and do"
	cont "what makes you"
	cont "happy."
	para "You can do"
	line "anything you set"
	cont "yor mind to"
	cont "<PLAYER>."
	done

AndrewUnreachableText:
	text "You totally"
	line "cheated to get"
	cont "here."
	para "This text should"
	line "never be"
	cont "displayed!"
	done

AndrewLoseAfterBattleText:
	text "I know it looks"
	line "impossible but"
	cont "trust me I've"
	cont "balanced it to be"
	cont "just about"
	cont "possible."
	para "You've made it"
	line "this far, you'll"
	cont "figure something"
	cont "out!"
	done

AndrewRematchText:
	text "Would you like to"
	line "have some fun"
	cont "again?"
	done

AndrewBattleRefusedText:
	text "Yeah it's more fun"
	line "for me probably"
	cont "than for you."
	done

AndrewLoseAfterImpossibleBattleText:
	text "That was fun"
	line "wasn't it!"
	done

CatherineScript:
    end

JamesScript:
    end

ManorInside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  19, MANOR_OUTSIDE, 3
	warp_event  9,  19, MANOR_OUTSIDE, 3
	warp_event  10,  12, MANOR_INSIDE, 4
    warp_event  10,  24, MANOR_INSIDE, 3
    warp_event  7,  12, MANOR_INSIDE, 6
    warp_event  7,  0, MANOR_INSIDE, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  15,  4, SPRITE_RED, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GOLD, OBJECTTYPE_SCRIPT, 0, AndrewScript, -1
	object_event   1, 17, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CatherineScript, -1
	object_event  15, 28, SPRITE_BLUE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, JamesScript, -1

