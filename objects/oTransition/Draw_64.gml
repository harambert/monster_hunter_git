if (mode != TRANS_MODE.OFF)
{
	draw_set_color(c_black);
	draw_rectangle(0,-1,w,percent*h_half,false)
	draw_rectangle(0,h,w,h-(percent*h_half),false);
}
