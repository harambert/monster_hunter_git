/// @description check for zombies

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
		pulseGlitch(0.1)
		if instance_exists(oDad) {
			with(oDad) {
				instance_destroy()
			}
		}
	}
}




if !instance_exists(oZombie) {
	if loop == 1 {
		makeText(
			"dad: \nwhew! that was crazy! three zombies in a row!",
			"dad: \nall in a day's work, i guess. let's go!",
			gateOpen
		)	
	} else {
		makeText(
			"dad: \nhmm.. something seems... different about you, son..",
			"dad: \nare you okay?",
			glitchOpen
		)		
	}
} else {
	alarm[0] = 30	
}