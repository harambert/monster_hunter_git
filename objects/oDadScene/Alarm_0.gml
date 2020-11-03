/// @description r1 dialog

function startFight() {
	oDadScene.alarm[1] = 30 //check if zombie defeated
	with(oZombieSpawn) {
		instance_create_depth(x,y,0,oZombie)
		instance_destroy()
	}
	oDadScene.r1timerStart = true
}

if loop == 1 {
	makeText(
		"dad: \noh! a zombie.. that's weird.. they don't usually wander this far.",
		"dad: \nbut it doesn't matter! this is your chance to prove yourself son!",
		"dad: \nremember what i taught you! stop walking to attack!",
		startFight
	)
} else if loop < 4{
	makeText(
		"dad: \ntell me the truth, son, have you been training a lot?",
		"dad: \nyou seem to be much stronger all of a sudden!",
		"dad: \nthat's my boy! now show me the results of your training!",
		startFight
	)
} else {
	pulseGlitch(0.2)
	if instance_exists(oDoor) {
		oDoor.isOpen = true
		instance_destroy(oDadScene)
	}
	if instance_exists(oZombieSpawn) {
		instance_destroy(oZombieSpawn)
	}
}