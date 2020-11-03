/// @description  BktGlitch_set_noise_level(noise level)
/// @function  BktGlitch_set_noise_level
/// @param noise level
function BktGlitch_set_noise_level(argument0) {
	/*
	    Sets level of noise.
	    Range based around 0-1, no upper limit.
    
	    ONLY RUN WHILE THE SHADER IS ACTIVE!
	*/

	shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.noiseLevel], abs(argument0));


}
