    object_const_def
    const MANOR_ANDREW
    const MANOR_CATHERINE
    const MANOR_JAMES

ManorInside_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .MoveAboutHouse

.MoveAboutHouse:
    checktime MORN
    iffalse .checkNite
    moveobject MANOR_ANDREW, 2, 16
    moveobject MANOR_CATHERINE, 11, 5
    moveobject MANOR_JAMES, 16, 16
.checkNite
    checktime NITE
    iffalse .checkSaturday
    moveobject MANOR_CATHERINE, 11, 5
.checkSaturday
	readvar VAR_WEEKDAY
	ifequal SATURDAY, .moveToLivingRoom
	endcallback
.moveToLivingRoom
    moveobject MANOR_ANDREW, 2, 16
    moveobject MANOR_JAMES, 5, 16
    endcallback

AndrewScript:
    faceplayer
    opentext
    checkevent EVENT_BEAT_ANDREW
    iftrue .fightDone
    checkevent EVENT_BEAT_LORD_OAK
    iffalse .intro
.fight
    setval 0
    writemem wHandOfGod
    writetext AndrewBeatOakText
    waitbutton
    checkevent EVENT_BEAT_ANDREW
    iftrue .dontAsk
    closetext
    opentext
    writetext AndrewOfferBattleText
    waitbutton
    yesorno
    iffalse .refused
.dontAsk
    writetext AndrewBattleTypeText
    waitbutton
    yesorno
    iffalse .fullPower
    writetext AndrewBeginBattleText
    waitbutton
    closetext
	setval MUSIC_EPIC_TETRIS
	writemem wBattleMusicOverride
	winlosstext AndrewBeatenText, AndrewWinText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer RED, ANDREW
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
    waitbutton
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
	writetext AndrewOfferBattleText
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
	para "Bear in mind"
	line "JUDGEMENT OHKO"
	cont "effect doesn't"
	cont "work in this"
	cont "house."
	done

AndrewOfferBattleText:
	text "Let's play?"
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
    faceplayer
    opentext
    checkevent EVENT_BEAT_CATHERINE
    iftrue .fightDone
    checkevent EVENT_BEAT_MASTER_ADAM
    iffalse .intro
.fight
    setval 0
    writemem wHandOfGod
    writetext CatherineBeatAdamText
    waitbutton
    checkevent EVENT_BEAT_CATHERINE
    iftrue .dontAsk
    closetext
    opentext
    writetext CatherineOfferBattleText
    waitbutton
    yesorno
    iffalse .refused
.dontAsk
    writetext CatherineBeginBattleText
    waitbutton
    closetext
	setval MUSIC_ZINNIA_BATTLE
	writemem wBattleMusicOverride
	winlosstext CatherineBeatenText, CatherineWinText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer LEAF, CATHERINE
	startbattle
	ifequal LOSE, .lose
	reloadmapafterbattle
	setevent EVENT_BEAT_CATHERINE
	opentext
	writetext CatherineAfterBattleText
	waitbutton
	closetext
	end
.lose
    special HealParty
    reloadmap
    opentext
    writetext CatherineLoseAfterBattleText
    waitbutton
    closetext
    end
.fightDone:
	writetext CatherineAfterBattleText
	waitbutton
    closetext
	opentext
	writetext CatherineOfferBattleText
	yesorno
	iftrue .fight
.refused
    writetext CatherineBattleRefusedText
    waitbutton
    closetext
    end
.intro
    writetext CatherineIntroText
    waitbutton
    closetext
    end

CatherineIntroText:
	text "Oh hello."
	para "I am CATHERINE, I"
	line "live here with my"
	cont "husband ANDREW."
	para "You have met our"
	line "son ADAM, he takes"
	cont "his ELITE FOUR job"
	cont "very seriously."
	para "You still have"
	line "plenty left to do,"
	cont "come see us when"
	cont "your done."
	para "Oh and ANDREWS"
	line "brother JAMES is"
	cont "here somewhere,"
	cont "watch out for him."
	done

CatherineBeatAdamText:
	text "You have beaten"
	line "ADAM at his"
	cont "strongest!"
	para "You must be one of"
	line "his friends."
	para "You like battling."
	para "I don't mind the"
	line "odd battle myself."
	done

CatherineOfferBattleText:
	text "How about a wee"
	line "battle?"
	done

CatherineBeginBattleText:
	text "My little plants"
	line "ready"
	done

CatherineBeatenText:
	text "ANDREW would like"
	line "you."
	done

CatherineWinText:
	text "That was fun!"
	done

CatherineAfterBattleText:
	text "ANDREW and I miss"
	line "ADAM being here."
	para "He will always be"
	line "our wee boy."
	para "Instead we have to"
	line "put up with JAMES"
	cont "being here."
	done

CatherineLoseAfterBattleText:
	text "You are really"
	line "good."
	para "You and ADAM must"
	line "get along."
	done

CatherineBattleRefusedText:
	text "That's fine, I"
	line "don't really like"
	cont "battling anyway."
	done

JamesScript:
    faceplayer
    opentext
    checkevent EVENT_BEAT_JAMES
    iftrue .fightDone
    checkevent EVENT_BEAT_MASTER_ADAM
    iffalse .intro
.fight
    setval 0
    writemem wHandOfGod
    writetext JamesBeatAdamText
    waitbutton
    checkevent EVENT_BEAT_JAMES
    iftrue .dontAsk
    closetext
    opentext
    writetext JamesOfferBattleText
    waitbutton
    yesorno
    iffalse .refused
.dontAsk
    writetext JamesBeginBattleText
    waitbutton
    closetext
	setval MUSIC_FINAL_BATTLE
	writemem wBattleMusicOverride
	winlosstext JamesBeatenText, JamesWinText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer BLUE, JAMES
	startbattle
	ifequal LOSE, .lose
	reloadmapafterbattle
	setevent EVENT_BEAT_JAMES
	opentext
	writetext JamesAfterBattleText
	waitbutton
	closetext
	end
.lose
    special HealParty
    reloadmap
    opentext
    writetext JamesLoseAfterBattleText
    waitbutton
    closetext
    end
.fightDone:
	writetext JamesAfterBattleText
	waitbutton
    closetext
	opentext
	writetext JamesOfferBattleText
	yesorno
	iftrue .fight
.refused
    writetext JamesBattleRefusedText
    waitbutton
    closetext
    end
.intro
    writetext JamesIntroText
    waitbutton
    closetext
    end

JamesIntroText:
	text "What are you doing"
	line "here?"
	para "You might think"
	line "you're real strong"
	cont "but your not."
	para "You don't even"
	line "have a MEWTWO."
	para "Come back when"
	line "you're worth my"
	cont "time."
	done

JamesBeatAdamText:
	text "I see you have"
	line "become at least"
	cont "decent."
	para "I guess I could"
	line "battle you."
	para "You should know"
	line "though, hax don't"
	cont "work in this"
	cont "house."
	para "No JUDGEMENT OHKO"
	line "here!"
	done

JamesOfferBattleText:
	text "You going to"
	line "battle me?"
	done

JamesBeginBattleText:
	text "Let's see if"
	line "you're any good."
	done

JamesBeatenText:
	text "Yeah you're"
	line "alright."
	done

JamesWinText:
	text "Not surprising."
	done

JamesAfterBattleText:
	text "I hang out here"
	line "with my brother,"
	cont "his wife and"
	cont "sometimes my"
	cont "nephew ADAM."
	para "My brother made"
	line "this world but I'm"
	cont "far more"
	cont "successful than"
	cont "him!"
	done

JamesLoseAfterBattleText:
	text "Your strategy was"
	line "totally wrong."
	para "Analyse the"
	line "battle, think"
	cont "outside the box."
	para "It is possible."
	done

JamesBattleRefusedText:
	text "Yeah it would be a"
	line "waste of time for"
	cont "both of us."
	done

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
