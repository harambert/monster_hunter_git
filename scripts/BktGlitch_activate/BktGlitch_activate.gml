/// @description  BktGlitch_activate()
/// @function  BktGlitch_activate
/// @param [resolution_x]
/// @param [resolution_y]
function BktGlitch_activate() {
	/*
	    Activates the shader and sets required uniforms.

	    By default, the shader adapts to the resolution of the application surface.
	    You can override this by providing your own values via the arguments of this function.
	*/

	// Init the shader if we have to.
	BktGlitch_init();
	shader_set(shdBktGlitch);

	// Pass the noise texture.
	texture_set_stage(global.bktGlitchUniform[bktGlitch.noiseTexture], global.bktGlitchNoise);

	// Pass the random values.
	shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.randomValues], random(1.0), random(1.0), random(1.0));

	// Setting the resolution
	if (argument_count != 2) {
		BktGlitch_set_resolution_of_application_surface();
	} else {
	    BktGlitch_set_resolution(argument[0], argument[1]);
	}

	// Passes global timer to shader, setting this to zero results in everything being static.
	BktGlitch_set_time(current_time * 0.06);


}
