/// @description tip

if instance_exists(oTextBox) or !showTip exit

drawSetText(fa_left, fa_bottom, fMain)
draw_set_alpha(.5)
draw_text(10,guih-10, "tip: 'wasd' or 'arrow keys' to move")
draw_set_alpha(1)