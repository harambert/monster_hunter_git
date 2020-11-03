event_perform_object(pEntity,ev_create,0)

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

hp = 6

walkSpd = 0.25
range = 20
_coolDown = 40
coolDown = _coolDown

path = path_add()
alarm[0] = 30 //commence path to player

animStop = sZombieAtk
animWalk = sZombieRun