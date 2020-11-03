///@desc look for target

alarm[0] = 60

target = instance_nearest(x,y,pEnemy)

if target != noone {
	var tx = target.x
	var ty = target.y
	if mp_grid_path(grid, path, x, y, tx, ty, true) {
		path_start(path, walkSpd, path_action_stop, false)	
	}
}