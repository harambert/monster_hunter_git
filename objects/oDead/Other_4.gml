if room == rDead {
	alarm[0] = 60 // start showing txt
	audio_stop_all()
	playSFX(sndDead,false)
}