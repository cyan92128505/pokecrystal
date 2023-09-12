	object_const_def
	const AZALEAGYM_BUGSY
	const AZALEAGYM_BUG_CATCHER1
	const AZALEAGYM_BUG_CATCHER2
	const AZALEAGYM_BUG_CATCHER3
	const AZALEAGYM_TWIN1
	const AZALEAGYM_TWIN2
	const AZALEAGYM_GYM_GUIDE

AzaleaGym_MapScripts:
	def_scene_scripts

	def_callbacks

AzaleaGymBugsyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BUGSY
	iftrue .FightDone
	writetext BugsyText_INeverLose
	waitbutton
	closetext
	winlosstext BugsyText_ResearchIncomplete, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	loadtrainer BUGSY, BUGSY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BUGSY
	loadmem wLevelCap, 35
	opentext
	writetext Text_ReceivedHiveBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_HIVEBADGE
	readvar VAR_BADGES
	scall AzaleaGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM49_FURY_CUTTER
	iftrue .GotFuryCutter
	setevent EVENT_BEAT_TWINS_AMY_AND_MAY
	setevent EVENT_BEAT_BUG_CATCHER_BENNY
	setevent EVENT_BEAT_BUG_CATCHER_AL
	setevent EVENT_BEAT_BUG_CATCHER_JOSH
	writetext BugsyText_HiveBadgeSpeech
	promptbutton
	verbosegiveitem TM_X_SCISSOR
	iffalse .NoRoomForFuryCutter
	setevent EVENT_GOT_TM49_FURY_CUTTER
	writetext BugsyText_FuryCutterSpeech
	waitbutton
	closetext
	end
.rematch
    writetext BugsyText_INeverLose
	waitbutton
	closetext
	winlosstext BugsyText_ResearchIncomplete, 0
	loadvar VAR_BATTLETYPE, BATTLETYPE_REMATCH
	loadtrainer BUGSY, BUGSY1
	startbattle
	reloadmapafterbattle
	end

.GotFuryCutter:
	writetext BugsyText_BugMonsAreDeep
	waitbutton
	closetext
	opentext
	writetext RematchTextBugsy
	yesorno
	iftrue .rematch
	writetext RematchRefuseTextBugsy
	waitbutton
	closetext
	end
.NoRoomForFuryCutter:
	closetext
	end

AzaleaGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerTwinsAmyandmay1:
	trainer TWINS, AMYANDMAY1, EVENT_BEAT_TWINS_AMY_AND_MAY, TwinsAmyandmay1SeenText, TwinsAmyandmay1BeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext TwinsAmyandmay1AfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsAmyandmay2:
	trainer TWINS, AMYANDMAY2, EVENT_BEAT_TWINS_AMY_AND_MAY, TwinsAmyandmay2SeenText, TwinsAmyandmay2BeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext TwinsAmyandmay2AfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherBenny:
	trainer BUG_CATCHER, BUG_CATCHER_BENNY, EVENT_BEAT_BUG_CATCHER_BENNY, BugCatcherBennySeenText, BugCatcherBennyBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherBennyAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherAl:
	trainer BUG_CATCHER, AL, EVENT_BEAT_BUG_CATCHER_AL, BugCatcherAlSeenText, BugCatcherAlBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherAlAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherJosh:
	trainer BUG_CATCHER, JOSH, EVENT_BEAT_BUG_CATCHER_JOSH, BugCatcherJoshSeenText, BugCatcherJoshBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherJoshAfterBattleText
	waitbutton
	closetext
	end

AzaleaGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_BUGSY
	iftrue .AzaleaGymGuideWinScript
	opentext
	writetext AzaleaGymGuideText
	waitbutton
	closetext
	end

.AzaleaGymGuideWinScript:
	opentext
	writetext AzaleaGymGuideWinText
	waitbutton
	closetext
	end

AzaleaGymStatue:
	checkflag ENGINE_HIVEBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, BUGSY, BUGSY1
	jumpstd GymStatue2Script

BugsyText_INeverLose:
	text "For a billion"
	line "years bugs have"
	cont "thrived."

	para "They are perfect"
	line "fighting machines."

	para "No other creature"
	line "can match their"
	cont "ferocity and"
	cont "determination."

	para "They have seen"
	line "the rise of"
	cont "humanity."

	para "They will see"
	line "its fall."

	para "I wish to be as"
	line "ruthless and hard"
	cont "as them."

	para "I'll show you"
	line "how soft you"
	cont "are."
	done

BugsyText_ResearchIncomplete:
	text "You have the"
	line "will to win!"

	para "Here take this"
	line "badge."
	done

Text_ReceivedHiveBadge:
	text "<PLAYER> received"
	line "HIVEBADGE."
	done

BugsyText_HiveBadgeSpeech:
	text "Do you know the"
	line "benefits of HIVE-"
	cont "BADGE?"

	para "You can train"
	line "#MON up to"
	cont "level 35."

	para "And capture"
	line "#MON up to"
	cont "level 25."

	para "You can also"
	line "use CUT outside"
	cont "of battle."
	done

BugsyText_FuryCutterSpeech:
	text "TM49 contains"
	line "X SCISSOR."

	para "It is a vicious"
	line "and powerful"
	cont "attack that"
	cont "can cut foes"
	cont "in half."
	done

BugsyText_BugMonsAreDeep:
	text "I am not scared"
	line "of war."

	para "BUG #MON"
	line "live in constant"
	cont "strife."

	para "Nothing bothers"
	line "them."

	para "They are immune"
	line "to fear."

	para "They just get"
	line "on with things."
	done

BugCatcherBennySeenText:
	text "Not all BUGS"
	line "can be stepped"
	cont "on."

	para "Just try stepping"
	line "on my mighty BUG"
	cont "#MON!"
	done

BugCatcherBennyBeatenText:
	text "Squashed!"
	done

BugCatcherBennyAfterBattleText:
	text "BUG #MON are"
	line "tough but can't"
	cont "withstand FIRE"
	cont "or FLYING moves."

	para "Or ROCK, can't"
	line "handle that"
	cont "either."
	done

BugCatcherAlSeenText:
	text "Bug #MON are"
	line "so cool."

	para "Like just look"
	line "at my thorax!"
	done

BugCatcherAlBeatenText:
	text "Ow my abdomen!"
	done

BugCatcherAlAfterBattleText:
	text "I want to be"
	line "a HERACROSS"
	cont "when I grow up!"
	done

BugCatcherJoshSeenText:
	text "We were locked"
	line "in here."

	para "BUGSY could have"
	line "sliced the door"
	cont "down and killed"
	cont "those ROCKETS."

	para "But he was"
	line "asleep and I"
	cont "wasn't going to"
	cont "wake him!"
	done

BugCatcherJoshBeatenText:
	text "You're strong!"
	done

BugCatcherJoshAfterBattleText:
	text "You are the one"
	line "who beat the"
	cont "ROCKETS aren't"
	cont "you!"
	done

TwinsAmyandmay1SeenText:
	text "AMY: The door"
	line "is open again!"

	para "I was going to"
	line "break it down"
	cont "but my sister"
	cont "held me back."
	done

TwinsAmyandmay1BeatenText:
	text "AMY & MAY: Oh,"
	line "double goodness!"
	done

TwinsAmyandmay1AfterBattleText:
	text "AMY: You're"
	line "strong."

	para "But BUGSY is"
	line "stronger."
	done

TwinsAmyandmay2SeenText:
	text "MAY: I was"
	line "going to bust"
	cont "that door down!"

	para "But my sister"
	line "restrained me."
	done

TwinsAmyandmay2BeatenText:
	text "AMY & MAY: Oh,"
	line "double goodness!"
	done

TwinsAmyandmay2AfterBattleText:
	text "MAY: Not bad."

	para "But BUGSY will"
	line "squash you."
	done

AzaleaGymGuideText:
	text "BUGSY has"
	line "some really"
	cont "strong moves!"

	para "GRASS types"
	line "wont be able to"
	cont "do much."

	para "A ROCK or FIRE"
	line "type would work."

	para "ELECTRIC might"
	line "do well too."
	done

AzaleaGymGuideWinText:
	text "Well done! That"
	line "was a great clash"

	para "of talented young"
	line "trainers."

	para "With people like"
	line "you, the future of"
	cont "#MON is bright!"
	done

RematchTextBugsy:
    text "How about a"
    line "rematch?"
    prompt

RematchRefuseTextBugsy:
    text "Maybe next time."
    done

AzaleaGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, AZALEA_TOWN, 5
	warp_event  5, 15, AZALEA_TOWN, 5

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, AzaleaGymStatue
	bg_event  6, 13, BGEVENT_READ, AzaleaGymStatue

	def_object_events
	object_event  5,  7, SPRITE_BUGSY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AzaleaGymBugsyScript, -1
	object_event  5,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherBenny, -1
	object_event  8,  8, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherAl, -1
	object_event  1,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherJosh, -1
	object_event  4, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsAmyandmay1, -1
	object_event  5, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsAmyandmay2, -1
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AzaleaGymGuideScript, -1
