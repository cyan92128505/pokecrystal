BattleCommand_StartRain:
; startrain
	ld a, WEATHER_RAIN
	ld [wBattleWeather], a
	ld a, FIELD_EFFECT_DURATION
	ld [wWeatherCount], a
	farcall _CGB_BattleColors
	call AnimateCurrentMove
	ld hl, DownpourText
	jp StdBattleTextbox
