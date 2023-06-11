	object_const_def
	const WARZONE_WALLACE
	const WARZONE_STEVEN
	const WARZONE_CYNTHIA
	const WARZONE_LEON
	const WARZONE_SOLDIER_1
	const WARZONE_SOLDIER_2
	const WARZONE_SOLDIER_3
	const WARZONE_SOLDIER_4
	const WARZONE_SOLDIER_5

WarZone_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Weather

.Weather:
	checkevent EVENT_BEAT_WALLACE
	iffalse .war
	appear WARZONE_STEVEN
	appear WARZONE_CYNTHIA
	appear WARZONE_LEON
	sjump .end
.war
	setval WEATHER_RAIN
	writemem wFieldWeather
	disappear WARZONE_STEVEN
	disappear WARZONE_CYNTHIA
	disappear WARZONE_LEON
.end
	endcallback

WallaceScript:
    turnobject WARZONE_WALLACE, DOWN
	opentext
	writetext WallaceSeenText
	waitbutton
	closetext
	winlosstext WallaceBeatenText, WallaceWinsText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer WALLACE, FUHRER_WALLACE
	startbattle
	reloadmapafterbattle
	special FadeOutMusic
	setevent EVENT_BEAT_WALLACE
	setevent EVENT_BEAT_HOEN_ARMY
	clearevent EVENT_HOEN_INVASION_UNDERWAY
	setval 0
    writemem wHoenInvasionUnderway
	special HealParty
	opentext
	writetext WallaceAfterBattleText1
	waitbutton
	closetext

    playsound SFX_FLY
	appear WARZONE_STEVEN
	opentext
	writetext StevenIntroText
	waitbutton
	closetext
	applymovement WARZONE_STEVEN, Movement_Down
	turnobject WARZONE_WALLACE, UP
	opentext
	writetext StevenText
    waitbutton
    closetext
    opentext
    writetext WallaceAfterBattleText2
    waitbutton
    closetext

    playsound SFX_FLY
    appear WARZONE_CYNTHIA
    opentext
    writetext CynthiaIntroText
    waitbutton
    applymovement WARZONE_CYNTHIA, Movement_Right
    turnobject WARZONE_WALLACE, LEFT
    writetext CynthiaText
    waitbutton
    closetext

    playsound SFX_FLY
    appear WARZONE_LEON
    opentext
    writetext LeonIntroText
    waitbutton
    applymovement WARZONE_LEON, Movement_Left
    turnobject WARZONE_WALLACE, RIGHT
    writetext LeonText
    waitbutton
    closetext

    turnobject WARZONE_WALLACE, LEFT
    pause 30
    turnobject WARZONE_WALLACE, RIGHT
    pause 30
    turnobject WARZONE_WALLACE, UP
    pause 30
    turnobject WARZONE_WALLACE, DOWN
    opentext
    writetext WallaceFinalText
    waitbutton
    closetext
    disappear WARZONE_WALLACE
    disappear WARZONE_SOLDIER_1
    disappear WARZONE_SOLDIER_2
    disappear WARZONE_SOLDIER_3
    disappear WARZONE_SOLDIER_4
    disappear WARZONE_SOLDIER_5
    reloadmap
    playmusic MUSIC_ECRUTEAK_CITY
	end

WallaceSeenText:
    text "You are too late!"

    para "KANTO shall fall"
    line "at last."

    para "#MON shall"
    line "be free."

    para "And my people"
    line "shall look"
    cont "after this land"
    cont "better than it"
    cont "ever has been."

    para "Nothing can stop"
    line "it now."

    para "You should thank"
    line "me."

    para "You and your"
    line "#MON will be"
    cont "happier than"
    cont "you ever dreamt."

    para "You don't seem"
    line "pleased."

    para "Then you shall"
    line "be made an example"
    cont "of."

    para "You will suffer"
    line "more than any"
    cont "other!"

    para "Behold my right"
    line "to rule!"
    done

WallaceBeatenText:
    text "Stop!"
    done

WallaceWinsText:
    text "So weak."
    done

WallaceAfterBattleText1:
    text "NO!"

    para "My #MON!"

    para "They abandon me!"

    para "Where did they"
    line "go!"
    done

WallaceAfterBattleText2:
    text "STEVEN..."

    para "Traitor!"

    para "The people of"
    line "HOEN have"
    cont "rejected your"
    cont "brand of weak"
    cont "passivism"

    para "They believe in"
    line "my vision of a"
    cont "global utopia."

    para "That's why they"
    line "follow me!"
    done

WallaceFinalText:
    text "Don't think too"
    line "much of yourself."

    para "In years to"
    line "come you will"
    cont "see."

    para "The people will"
    line "turn on you."

    para "How long must"
    line "your #MON"
    cont "suffer..."
    done

StevenIntroText:
    text "STEVEN: They"
    line "are no longer"
    cont "under your"
    cont "command."

    para "You have lost"
    line "their respect."
    done

StevenText:
    text "It's over WALLACE."

    para "You have lost."

    para "Hatred has lost."

    para "You will never"
    line "drag HOEN into"
    cont "war again."
    done

CynthiaIntroText:
    text "CYNTHIA: They"
    line "follow you out"
    cont "of fear."
    done

CynthiaText:
    text "But they don't"
    line "need to be afraid"
    cont "anymore."

    para "We wont allow"
    line "this to go on!"
    done

LeonIntroText:
    text "LEON: Well well..."

    para "Would you look at"
    line "the clock."
    done

LeonText:
    text "It's CHAMPION"
    line "time!"
    done

Movement_Down:
	step DOWN
	step DOWN
	step_end

Movement_Left:
	step LEFT
	step LEFT
	step LEFT
	step_end

Movement_Right:
	step RIGHT
	step RIGHT
	step_end

StevenScript:
    faceplayer
	opentext
	checkevent EVENT_BEAT_STEVEN
	iftrue .FightDone
.fight
	writetext StevenSeenText
	waitbutton
	closetext
	checkevent EVENT_BEAT_STEVEN
	iftrue .dontAsk
	opentext
	writetext StevenOfferFightText
	waitbutton
	yesorno
	iffalse .refused
	closetext
.dontAsk
	winlosstext StevenBeatenText, StevenBeatenText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer STEVEN, CHAMP_STEVEN
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_STEVEN
	special HealParty
	end
.FightDone:
	writetext StevenAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextWarZone
	yesorno
	iftrue .fight
.refused
	writetext RematchRefuseTextWarZone
	waitbutton
	closetext
	end
StevenSeenText:
    text "I am sorry..."

    para "So very sorry."

    para "For all the pain"
    line "HOEN has caused."

    para "I tried to make"
    line "people see reason."

    para "But WALLACE was"
    line "right."

    para "Many people"
    line "believed in him."

    para "It has nothing to"
    line "do with freeing"
    cont "#MON."

    para "HOEN is mostly"
    line "sea."

    para "People want more"
    line "land."

    para "We are lucky you"
    line "were here to"
    cont "save the day."
    done
StevenBeatenText:
    text "Well done!"
    done
StevenWinsText:
    text "Well done!"
    done
StevenOfferFightText:
    text "I would like to"
    line "help you become"
    cont "stronger."

    para "How about a"
    line "battle?"
    done
StevenAfterBattleText:
    text "One day WALLACE"
    line "or another like"
    cont "him will decide"
    cont "to make war again."

    para "By then however."

    para "You will be"
    line "unstoppable."
    done

CynthiaScript:
    faceplayer
	opentext
	checkevent EVENT_BEAT_CYNTHIA
	iftrue .FightDone
.fight
	writetext CynthiaSeenText
	waitbutton
	closetext
	checkevent EVENT_BEAT_CYNTHIA
	iftrue .dontAsk
	opentext
	writetext CynthiaOfferFightText
    waitbutton
	yesorno
	iffalse .refused
	closetext
.dontAsk
	winlosstext CynthiaBeatenText, CynthiaWinsText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer CYNTHIA, CHAMP_CYNTHIA
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CYNTHIA
	special HealParty
	end
.FightDone:
	writetext CynthiaAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextWarZone
	yesorno
	iftrue .fight
.refused
	writetext RematchRefuseTextWarZone
	waitbutton
	closetext
	end
CynthiaSeenText:
    text "You have CHAMPION"
    line "BLUE to thank for"
    cont "our arrival."

    para "He gave an"
    line "impassioned and"
    cont "masterful speech"
    cont "to the league."

    para "It made me ashamed"
    line "for not taking a"
    cont "stance against"
    cont "WALLACE years"
    cont "ago."
    done
CynthiaBeatenText:
    text "Good job!"
    done
CynthiaWinsText:
    text "Good job!"
    done
CynthiaOfferFightText:
    text "From one CHAMPION"
    line "to another."

    para "Would you like"
    line "to battle?"
    done
CynthiaAfterBattleText:
    text "Have you heard of"
    line "ARCEUS?"

    para "Legend states it"
    line "is a #MON"
    cont "that created all"
    cont "things."

    para "I can feel it"
    line "is watching us."

    para "How disappointed"
    line "it must be."

    para "In all but you."
    done

LeonScript:
    faceplayer
	opentext
	checkevent EVENT_BEAT_LEON
	iftrue .FightDone
.fight
	writetext LeonSeenText
	waitbutton
	closetext
	checkevent EVENT_BEAT_LEON
	iftrue .dontAsk
	opentext
	writetext LeonOfferFightText
    waitbutton
	yesorno
	iffalse .refused
	closetext
.dontAsk
	winlosstext LeonBeatenText, LeonWinsText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BOSS_BATTLE
	loadtrainer LEON, CHAMP_LEON
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LEON
	special HealParty
	end
.FightDone:
	writetext LeonAfterBattleText
	waitbutton
    closetext
	opentext
	writetext RematchTextWarZone
	yesorno
	iftrue .fight
.refused
	writetext RematchRefuseTextWarZone
	waitbutton
	closetext
	end
LeonSeenText:
    text "It's a real shame"
    line "I didn't get here"
    cont "sooner."

    para "I would have"
    line "enjoyed stomping"
    cont "that weakling"
    cont "WALLACE into the"
    cont "dirt."

    para "But you did"
    line "pretty good"
    cont "yourself."
    done
LeonBeatenText:
    text "Not bad."
    done
LeonWinsText:
    text "Not bad."
    done
LeonOfferFightText:
    text "Say do you think"
    line "you would last..."

    para "Against the"
    line "strongest CHAMPION"

    para "Let's battle?"
    done
LeonAfterBattleText:
    text "You are a worthy"
    line "CHAMPION."

    para "Unlike DYANTHIA"
    line "and ALDER."

    para "Both too busy"
    line "to make it here."
    done

TrainerSoldier1:
	trainer SOLDIER, SOLDIER_1, EVENT_BEAT_SOLDIER_1, Soldier1SeenText, Soldier1BeatenText, Soldier1WinsText, .Script
.Script:
	endifjustbattled
	opentext
	writetext Soldier1AfterBattleText
	waitbutton
	closetext
	end
Soldier1SeenText:
    text "You can't win!"
    done
Soldier1BeatenText:
    text "Damn!"
    done
Soldier1WinsText:
    text "You fool!"
    done
Soldier1AfterBattleText:
    text "Some stuff is"
    line "happening."
    done

TrainerSoldier2:
	trainer SOLDIER, SOLDIER_2, EVENT_BEAT_SOLDIER_2, Soldier2SeenText, Soldier2BeatenText, Soldier2WinsText, .Script
.Script:
	endifjustbattled
	opentext
	writetext Soldier2AfterBattleText
	waitbutton
	closetext
	end
Soldier2SeenText:
    text "You can't win!"
    done
Soldier2BeatenText:
    text "Damn!"
    done
Soldier2WinsText:
    text "You fool!"
    done
Soldier2AfterBattleText:
    text "Some stuff is"
    line "happening."
    done

TrainerSoldier3:
	trainer SOLDIER, SOLDIER_3, EVENT_BEAT_SOLDIER_3, Soldier3SeenText, Soldier3BeatenText, Soldier3WinsText, .Script
.Script:
	endifjustbattled
	opentext
	writetext Soldier3AfterBattleText
	waitbutton
	closetext
	end
Soldier3SeenText:
    text "You can't win!"
    done
Soldier3BeatenText:
    text "Damn!"
    done
Soldier3WinsText:
    text "You fool!"
    done
Soldier3AfterBattleText:
    text "Some stuff is"
    line "happening."
    done

TrainerSoldier4:
	trainer SOLDIER, SOLDIER_4, EVENT_BEAT_SOLDIER_4, Soldier1SeenText, Soldier4BeatenText, Soldier4WinsText, .Script
.Script:
	endifjustbattled
	opentext
	writetext Soldier4AfterBattleText
	waitbutton
	closetext
	end
Soldier4SeenText:
    text "You can't win!"
    done
Soldier4BeatenText:
    text "Damn!"
    done
Soldier4WinsText:
    text "You fool!"
    done
Soldier4AfterBattleText:
    text "Some stuff is"
    line "happening."
    done

TrainerSoldier5:
	trainer SOLDIER, SOLDIER_5, EVENT_BEAT_SOLDIER_5, Soldier1SeenText, Soldier5BeatenText, Soldier5WinsText, .Script
.Script:
	endifjustbattled
	opentext
	writetext Soldier5AfterBattleText
	waitbutton
	closetext
	end
Soldier5SeenText:
    text "You can't win!"
    done
Soldier5BeatenText:
    text "Damn!"
    done
Soldier5WinsText:
    text "You fool!"
    done
Soldier5AfterBattleText:
    text "Some stuff is"
    line "happening."
    done

RematchTextWarZone:
    text "Let's settle this?"
    done

RematchRefuseTextWarZone:
    text "It's not over."
    done

FightWallaceScript1:
    checkevent EVENT_BEAT_WALLACE
    iftrue .end
    applymovement PLAYER, Movement_FightWallace1
    sjump WallaceScript
.end
    end

FightWallaceScript2:
    checkevent EVENT_BEAT_WALLACE
    iftrue .end
    applymovement PLAYER, Movement_FightWallace2
    sjump WallaceScript
.end
    end

Movement_FightWallace1:
	step UP
	step UP
	step_end

Movement_FightWallace2:
	step UP
	step LEFT
	step UP
	step_end

WarZone_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  12, 35, FUCHSIA_CITY, 12
	warp_event  13, 35, FUCHSIA_CITY, 12

	def_coord_events
	coord_event  20,  7, SCENE_ALWAYS, FightWallaceScript1
	coord_event  21,  7, SCENE_ALWAYS, FightWallaceScript2

	def_bg_events

	def_object_events
	object_event 20,  4, SPRITE_KOGA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, WallaceScript, EVENT_BEAT_WALLACE
	object_event 20,  0, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, StevenScript, EVENT_FIELD_MON_7
	object_event 15,  4, SPRITE_JASMINE, SPRITEMOVEDATA_STANDING_RIGHT, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CynthiaScript, EVENT_FIELD_MON_8
	object_event 26,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LeonScript, EVENT_FIELD_MON_9
	object_event 10, 28, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSoldier1, EVENT_BEAT_WALLACE
	object_event  4,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSoldier2, EVENT_BEAT_WALLACE
	object_event 23, 26, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSoldier3, EVENT_BEAT_WALLACE
	object_event 35, 27, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSoldier4, EVENT_BEAT_WALLACE
	object_event 32,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSoldier5, EVENT_BEAT_WALLACE
