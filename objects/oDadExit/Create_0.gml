event_inherited();

walkSpd = 0.5
path = path_add();
target = oDoor

if instance_exists(target) {
	var px = target.x
	var py = target.y
	if mp_grid_path(grid, path, x, y, px, py, true) {
		path_start(path, walkSpd, path_action_stop, false)	
	}
}

if room == r9 and !gooseKilled {
	instance_destroy()	
}