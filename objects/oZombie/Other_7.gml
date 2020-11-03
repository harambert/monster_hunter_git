if sprite_index == sZombieAtk {
	sprite_index = sZombieRun
	if instance_exists(target) {
		var t = target
		var dir = point_direction(x,y,t.x,t.y)
		var atk = instance_create_depth(x,y,depth-50, oZombieAtkEffect)
		atk.image_angle = dir
		with(t) {
			event_user(0)
		}
	}
}