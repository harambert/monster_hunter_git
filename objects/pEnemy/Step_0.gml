event_inherited()

if instance_exists(target) {
	if point_distance(x,y,target.x,target.y) <= range and
	!collision_line(x,y,target.x,target.y,oWall,true,false) and
	collide == noone {
		path_end()
		path_speed = 0
		//SHOOTING CODES
		var t = target
		bow.visible = true
		bow.image_angle = point_direction(x,y,t.x,t.y)
		coolDown --
		if coolDown <= 0 {
			coolDown = _coolDown
			bow.sprite_index = sBowAtk
			bow.image_index = 0
		} 
	} else {
		bow.visible = false
	}
	
	if target.x > x {
		image_xscale = 1	
	} else {
		image_xscale = -1	
	}
}

if path_speed > 0 {
	sprite_index = animWalk	
} else {
	sprite_index = animStop	
}

collide = instance_place(x,y,pEnemy)