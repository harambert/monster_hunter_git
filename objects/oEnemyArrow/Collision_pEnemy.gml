other.target = owner


with(other) {
	instance_create_depth(x,y,depth-1,oHitEffect)
	hp --
	if hp <= 0 {
		with(oGame) {
			part_emitter_region(system,emitter,other.x,other.x,other.y,other.y, ps_shape_ellipse, ps_distr_linear) 
			part_emitter_burst(system,emitter,partDust,20) 	
		}
		if instance_exists(oPlayer) {
			if oPlayer.target == id {
				oPlayer.target = noone	
			}
		}
		instance_destroy()
	}
}

instance_destroy()