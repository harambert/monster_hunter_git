if !choiceMode {
	draw_set_color(make_color_rgb(10,10,100))
	draw_roundrect_ext(xx - width/2, yy-height/2, xx + width/2, yy + height/2 + 10, 50,50, false)
	draw_set_color(c_white)
	drawSetText(fa_left, fa_center, fMain)
	var str = string_copy(txt[currTxt],0,floor(currLetter))
	var len = string_length(txt[currTxt])
	if currLetter < len {
		currLetter += 0.5
		if !audio_is_playing(sndVoice) {
			playSFX(sndVoice,true)	
		}
	}
	
	draw_text_ext(xx - width/2 + xbuff/2, yy, str, 30, width - xbuff)
	draw_text(xx + width/2 - 50, yy + height/2 - 20, "'E'")
} else {
	draw_set_color(make_color_rgb(50,10,100))
	draw_roundrect_ext(xx - width/2, yy-height/2, xx + width/2, yy + height/2 + 10, 50,50, false)
	draw_set_color(c_white)
	var len = array_length(choiceTxt)
	if keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")) {
		if currChoice > 0 {
			currChoice --	
		} else {
			currChoice = len-1
		}
		playSFX(sndVoice,true)	
	}
	if keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")) {
		if currChoice < len-1 {
			currChoice ++
		} else {
			currChoice = 0	
		}
		playSFX(sndVoice,true)	
	}
	drawSetText(fa_left, fa_top, fMain)
	draw_text(xx - width/2 + xbuff/2, yy - height/2 + 30, choiceTopTxt)
	var ybuff = 30
	var indicate = ""
	var i = 0
	repeat(len) {
		if i == currChoice {
			draw_set_color(c_yellow)
			indicate = "* "
		}
		draw_text(xx - width/2 + xbuff/2, yy - height/2 + 30 + (ybuff * (i+1)),indicate + choiceTxt[i])
		draw_set_color(c_white)	
		indicate = ""
		i++
	}
}
draw_set_valign(fa_center)
draw_text(xx + width/2 - 50, yy + height/2 - 20, "'E'")
