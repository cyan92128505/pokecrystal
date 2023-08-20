	object_const_def
	const LAVENDERTOWN_POKEFAN_M
	const LAVENDERTOWN_TEACHER
	const LAVENDERTOWN_GRAMPS
	const LAVENDERTOWN_YOUNGSTER

LavenderTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_LAVENDER
	endcallback

LavenderTownPokefanMScript:
	jumptextfaceplayer LavenderTownPokefanMText

LavenderTownTeacherScript:
	jumptextfaceplayer LavenderTownTeacherText

LavenderTownGrampsScript:
	jumptextfaceplayer LavenderTownGrampsText

LavenderTownYoungsterScript:
	jumptextfaceplayer LavenderTownYoungsterText

LavenderTownSign:
	jumptext LavenderTownSignText

KantoRadioStationSign:
	jumptext KantoRadioStationSignText

VolunteerPokemonHouseSign:
	jumptext VolunteerPokemonHouseSignText

SoulHouseSign:
	jumptext SoulHouseSignText

LavenderPokecenterSignText:
	jumpstd PokecenterSignScript

LavenderMartSignText:
	jumpstd MartSignScript

LavenderTownPokefanMText:
	text "That's quite some"
	line "building, eh?"

	para "It's KANTO's RADIO"
	line "TOWER."
	done

LavenderTownTeacherText:
	text "KANTO has many"
	line "good radio shows."
	done

LavenderTownGrampsText:
	text "People come from"
	line "all over to pay"

	para "their respects to"
	line "the departed souls"
	cont "of #MON."
	done

LavenderTownYoungsterText:
	text "You need a #"
	line "FLUTE to wake"
	cont "sleeping #MON."

	para "Every trainer has"
	line "to know that!"
	done

LavenderTownSignText:
	text "LAVENDER TOWN"

	para "The Noble Purple"
	line "Town"
	done

KantoRadioStationSignText:
	text "KANTO RADIO"
	line "STATION"

	para "Your Favorite"
	line "Programs On-Air"
	cont "Around the Clock!"
	done

VolunteerPokemonHouseSignText:
	text "LAVENDER VOLUNTEER"
	line "#MON HOUSE"
	done

SoulHouseSignText:
	text "SOUL HOUSE"

	para "May the Souls of"
	line "#MON Rest Easy"
	done
	
MerlinRolePlayScript:
    faceplayer
    opentext
    writetext MerlinIntroText
    yesorno
    iffalse .refused
    special TryQuickSave
    iffalse .refused
    setval 0
    writemem wHandOfGod
	setval WEATHER_NONE
	writemem wFieldWeather
	special FadeOutMusic
	playmusic MUSIC_MISTY_MOUNTAIN
    writetext MerlinCharacterChoiceText
	loadmenu .MerlinCharacterMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Morgana
	ifequal 2, .Arthur
	ifequal 3, .Merlin
	closetext
	end
.MerlinCharacterMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, 7
	dw .MerlinCharacterMenuData
	db 1 ; default option
.MerlinCharacterMenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	dn 3, 1 ; rows, columns
	db 5 ; spacing
	dba .MerlinCharacterText
	dbw BANK(@), NULL
.MerlinCharacterText:
	db "MORGANA@"
	db "ARTHUR@"
	db "MERLIN@"

.Morgana
    opentext
    writetext MerlinMorgana1Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval MERLIN_MORGANA
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_MAD_WORLD
	writemem wBattleMusicOverride
	winlosstext MerlinVictoryText, MerlinDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, MERLIN_UTHER
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext MerlinMorgana2Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval MERLIN_VILLAINS
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_CHAMPION_BATTLE
	writemem wBattleMusicOverride
	winlosstext MerlinVictoryText, MerlinDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, MERLIN_HEROES
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext MerlinMorgana3Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval MERLIN_VILLAINS
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_FINAL_BATTLE
	writemem wBattleMusicOverride
	winlosstext MerlinVictoryText, MerlinDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_SHINY, MERLIN_EMRYS
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

	sjump .endMerlin

.Arthur
    opentext
    writetext MerlinArthur1Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval MERLIN_ARTHUR
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_RIVAL_BATTLE
	writemem wBattleMusicOverride
	winlosstext MerlinVictoryText, MerlinDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, MERLIN_MERLIN
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext MerlinArthur2Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval MERLIN_ARTHUR
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_HOEN_GRUNT
	writemem wBattleMusicOverride
	winlosstext MerlinVictoryText, MerlinDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, MERLIN_MORDRED
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext MerlinArthur3Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval MERLIN_HEROES
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_CHAMPION_BATTLE
	writemem wBattleMusicOverride
	winlosstext MerlinVictoryText, MerlinDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, MERLIN_VILLAINS
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext MerlinRolePlayMerlinArthurText
    waitbutton
    closetext

	sjump .endMerlin

.Merlin
    opentext
    writetext MerlinMerlin1Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval MERLIN_MERLIN
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_RIVAL_BATTLE
	writemem wBattleMusicOverride
	winlosstext MerlinVictoryText, MerlinDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, MERLIN_ARTHUR
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext MerlinMerlin2Text
    waitbutton
    closetext
	setval ROLE_PLAYER_NORMAL
	writemem wOtherTrainerClass
	setval MERLIN_HEROES
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_CHAMPION_BATTLE
	writemem wBattleMusicOverride
	winlosstext MerlinVictoryText, MerlinDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_BATTLE_FRONTIER
	loadtrainer ROLE_PLAYER_NORMAL, MERLIN_VILLAINS
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

    opentext
    writetext MerlinMerlin3Text
    waitbutton
    closetext
    opentext
    writetext MerlinMerlin4Text
    waitbutton
    closetext
	setval ROLE_PLAYER_SHINY
	writemem wOtherTrainerClass
	setval MERLIN_EMRYS
	writemem wOtherTrainerID
	special OverridePlayerParty
	setval MUSIC_FINAL_BATTLE
	writemem wBattleMusicOverride
	winlosstext MerlinVictoryText, MerlinDefeatText
	loadvar VAR_BATTLETYPE, BATTLETYPE_WEAK_BATTLE
	loadtrainer ROLE_PLAYER_NORMAL, MERLIN_VILLAINS
	startbattle
	dontrestartmapmusic
	reloadmap
    playmusic MUSIC_MISTY_MOUNTAIN

.endMerlin
	opentext
	writetext MerlinRolePlayFinalText
	waitbutton
	closetext
	special FadeOutMusic
	playmusic MUSIC_RED_LAVENDER

    checkevent EVENT_BEAT_ROLEPLAY_5
    iftrue .skipPrize
    opentext
    writetext RolePlay5PrizeText
    waitbutton
    verbosegiveitem LEFTOVERS
    closetext
    setevent EVENT_BEAT_ROLEPLAY_5
.skipPrize

	opentext
	writetext MerlinRolePlayEndText
	waitbutton
	closetext
	special LoadPokemonData
	special HealParty
	end

.refused
    opentext
    writetext MerlinRolePlayRefusedText
    waitbutton
    closetext
    end

RolePlay5PrizeText:
    text "We finished a"
    line "new game."

    para "Here take this"
    line "for playing."
    done

MerlinIntroText:
    text "Hey!"

    para "This big haunted"
    line "tower makes me"
    cont "think of a"
    cont "medieval castle."

    para "Let's have a"
    line "MERLIN roleplay."

    para "Would you like"
    line "to play?"

    para "You'll have to"
    line "Save your game?"
    done

MerlinCharacterChoiceText:
    text "Great!"

    para "Which character"
    line "would you like"
    cont "to play as?"
    done

MerlinMorgana1Text:
    text "You are the"
    line "daughter of the"
    cont "the king of"
    cont "CAMELOT."

    para "In this kingdom"
    line "all magic is"
    cont "forbidden."

    para "Those that are"
    line "seen using such"
    cont "special moves"
    cont "are executed."

    para "Your father takes"
    line "these laws very"
    cont "seriously."

    para "You have been"
    line "having nightmares"
    cont "recently."

    para "You have been"
    line "seeing events that"
    cont "haven't occurred"
    cont "yet."

    para "These are signs"
    line "of magical ability"
    cont "and you can't let"
    cont "anyone know."

    para "You are in the"
    line "throne room with"
    cont "your father UTHER."

    para "He is sentencing"
    line "another innocent"
    cont "person to death."

    para "You feel an anger."

    para "In the palm of"
    line "your hand a"
    cont "flame ignites out"
    cont "of nothing!"

    para "UTHER looks at"
    line "you horrified."

    para "A guard moves in"
    line "your direction."

    para "An instinct"
    line "reaches out from"
    cont "you and pushes"
    cont "him out of the"
    cont "room."

    para "You turn to see"
    line "your father."

    para "His sword in his"
    line "hand."

    para "It all happened"
    line "so fast!"

    para "You are forced to"
    line "defend yourself"
    cont "against your"
    cont "own father."
    done

MerlinMorgana2Text:
    text "You narrowly"
    line "escape."

    para "You hide in the"
    line "castle you have"
    cont "known your whole"
    cont "life."

    para "You know everyone"
    line "will be looking"
    cont "for you."

    para "And if they find"
    line "you..."

    para "With your position"
    line "they may show pity"
    cont "and end you on the"
    cont "gallows rather"
    cont "than the pyre."

    para "Who's there!"

    para "It's MORDRED."

    para "One of ARTHURS"
    line "KNIGHTS."

    para "You think your"
    line "life is up."

    para "Then he holds out"
    line "his hand and in it"
    cont "a flame appears."

    para "You escape with"
    line "MORDRED."

    para "Before you leave"
    line "you steal the"
    cont "most precious"
    cont "item in the"
    cont "castle."

    para "A dragon egg!"

    para "Several years"
    line "pass."

    para "You are finally"
    line "ready to have"
    cont "your revenge!"

    para "You and MORDRED"
    line "have explored"
    cont "your magic and"
    cont "become much"
    cont "stronger."

    para "But pale in"
    line "comparison to"
    cont "the mighty"
    cont "AITHUSA."

    para "CAMELOT will pay"
    line "for their crimes"
    cont "against your"
    cont "people!"
    done

MerlinMorgana3Text:
    text "Your fingers"
    line "ripple with"
    cont "power!"

    para "You feel full"
    line "of life."

    para "The battle rages!"

    para "Even their dragon"
    line "doesn't concern"
    cont "you."

    para "There is poor"
    line "UTHER."

    para "He apologises for"
    line "the mistakes he"
    cont "has made."

    para "He says he regrets"
    line "his choices."

    para "No!"

    para "He has ended too"
    line "many lives to be"
    cont "forgiven."

    para "You show him a"
    line "mercy he doesn't"
    cont "deserve and take"
    cont "his life quickly."

    para "A wave of darkness"
    line "and he is gone."

    para "You are surprised"
    line "at how little you"
    cont "care."

    para "The battle is"
    line "over."

    para "ARTHUR falls"
    line "overcome by the"
    cont "power of AITHUSA."

    para "His servant MERLIN"
    line "and his wife GWEN"
    cont "collapse beside"
    cont "him."

    para "CAMELOT is yours!"

    para "As it always was"
    line "meant to be."

    para "AHGGGGHHH..."

    para "Voices scream in"
    line "your head."

    para "You turn to see"
    line "MERLIN."

    para "A golden aura"
    cont "surrounds him."

    para "ARTHUR is revived!"

    para "What magic is"
    line "this!"

    para "He stands defiant."

    para "You will show"
    line "his the true"
    cont "power of magic!"
    done

MerlinArthur1Text:
    text "You are prince"
    line "of the great"
    cont "kingdom of"
    cont "CAMELOT."

    para "You are ARTHUR"
    line "the greatest"
    cont "knight of the"
    cont "realm."

    para "Walking through"
    line "the hamlet a"
    cont "peasant boy"
    cont "bumps into you."

    para "You expect a"
    line "groveling apology."

    para "Instead he asks"
    line "for an apology."

    para "He must not know"
    line "who you are."

    para "You suggest some"
    line "light sparing."

    para "The boy seems to"
    line "lose some nerve."

    para "But he accepts."

    para "He will soon learn"
    line "who you are."
    done

MerlinArthur2Text:
    text "You trip and"
    line "fall into a pile"
    cont "of manure."

    para "Your knights draw"
    line "their blades at"
    cont "the boy as you"
    cont "reveal who you"
    cont "are."

    para "You like that the"
    line "boy still doesn't"
    cont "treat you like a"
    cont "prince."

    para "That was years"
    line "ago."

    para "He is now your"
    line "servant and still"
    cont "gives you far"
    cont "more attitude"
    cont "than any sane"
    cont "person should"
    cont "dare."

    para "You are searching"
    line "for a suspected"
    cont "wizard."

    para "Magic is evil"
    line "and punished by"
    cont "death."

    para "You have found"
    line "him."

    para "You draw your"
    line "sword and the man"
    cont "turns."

    para "It's MORDRED, one"
    line "of your KNIGHTS."

    para "It can't be."

    para "He reacts in a"
    line "defensive way."

    para "You become aware"
    line "of your hand."

    para "It is covered in"
    line "ice."

    para "This is magic!"

    para "You make ready"
    line "to fight for your"
    cont "life."
    done

MerlinArthur3Text:
    text "MORDRED escaped."

    para "You return to"
    line "find your father"
    cont "KING UTHER"

    para "He is being"
    line "tended by the"
    cont "court doctor,"
    cont "GIAUS."

    para "Your wife GWEN"
    line "comes to your"
    cont "side."

    para "UTHER reveals"
    line "that your sister"
    cont "MORGANA attacked"
    cont "him."

    para "And that she has"
    line "magic."

    para "The castle is"
    line "searched but"
    cont "MORGANA and"
    cont "MORDRED are gone."

    para "There is also an"
    line "artifact missing."

    para "A dragon egg."

    para "Several years"
    line "pass."

    para "Everyone has"
    line "been training"
    cont "and preparing."

    para "You know MORGANA"
    line "will attack soon."

    para "MERLIN believes"
    line "you can combat"
    cont "MORGANAs dragon"
    cont "with your own"
    cont "dragon."

    para "An old dragon"
    line "KILGHARRAH is"
    cont "held beneath"
    cont "the castle."

    para "Word comes."

    para "They are here."

    para "MERLIN helps you"
    line "with your armour."

    para "You let him know"
    line "he is an awful"
    cont "servant."

    para "And the bravest"
    line "man you've ever"
    cont "known."

    para "You lead your"
    line "family into the"
    cont "great battle for"
    cont "CAMELOT."
    done

MerlinRolePlayMerlinArthurText:
    text "You fight MORDRED."

    para "You fight with"
    line "all you have."

    para "You hear a cry!"

    para "It's your father."

    para "UTHER is dead."

    para "Killed by MORGANA."

    para "Your body moves"
    line "on instinct."

    para "You cut down"
    line "MORDRED."

    para "You rush at"
    line "MORGANA but her"
    cont "dragon protects"
    cont "her."

    para "AITHUSA is too"
    line "strong."

    para "You are mortally"
    line "wounded by his"
    cont "magic."

    para "You fall in the"
    line "court yard."

    para "You are going to"
    line "die."

    para "GWEN and MERLIN"
    line "collapse at your"
    cont "side."

    para "You give them a"
    line "smile."

    para "As the life leaves"
    line "your body you tell"
    cont "them to run."

    para "Your vision fades"
    line "to black."

    para "...."

    para "You open your"
    line "eyes."

    para "MERLIN is there."

    para "He is clad in"
    line "golden light."

    para "This is magic?!"

    para "GWEN drags you"
    line "away as MERLIN"
    cont "is attacked by"
    cont "AITHUSA, MORGANA"
    cont "and MORDRED at"
    cont "once."
    done

MerlinMerlin1Text:
    text "You have arrived"
    line "in a new village."

    para "The kingdom of"
    line "CAMELOT awaits."

    para "You must keep"
    line "your magic a"
    cont "secret."

    para "Such special"
    line "moves are punished"
    cont "by death."

    para "As you walk an"
    line "arrogant man"
    cont "bumps into you."

    para "He asks for an"
    line "apology."

    para "You confidently"
    line "tell him that he"
    cont "should be the"
    cont "one apologising."

    para "He suggests you"
    line "settle this with"
    cont "a sparing match."

    para "Such a barbarian."

    para "Fine you'll show"
    line "him you can fight"
    cont "fine without any"
    cont "magic."
    done

MerlinMerlin2Text:
    text "You knock back"
    line "the man into a"
    cont "pile of manure"
    cont "with the use of"
    cont "a little covert"
    cont "magic."

    para "You then find"
    line "four blades at"
    cont "your throat."

    para "The KNIGHTS of"
    line "CAMELOT!"

    para "The man stands"
    line "and reveals"
    cont "himself as ARTHUR"
    cont "the prince of"
    cont "CAMELOT."

    para "A year has passed"
    line "since then."

    para "ARTHUR offered you"
    line "a job as his"
    cont "servant and you"
    cont "accepted."

    para "You now consider"
    line "him your best"
    cont "friend."

    para "But you can not"
    line "let him know"
    cont "your secret."

    para "ARTHUR is hunting"
    line "a wizard right"
    cont "now."

    para "You enter the"
    line "throne room to"
    cont "find everyone"
    cont "there."

    para "KING UTHER was"
    line "attacked by his"
    cont "daughter MORGANA."

    para "ARTHUR attacked"
    line "by one of his"
    cont "KNIGHTS, MORDRED."

    para "Both were using"
    line "magic they say."

    para "And both must be"
    line "found and killed."

    para "You already can"
    line "sense they have"
    cont "gone."

    para "You go to the wise"
    line "dragon KILGHARRAH."

    para "He tells you they"
    line "have taken a rare"
    cont "dragon egg."

    para "The egg is from a"
    line "royal line and it"
    cont "will produce a"
    cont "mighty dragon."

    para "ARTHUR will die."

    para "You all prepare"
    line "for a year."

    para "You know when the"
    line "time comes it"
    cont "will be up to you"
    cont "to save ARTHUR."

    para "The day comes."

    para "You dress ARTHUR"
    line "in his armour."

    para "He tells you he"
    line "thinks you are"
    cont "a terrible servant"
    cont "and the bravest"
    cont "man he has ever"
    cont "known."

    para "You resolve to"
    line "protect him."
    done

MerlinMerlin3Text:
    text "You fight MORGANA"
    line "while KILGHARRAH"
    cont "handles AITHUSA."

    para "With an orb of"
    line "darkness MORGANA"
    cont "eludes you."

    para "You hear a cry."

    para "UTHER is dead."

    para "Killed by MORGANA."

    para "You feel the life"
    line "of KILGHARRAH"
    cont "weakening."

    para "ARTHUR rushes"
    line "MORGANA but is"
    cont "intercepted by"
    cont "AITHUSA."

    para "With a mighty"
    line "blast of magic"
    cont "ARTHUR falls to"
    cont "the ground."

    para "You rush to"
    line "ARTHUR."

    para "He smiles and"
    line "tells you to"
    cont "run."

    para "You feel AITHUSAs"
    line "magic consuming"
    cont "ARTHURS life."

    para "ARTHUR is gone."

    para "MORGANA has won."
    done

MerlinMerlin4Text:
    text "As you stare on"
    line "at your dead"
    cont "friend."

    para "Sounds fade."

    para "Light fades."

    para "You fall into"
    line "your center."

    para "You are in a"
    line "huge cavern."

    para "Everything made"
    line "of crystal."

    para "Hundreds of voices"
    line "speak in your"
    cont "head at once."

    para "You hear them all"
    line "clearly."

    para "You are EMRYS."

    para "You do not use"
    line "magic."

    para "You are magic"
    line "itself."

    para "There is nothing"
    line "you can not do."

    para "Nothing you can"
    line "not conquer."

    para "Not AITHUSA."

    para "Not even death"
    line "itself."

    para "You awaken back"
    line "in the court."

    para "Everything is"
    line "clear."

    para "You reach into"
    line "ARTHURS chest with"
    cont "your mind and will"
    cont "his heart to beat"
    cont "again."

    para "AITHUSAs magic"
    line "evaporates in"
    cont "your presence."

    para "You feel the life"
    line "return to him."

    para "You turn to face"
    line "your enemies."

    para "They defile magic."

    para "They must exist"
    line "no more."
    done

MerlinRolePlayFinalText:
    text "AITHUSA calls a"
    line "meteor shower of"
    cont "magic from the"
    cont "sky."

    para "The huge blasts"
    line "seem to disappear"
    cont "into MERLIN as"
    cont "they touch him."

    para "MERLIN raises his"
    line "hand and with a"
    cont "movement of his"
    cont "fingers AITHUSA"
    cont "bursts into flame"
    cont "and evaporates."

    para "MORGANA and"
    line "MORDRED try to"
    cont "flee but meet"
    cont "the same fate."

    para "MERLINS mighty"
    line "glow fades."

    para "He looks to"
    line "ARTHUR."

    para "His eyes fall to"
    line "the ground with"
    cont "shame."

    para "Now you know!"

    para "ARTHUR places his"
    line "hand on MERLINS"
    cont "shoulder."

    para "Of course you have"
    line "magic."

    para "I'm not as stupid"
    line "as you think me."

    para "All the times a"
    line "lucky trip has"
    cont "saved my life."

    para "Always with you"
    line "around."

    para "I'm disappointed"
    line "you never told me"
    cont "sooner."

    para "MERLIN looks up"
    line "as ARTHUR"
    cont "continues."

    para "I am not my"
    line "father."

    para "No longer will"
    line "innocent people"
    cont "be killed for how"
    cont "they were born."

    para "You shall be the"
    line "first court wizard"
    cont "of CAMELOT."

    para "But you'll still"
    line "have to make my"
    cont "bed!"

    para "MERLIN agrees to"
    line "the deal."

    para "Together ARTHUR"
    line "and MERLIN forged"
    cont "a great kingdom"
    cont "and each became"
    cont "a legend in their"
    cont "own right."
    done

MerlinRolePlayEndText:
    text "That was great!"

    para "Thanks for"
    line "playing with me."

    para "I'm sure we will"
    line "meet again for"
    cont "another game."
    done

MerlinRolePlayRefusedText:
    text "It'll be fun."

    para "I promise."
    done

MerlinVictoryText:
    text "Victory!"
    done

MerlinDefeatText:
    text "Defeat!"
    done

LavenderTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, LAVENDER_POKECENTER_1F, 1
	warp_event  5,  9, MR_FUJIS_HOUSE, 1
	warp_event  3, 13, LAVENDER_SPEECH_HOUSE, 1
	warp_event  7, 13, LAVENDER_NAME_RATER, 1
	warp_event  1,  5, LAVENDER_MART, 2
	warp_event 13, 11, SOUL_HOUSE, 1
	warp_event 14,  5, LAV_RADIO_TOWER_1F, 1

	def_coord_events

	def_bg_events
	bg_event 11,  3, BGEVENT_READ, LavenderTownSign
	bg_event 15,  7, BGEVENT_READ, KantoRadioStationSign
	bg_event  3,  9, BGEVENT_READ, VolunteerPokemonHouseSign
	bg_event 15, 13, BGEVENT_READ, SoulHouseSign
	bg_event  6,  5, BGEVENT_READ, LavenderPokecenterSignText
	bg_event  2,  5, BGEVENT_READ, LavenderMartSignText

	def_object_events
	object_event 12,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavenderTownPokefanMScript, -1
	object_event  2, 15, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LavenderTownTeacherScript, -1
	object_event 14, 12, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderTownGrampsScript, -1
	object_event  6, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 1, LavenderTownYoungsterScript, -1
	object_event 11,  5, SPRITE_WILL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, MerlinRolePlayScript, -1
