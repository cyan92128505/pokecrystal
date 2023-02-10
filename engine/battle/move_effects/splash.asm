BattleCommand_Splash:
	call AnimateCurrentMove
	farcall StubbedTrainerRankings_Splash
	call GetCurrentMon
	cp MAGIKARP
	jr z, .extraVigor
	cp FEEBAS
	jr z, .extraVigor
	jp PrintNothingHappened
.extraVigor
	ld hl, VigorousSplashText
	call StdBattleTextbox
	ret
