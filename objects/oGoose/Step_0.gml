event_inherited();

if instance_exists(oDoor) and oDoor.isOpen
and !instance_exists(oDadExit) {
	instance_create_depth(x,y,depth,oGooseKillable)
	instance_destroy()
}