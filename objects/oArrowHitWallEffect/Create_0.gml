alarm[0] = 60 //destroy

system = part_system_create() 
part_system_depth(system,-1) 
partDust = part_type_create() 
emitter = part_emitter_create(system) 

part_type_sprite(partDust, sDust,true,1,false) 
part_type_blend(partDust, true) 
part_type_life(partDust, 20,25) 
part_type_direction(partDust, 0, 360, 0, 0) 
part_type_size(partDust,0.3,0.5,0,0) 
part_type_speed(partDust,0.2,0.5,-0.05,0) 

part_emitter_region(system,emitter,x,x,y,y, ps_shape_ellipse, ps_distr_linear) 
part_emitter_burst(system,emitter,partDust,4) 