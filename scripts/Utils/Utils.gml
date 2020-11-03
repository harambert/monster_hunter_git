function makeText(_textsAndScripts) {
	var len = argument_count
	if instance_exists(oTextBox) {
		instance_destroy(oTextBox)	
	}
	with(instance_create_depth(x,y,depth,oTextBox)) {
		var i = 0
		repeat(len)	{
			if is_string(argument[i]) {
				txt[i] = argument[i]
			} else {
				scr = argument[i]
			}
			i++
		}	
	}
}

function makeChoice(_topText, _choices, _scripts) {
	var len = argument_count/2
	if instance_exists(oTextBox) {
		instance_destroy(oTextBox)	
	}
	with(instance_create_depth(x,y,depth,oTextBox)) {
		choiceTopTxt = argument[0]
		choiceMode = true
		var i = 0
		repeat(len)	{
			choiceTxt[i] = argument[(i*2) + 1]
			choiceScript[i] = argument[(i*2) + 2]
			i += 1
		}	
	}
}

function drawSetText(_halign, _valign, _font) {
	draw_set_halign(_halign)
	draw_set_valign(_valign)
	if argument_count > 2 {
		draw_set_font(_font)	
	}
}

function transition(targetRoom) {
	with(oTransition) {
		target = targetRoom 
		mode = TRANS_MODE.GOTO
	}
}

function playSFX(_id, isPitched) {
	audio_stop_sound(_id)
	if isPitched {
		audio_sound_pitch(_id, choose(0.95,1,1.05))
	}	
	audio_play_sound(_id,1,false)
}

function pulseGlitch(_intensity) {
	glitchInt = _intensity
	playSFX(sndGlitch, true)
}