/// @description check for enemy

function gateOpen() {
	if instance_exists(oDoor) {
		oDoor.isOpen = true
		pulseGlitch(0.3)
		if instance_exists(oDad) {
			with(oDad) {
				instance_destroy()
			}
		}
	}
	audio_play_sound(mscEnd, 0,1)
}
	
if !instance_exists(pEnemy) {
	makeText(
		"dad: \nwait..what? i thought we cleared out this are before..",
		"dad: \ndid we miss some monsters?",
		gateOpen
	)	
} else {
	alarm[0] = 30	
}