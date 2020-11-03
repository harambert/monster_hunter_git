///@desc look for target

alarm[0] = 10
if !instance_exists(pEnemy) or bow.sprite_index == sBowAtk exit

target = noone

var i = 0
repeat(instance_number(pEnemy)) {
	enemy[i] = instance_find(pEnemy, i)
	i++
}

var i = 0
var tDist = 500
repeat(array_length(enemy)) {
	if instance_exists(enemy[i]) {
		var e = enemy[i]
		var currDist = point_distance(x,y,e.x,e.y)
		if currDist < tDist and
		!collision_line(x,y,e.x,e.y,oWall,true,false) {
			tDist = currDist
			target = enemy[i]
		}
	}
	i++
}