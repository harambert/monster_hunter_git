event_perform_object(pEntity,ev_step,0)

if instance_exists(target) {
	if point_distance(x,y,target.x,target.y) <= range and
	collide == noone {
		path_end()
		path_speed = 0
		//SHOOTING CODES
		coolDown --
		if coolDown <= 0 {
			coolDown = _coolDown
			sprite_index = sZombieAtk
			image_index = 0
		} 
	}
	
	if target.x > x {
		image_xscale = 1	
	} else {
		image_xscale = -1	
	}
	
	if sprite_index = animWalk and path_speed == 0 {
		image_speed = 0
		image_index = 1
	} else {
		image_speed = 1	
	}
	
}

collide = instance_place(x,y,pEnemy)