event_inherited()

bow = instance_create_depth(x,y,depth - 1, oBow)
bow.owner = id
bow.projectile = oPlayerArrow

hsp = 0
vsp = 0
walkSpd = playerWalkSpd

range = 100
_coolDown = playerCoolDown
coolDown = _coolDown

if playerCoolDown < 20 {
	bow.image_speed = 5
}

target = noone
alarm[0] = 10 //look for target