if gooseKilled {
	if instance_exists(oDoor) {
		oDoor.isOpen = true
	}
	instance_destroy()
} else {
	oDead.reason = deadReason.goose
	oGame.alarm[1] = 120 //go to rdead
}