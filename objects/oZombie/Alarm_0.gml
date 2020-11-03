alarm[0] = 30

if instance_exists(target) and collide == noone and sprite_index != animStop {
	var px = target.x
	var py = target.y
	if mp_grid_path(grid, path, x, y, px, py, true) {
		path_start(path, walkSpd, path_action_stop, false)	
	}
}

if !instance_exists(collide) {
	collide = noone	
}

if collide != noone {
	var dir = choose("ver","hor")
	var tx = 0
	var ty = 0
	if dir == "ver" {
		if collide.y > y {
			ty = -16	
		} else {
			ty = 16	
		}
	} else {
		if collide.x > x {
			tx = -16	
		} else {
			tx = 16	
		}	
	}
	if mp_grid_path(grid, path, x, y, x + tx, y + ty, true) {
		path_start(path, walkSpd, path_action_stop, false)	
	}
}