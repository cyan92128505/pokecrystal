JackPhoneTipsScript:
	farwritetext JackHeardSomeGreatTipsText
	promptbutton
	sjump PhoneScript_HangUpText_Male

BeverlyHangUpScript:
	farwritetext BeverlyLetsChatAboutMonAgainText
	promptbutton
	sjump PhoneScript_HangUpText_Female

GavenHangUpNotThursdayScript:
	farwritetext GavenHangUpNotThursdayText
	promptbutton
	sjump PhoneScript_HangUpText_Male

BethHangUpScript:
	farwritetext BethLetsBattleAgainSometimeText
	promptbutton
	sjump PhoneScript_HangUpText_Female

ReenaForwardScript:
	farwritetext ReenaForwardText
	promptbutton
	sjump PhoneScript_HangUpText_Female

JoeyHangUpScript:
	farwritetext JoeyDevisingStrategiesText
	promptbutton
	sjump PhoneScript_HangUpText_Male

WadeNoBerriesScript:
	farwritetext WadeNoBerriesText
	promptbutton
	sjump PhoneScript_HangUpText_Male

LizHangUpScript:
	farwritetext LizFawningOverMonText
	promptbutton
	sjump PhoneScript_HangUpText_Female

AnthonyHangUpScript:
	farwritetext AnthonyWasntPayingAttentionText
	promptbutton
	sjump PhoneScript_HangUpText_Male

ToddNoItemScript:
	farwritetext ToddSavingUpForBargainSaleText
	promptbutton
	sjump PhoneScript_HangUpText_Male

GinaHangUpScript:
	farwritetext GinaHaventFoundAnythingYetText
	promptbutton
	sjump PhoneScript_HangUpText_Female

ArnieHangUpScript:
	farwritetext ArnieHaventSeenRareMonText
	promptbutton
	sjump PhoneScript_HangUpText_Male

AlanHangUpScript:
	farwritetext AlanHaventPickedUpAnythingText
	promptbutton
	sjump PhoneScript_HangUpText_Male

DanaHangUpScript:
	farwritetext DanaCanYouWaitABitLongerText
	promptbutton
	sjump PhoneScript_HangUpText_Female

ChadHangUpScript:
	farwritetext ChadGoingToStudyHardText
	promptbutton
	sjump PhoneScript_HangUpText_Male

DerekHangUpScript:
	farwritetext DerekLetsGetTogetherText
	promptbutton
	sjump PhoneScript_HangUpText_Male

BrentHangUpScript:
	farwritetext BrentSorryImTooBusyText
	promptbutton
	sjump PhoneScript_HangUpText_Male

TiffanyNoItemScript:
	farwritetext TiffanyNoItemText
	promptbutton
	sjump PhoneScript_HangUpText_Female

WiltonHaventFoundAnythingScript:
	farwritetext WiltonHaventFoundAnythingText
	promptbutton
	sjump PhoneScript_HangUpText_Male

ParryBattleWithMeScript:
	farwritetext ParryBattleWithMeText
	promptbutton
	sjump PhoneScript_HangUpText_Male

ErinWorkingHardScript:
	farwritetext ErinWorkingHardText
	promptbutton
	sjump PhoneScript_HangUpText_Female

IrwinRandomTextScript:
	random 3
	ifequal 0, IrwinEscapadeScript
	ifequal 1, IrwinGoodMatchScript
	ifequal 2, IrwinSoMuchToChatAboutScript

IrwinEscapadeScript:
	farwritetext IrwinYourEscapadesRockText
	promptbutton
	sjump PhoneScript_HangUpText_Male

IrwinGoodMatchScript:
	farwritetext IrwinGoodMatchText
	promptbutton
	sjump PhoneScript_HangUpText_Male

IrwinSoMuchToChatAboutScript:
	farwritetext IrwinSoMuchToChatAboutText
	promptbutton
	sjump PhoneScript_HangUpText_Male
