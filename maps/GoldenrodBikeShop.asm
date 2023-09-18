	object_const_def
	const GOLDENRODBIKESHOP_CLERK

GoldenrodBikeShop_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

GoldenrodBikeShopClerkScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BICYCLE
	iftrue .GotBicycle
	writetext GoldenrodBikeShopClerkIntroText
	yesorno
	iffalse .Refused
	writetext GoldenrodBikeShopClerkAgreedText
	promptbutton
	waitsfx
	giveitem BICYCLE
	writetext BorrowedABicycleText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setflag ENGINE_BIKE_SHOP_CALL_ENABLED
	setevent EVENT_GOT_BICYCLE
.GotBicycle:
	writetext GoldenrodBikeShopClerkFirstRateBikesText
	waitbutton
	closetext
	end

.Refused:
	writetext GoldenrodBikeShopClerkRefusedText
	waitbutton
	closetext
	end

GoldenrodBikeShopBicycle:
	jumptext GoldenrodBikeShopBicycleText

GoldenrodBikeShopClerkIntroText:
	text "Hey there kid!"

	para "These BIKES are"
	line "the best you"
	cont "can buy."

	para "For a limited"
	line "time when you"
	cont "purchase one"
	cont "of these BIKES"
	cont "you also get"
	cont "hi-tec location"
	cont "tracking tech."

	para "This will keep"
	line "you safe in"
	cont "these evil"
	cont "times."

	para "Wait..."

	para "You are our"
	line "one thousandth"
	cont "customer!!"

	para "Here take a"
	line "BIKE for free!"
	done

GoldenrodBikeShopClerkAgreedText:
	text "Really? Great!"

	para "Give me your name"
	line "and phone number,"

	para "and here is your"
	line "BICYCLE."
	done

BorrowedABicycleText:
	text "<PLAYER> recieved a"
	line "BICYCLE."
	done

GoldenrodBikeShopClerkFirstRateBikesText:
	text "Heh heh enjoy"
	line "the BIKE!"

	para "You be sure to"
	line "ride it and"
	cont "let it record"
	cont "all your location"
	cont "information."
	done

GoldenrodBikeShopClerkRefusedText:
	text "But it's..."

	para "FREE!"
	done

GoldenrodBikeShopBicycleText:
	text "It's a shiny new"
	line "BICYCLE!"
	done

GoldenrodBikeShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 2
	warp_event  3,  7, GOLDENROD_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  0,  3, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  1,  3, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  0,  5, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  1,  5, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  0,  6, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  1,  6, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  6,  6, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  7,  6, BGEVENT_READ, GoldenrodBikeShopBicycle

	def_object_events
	object_event  7,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodBikeShopClerkScript, -1
