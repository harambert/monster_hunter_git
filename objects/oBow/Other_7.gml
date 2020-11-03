if sprite_index == sBowAtk and visible {
	sprite_index = sBowIdle
	var len = 6
	var tipx = lengthdir_x(len, image_angle)
	var tipy = lengthdir_y(len, image_angle)
	var proj = instance_create_depth(x + tipx, y + tipy, depth -1, projectile)
	proj.direction = image_angle
	proj.image_angle = image_angle
	proj.owner = owner
}