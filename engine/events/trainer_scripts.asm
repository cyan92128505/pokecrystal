TalkToTrainerScript::
	faceplayer
	trainerflagaction CHECK_FLAG
	iftrue RematchScript
	loadtemptrainer
	encountermusic
	sjump StartBattleWithMapTrainerScript

SeenByTrainerScript::
	loadtemptrainer
	encountermusic
	showemote EMOTE_SHOCK, LAST_TALKED, 30
	callasm TrainerWalkToPlayer
	applymovementlasttalked wMovementBuffer
	writeobjectxy LAST_TALKED
	faceobject PLAYER, LAST_TALKED
	sjump StartBattleWithMapTrainerScript

StartBattleWithMapTrainerScript:
	opentext
	trainertext TRAINERTEXT_SEEN
	waitbutton
	closetext
	loadtemptrainer
	startbattle
	reloadmapafterbattle
	trainerflagaction SET_FLAG
	loadmem wRunningTrainerBattleScript, -1

AlreadyBeatenTrainerScript:
	scripttalkafter

; AndrewNote - rematch all trainers
RematchScript:
    scall AlreadyBeatenTrainerScript
    readmem wNoRematch
    iftrue .noRematch
    ;callasm noRematchTrainerClass
    ;iftrue .end
	opentext
	writetext RematchText
	yesorno
	iffalse .refused
    loadvar VAR_BATTLETYPE, BATTLETYPE_REMATCH
    loadtemptrainer
	encountermusic
	sjump StartBattleWithMapTrainerScript
.refused
	writetext RematchRefuseText
	waitbutton
	closetext
	end
.noRematch
    loadmem wNoRematch, 0
    end

;noRematchTrainerClass:
;	xor a
;	ld [wScriptVar], a
;	ld a, [wOtherTrainerClass]
;	cp SOLDIER
;	ret nz
;	ld a, $1
;	ld [wScriptVar], a
;	ret

RematchText:
    text "How about a"
    line "rematch?"
    prompt

RematchRefuseText:
    text "Maybe next time."
    done