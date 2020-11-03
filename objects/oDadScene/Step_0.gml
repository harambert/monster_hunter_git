event_inherited();

if speed > 0 {
	sprite_index = sDadRun
	if direction == 0 {
		image_xscale = 1	
	} else {
		image_xscale = -1
	}
} else {
	sprite_index = sDadIdle
}

if r1timerStart {
	r1timer ++	
}