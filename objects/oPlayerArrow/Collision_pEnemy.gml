var name = ""

if instance_exists(owner) {
	name = object_get_name(owner.object_index)
}

var dmg = 1
if name == "oPlayer" {
	dmg = playerDmg
	other.target = oPlayer
}


with(other) {
	flash = 10
	instance_create_depth(x,y,depth-10,oHitEffect)
	hp -= dmg
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

playSFX(sndHit, true)

instance_destroy()