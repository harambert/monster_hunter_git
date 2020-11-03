event_inherited()

if target != noone {
	if !instance_exists(target) {
		target = noone
		exit
	}
	var t = target
	if point_distance(x,y,t.x,t.y) <= range and
	!collision_line(x,y,t.x,t.y,oWall,true,false) {
		path_end()
		range = _range + 20
		path_speed = 0
		//SHOOTING CODES
		bow.visible = true
		bow.image_angle = point_direction(x,y,t.x,t.y)
		coolDown --
		if coolDown <= 0 {
			coolDown = _coolDown
			bow.sprite_index = sBowAtk
			bow.image_index = 0
		} 
	} else {
		range = _range
		bow.visible = false	
	}
	
	if t.x > x {
		image_xscale = 1	
	} else {
		image_xscale = -1	
	}
} else {
	range = _range
	bow.visible = false	
}

if path_speed > 0 {
	sprite_index = sDadRun	
} else {
	sprite_index = sDadIdle	
}
