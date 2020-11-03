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
}
	
if !instance_exists(pEnemy) {
	makeText(
		"dad: \nwhat.. more monsters? what's going on.. oh no..",
		"dad: \nplease... no...",
		gateOpen
	)	
} else {
	alarm[0] = 30	
}