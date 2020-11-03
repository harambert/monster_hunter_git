event_inherited()
collide = instance_place(x,y,pEnemy)

target = noone
	
var pDist = 500
var dDist = 500
if instance_exists(oPlayer) {
	var p = oPlayer
	pDist = point_distance(x,y,p.x,p.y)
	target = oPlayer
}

if instance_exists(oDad) {
	var p = oDad
	dDist = point_distance(x,y,p.x,p.y)
	if dDist < pDist {
		target = oDad	
	}
}

bow = instance_create_depth(x,y,depth - 1, oBow)
bow.owner = id
bow.projectile = oEnemyArrow
bow.image_speed = 0.5

hp = 5

walkSpd = 0.25
range = 100
_coolDown = 120
coolDown = _coolDown

path = path_add()
alarm[0] = 30 //commence path to player

animStop = sSkelIdle
animWalk = sSkelRun