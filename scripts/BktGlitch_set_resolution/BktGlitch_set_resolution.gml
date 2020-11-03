/// @description  BktGlitch_set_resolution(width, height)
/// @function  BktGlitch_set_resolution
/// @param width
/// @param height
function BktGlitch_set_resolution(argument0, argument1) {
	/*
	    Passes resolution of the region the shader is used on.
		If you're using the shader as a post-processing effect on the entire screen, you'll probably
		want to use BktGlitch_set_resolution_of_application_surface.
    
	    ONLY RUN WHILE THE SHADER IS ACTIVE!
	*/

	shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.resolution], abs(argument0), abs(argument1));


}
