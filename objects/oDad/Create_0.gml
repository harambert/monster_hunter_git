event_inherited()

bow = instance_create_depth(x,y,depth - 1, oBow)
bow.owner = id
bow.projectile = oPlayerArrow

hsp = 0
vsp = 0
walkSpd = 0.5

_range = 100
range = _range
_coolDown = 90
coolDown = _coolDown

path = path_add()
target = noone
alarm[0] = 60 //look for target