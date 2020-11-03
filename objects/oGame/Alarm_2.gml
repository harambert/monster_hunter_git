/// @description music 

if loop == 1 and !audio_is_playing(mscBeginning) {
	audio_play_sound(mscBeginning,0,1)
	alarm[2] = 60
} else if loop > 1 {
	audio_play_sound(mscMid,0,1)	
}