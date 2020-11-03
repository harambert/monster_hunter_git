function getControls() {
	
	left = false 
	right = false 
	up = false 
	down = false 
	confirm = false 
	
	if keyboard_check(ord("A")) or keyboard_check(vk_left) left = true 
	if keyboard_check(ord("D")) or keyboard_check(vk_right) right = true 
	if keyboard_check(ord("W")) or keyboard_check(vk_up) up = true 
	if keyboard_check(ord("S")) or keyboard_check(vk_down) down = true 
	if keyboard_check_pressed(ord("J")) {
		confirm = true	
	}
}

function moveAndCollide() {
	
	var _walkSpd = walkSpd
	if hsp!= 0 and vsp != 0 {
		_walkSpd = walkSpd * 0.785	
	}
	
	if place_meeting(x + hsp*_walkSpd, y, oWall)
	{
		while !place_meeting(x + hsp, y, oWall) {
			x += hsp } 
		hsp = 0 
	}
	x += hsp * _walkSpd 
	x = clamp(x, 0 + 7, room_width - 7)
	
	if place_meeting(x, y+ vsp*_walkSpd, oWall)
	{
		while !place_meeting(x, y + vsp, oWall) {
			y += vsp } 
		vsp = 0 
	}
	y += vsp * _walkSpd
	y = clamp(y, 0 + 7, room_height - 7) 
}

function stateNormal() {

	if instance_exists(oTextBox) {
		sprite_index = sPlayerIdle
		exit
	}
	
	hsp = right - left 
	vsp = down - up
	
	//ANIMATION
	if vsp != 0 or hsp != 0 {
		sprite_index = sPlayerRun
		if hsp > 0 {
			image_xscale = 1	
		} else if hsp < 0 {
			image_xscale = -1	
		}
		bow.visible = false
		coolDown = _coolDown / 2
	} else {
		sprite_index = sPlayerIdle
		if target != noone {
			
			//SHOOTING CODES
			
			var t = target
			if point_distance(x,y,t.x,t.y) <= range {
				if t.x > x {
					image_xscale = 1	
				} else {
					image_xscale = -1	
				}
				bow.visible = true
				bow.image_angle = point_direction(x,y,t.x,t.y)
				coolDown --
				if coolDown <= 0 {
					coolDown = _coolDown
					bow.sprite_index = sBowAtk
					bow.image_index = 0
				}
				
			/////////////////////
				
			} else {
				bow.visible = false
			}
		} else {
			bow.visible = false
		}
	}
	
	moveAndCollide()
}
