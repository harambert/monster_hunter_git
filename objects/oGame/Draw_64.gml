BktGlitch_activate()
BktGlitch_config(0.010761, 0.263047, 1.748558, 0.123185, 0.880648, 0.070896, 12.667508, 0.900523, 0.347109, 0.739507, 0.013378, 0.205075, 7.894971, glitchInt, 0.025180);
draw_surface_stretched(application_surface,0,0,guiw,guih)
BktGlitch_deactivate();

draw_set_color(c_white)
drawSetText(fa_left, fa_top, fMain)

if room != rSplash and room != rHouse and room != rDead and room != rHouseDead and 
room != rEnd and room!= rMenu and !instance_exists(oTextBox) {
	var xx = 40
	var yy = guih - 40
	var col = c_white
	draw_set_halign(fa_left)
	if playerHp < 4 col = c_red
	draw_sprite_ext(sHealth,0,xx, yy,5,5,0,col,1)
	draw_text(xx + 40,yy, "hp:" + string(playerHp))
	col = c_white
	if dadHp < 4 col = c_red
	draw_sprite_ext(sHealth,1,xx + 160, yy,5,5,0,col,1)
	draw_text(xx + 200,yy, "hp:" + string(dadHp))
	
	if showDebug {
		if loop != 1 {
			draw_text(20,20,"loop: "+ string(loop))
		}
		draw_text(20,40,"strength: "+ string(playerDmg))
		draw_text(20,60,"max hp: "+ string(playerMaxHp))
		draw_text(20,80,"speed: "+ string(playerWalkSpd))
		draw_text(20,100,"cooldown: "+ string(playerCoolDown))
		draw_text(20,120,version)
	} else {
		draw_text(20,20,"stats: f4")
	}
}

if room == rEnd {
	draw_set_color(c_white)
	drawSetText(fa_center, fa_center, fMain)
	draw_text(guiw/2, guih/2, "game by\nharambert (aljond)\n\n\nthe end...?")
}

if room == rMenu {
	draw_set_color(c_white)
	drawSetText(fa_center, fa_center, fMain)
	draw_text(guiw/2, guih/2, "''a monster hunter story''\n\npress 'e' to play")
}