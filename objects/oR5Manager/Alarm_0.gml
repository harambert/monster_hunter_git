/// @description check for enemy

function gateOpen() {
	if instance_exists(oDoor) {
		oDoor.isOpen = true
		if instance_exists(oDad) {
			with(oDad) {
				instance_create_depth(x,y,0,oDadExit)
				instance_destroy()
			}
		}
	}
}

function glitchOpen() {
	if instance_exists(oDoor) {
		oDoor.isOpen = true
		pulseGlitch(0.4)
		if instance_exists(oDad) {
			with(oDad) {
				instance_destroy()
			}
		}
	}
}
	
if !instance_exists(pEnemy) {
	if loop < 3 {
		makeText(
			"dad: \nall right.. hehe.. it seems we are getting much more action than usual..",
			gateOpen
		)	
	} else {
		makeText(
			"dad: \nson, are you okay? i can feel a strong killing aura from you",
			glitchOpen
		)	
	}
} else {
	alarm[0] = 30	
}