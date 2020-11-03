/// @description check if zombie defeated

function gateOpen() {
	if instance_exists(oDoor) {
		oDoor.isOpen = true
		oDadScene.speed = 0.5
		oDadScene.direction = 0
	}
}

if !instance_exists(oZombie) {
	if r1timer > 240 {
		makeText(
			"dad: \nhah! well done son! that zombie did not stand a chance!",
			"dad: \nalright! let's go and finish your first mission!",
			gateOpen
		)
	} else {
		makeText(
			"dad: \n...what... on earth just happened.. you just decimated that zombie..",
			"dad: \nhuh.. i must be hallucinating.. never mind me, son. let's go.",
			gateOpen
		)
	}
} else {
	alarm[1] = 30	
}