/// @description  BktGlitch_set_rng_seed(seed)
/// @function  BktGlitch_set_rng_seed
/// @param seed
function BktGlitch_set_rng_seed(argument0) {
	/*
	    Changes seed used for random calculations - adds variation to all effects.
	    Can be for example used for single "hits". 
	    Range based around 0-1, no upper limit.
    
	    ONLY RUN WHILE THE SHADER IS ACTIVE!
	*/

	shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.rngSeed], max(0.000001, abs(argument0)));


}
