BattleCommand_StartSun:
; startsun
	ld a, WEATHER_SUN
	ld [wBattleWeather], a
	ld a, FIELD_EFFECT_DURATION
	ld [wWeatherCount], a
	farcall _CGB_BattleColors
	call AnimateCurrentMove
	ld hl, SunGotBrightText
	jp StdBattleTextbox
