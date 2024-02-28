BeverlyAnswerPhoneText:
	text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	text "."

	para "Oh! Good morning,"
	line "<PLAYER>."
	done

BeverlyAnswerPhoneDayText:
	text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	text "."

	para "Oh! Good day,"
	line "<PLAYER>."
	done

BeverlyAnswerPhoneNiteText:
	text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	text "."

	para "Oh! Good evening,"
	line "<PLAYER>."
	done

BeverlyGreetText:
	text "Hello, <PLAYER>."
	line "Good morning."

	para "This is @"
	text_ram wStringBuffer3
	text "."
	line "Were you asleep?"
	done

BeverlyGreetDayText:
	text "Hi, <PLAYER>."
	line "This is @"
	text_ram wStringBuffer3
	text "."

	para "How are you doing?"
	done

BeverlyGreetNiteText:
	text "Hi, <PLAYER>."
	line "This is @"
	text_ram wStringBuffer3
	text "."

	para "Were you awake?"
	done

BeverlyGenericText:
	text "I must be ever"
	line "vigilant!"
	para "Let me know if"
	line "you're ever in a"
	cont "city being"
	cont "attacked by a"
	cont "giant robot"
	cont "piloted by a"
	cont "monkey with a huge"
	cont "brain!"
	done
