globalvar testMode;
testMode = false

version = "v0.0.2"

depth = 2000
alarm[0] = 10 //transition
display_set_gui_size(960, 540)
application_surface_draw_enable(false)

globalvar glitchInt, guiw, guih, loop, playerHp, playerDeaths, dadDeaths, 
sadDeaths, dadHp, playerMaxHp, playerDmg, playerWalkSpd, playerCoolDown, gooseKilled;
guiw = display_get_gui_width()
guih = display_get_gui_height()
playerMaxHp = 5
playerHp = playerMaxHp
playerWalkSpd = 1
playerCoolDown = 40
playerDmg = 1
dadHp = 5
loop = 1
glitchInt = 0
playerDeaths = 0
dadDeaths = 0
sadDeaths = 0
gooseKilled = false

showDebug = false

system = part_system_create() 
part_system_depth(system,-1) 
partDust = part_type_create() 
emitter = part_emitter_create(system) 

part_type_sprite(partDust, sDust,true,1,false) 
part_type_blend(partDust, true) 
part_type_life(partDust, 40,50) 
part_type_direction(partDust, 0, 360, 0, 0) 
part_type_size(partDust,0.7,1.2,0,0) 
part_type_speed(partDust,1,2.5,-0.1,0) 

