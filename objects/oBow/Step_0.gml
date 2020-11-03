if !instance_exists(owner) {
	instance_destroy()
} else {
	x = owner.x
	y = owner.y
	depth = owner.depth - 1
}

if !visible {
	sprite_index = sBowIdle	
}