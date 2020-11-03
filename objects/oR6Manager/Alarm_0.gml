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
	audio_stop_sound(mscBeginning)
	audio_stop_sound(mscMid)
}
	
if !instance_exists(pEnemy) {
	makeText(
		"dad: \nwell son! i don't know how we managed to pull that off.",
		"dad: \nto be honest i think we should both be dead now.",
		"dad: \nit seems the gods are protecting us! haha! that's it for our mission!",
		"dad: \nwe cleared out all the monsters. Let's go back!",
		gateOpen
	)	
} else {
	alarm[0] = 30	
}