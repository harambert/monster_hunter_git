if !show exit

if transMode == "open" {
	mysteryTrans = min(1, mysteryTrans + 0.005)	
}

drawSetText(fa_center, fa_center, fMain)
draw_set_color(c_white)
draw_text(guiw/2,guih/2 + 100, txt)