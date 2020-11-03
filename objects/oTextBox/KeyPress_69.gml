if !choiceMode {
	var txtLen = string_length(txt[currTxt])
	var len = array_length(txt)
	if currLetter < txtLen {
		currLetter = txtLen
	}
	else if currTxt < len - 1 {
		currTxt ++
		currLetter = 0
		playSFX(sndVoice,true)
	} else {
		if scr != noone {
			script_execute(scr)	
		}
		instance_destroy()	
	}
} else {
	if choiceScript[currChoice] != noone {
		script_execute(choiceScript[currChoice])
	}
	instance_destroy()
}

if !audio_is_playing(sndVoice) {
	playSFX(sndVoice,true)	
}