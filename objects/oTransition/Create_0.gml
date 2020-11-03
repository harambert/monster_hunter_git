// size variables and mode setup

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h / 2

enum TRANS_MODE	 // just like variables
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}

mode = TRANS_MODE.INTRO;
percent = 1;
target = room  //room you are transitioning to

depth = -100;