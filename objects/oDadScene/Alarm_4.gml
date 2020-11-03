/// @description check if skeleton defeated

function gateOpen() {
	if instance_exists(oDoor) {
		oDoor.isOpen = true
		with(oDadScene) {
			instance_create_depth(x,y,depth,oDadExit)
			instance_destroy()
		}
	}
}

if !instance_exists(oSkeletonScene) {
	makeText(
		"dad: \nwell done son! i'm so proud of you!",
		gateOpen
	)	
} else {
	alarm[4] = 30	
}