/// @description tip

if !instance_exists(pEnemy) or loop > 2 exit

draw_set_color(c_white)
drawSetText(fa_right, fa_top, fMain)
draw_set_alpha(.5)
draw_text(guiw-20,20, "tip: shoot enemies to take agro off your dad")
draw_set_alpha(1)