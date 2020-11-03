with(other) {
	instance_create_depth(x,y,depth-10,oHitEffect)
	flash = 10
}

playSFX(sndHit, true)

instance_destroy()