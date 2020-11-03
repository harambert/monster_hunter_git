/// @description damage

instance_create_depth(x,y,depth-10,oHitEffectOrange)
dadHp --
flash = 10
if dadHp <= 0 {
	with(oGame) {
		alarm[1] = 30
		oDead.reason = deadReason.dadDead
		part_emitter_region(system,emitter,other.x,other.x,other.y,other.y, ps_shape_ellipse, ps_distr_linear) 
		part_emitter_burst(system,emitter,partDust,20)
	}
	instance_destroy()
}

playSFX(sndHit,true)