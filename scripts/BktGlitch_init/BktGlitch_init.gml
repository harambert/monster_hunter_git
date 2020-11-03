/// @description  BktGlitch_init()
/// @function  BktGlitch_init
function BktGlitch_init() {
	/*
	    Initialises the shader.
	    This is run automatically the first time BktGlitch_activate is used.
	    Please note that this may make your game freeze up for a few frames.
	    If you wish to avoid that, you can run this function at the start of the game.
	*/

	// This really just makes the code easier to read.
#macro BktGlitch_deactivate shader_reset
#macro NOISE_TEXTURE_SIZE 256

	enum bktGlitch {
	    lineSpeed,
	    lineShift,
	    lineResolution,
	    lineVertShift,
	    lineDrift,
	    jumbleSpeed,
	    jumbleShift,
	    jumbleResolution,
	    jumbleness,
	    dispersion,
	    channelShift,
	    noiseLevel, 
	    shakiness,
	    rngSeed,
	    intensity,
	    time,
	    resolution,
		noiseTexture,
		randomValues
	};

	// If we're already initialised, don't do anything (duh).
	if (variable_global_exists("bktGlitchNoise")) {
		return 0;
	}

	if (! shader_is_compiled(shdBktGlitch)) {
	    show_debug_message("bktGlitch failed to compile, the effect will not be visible.");
	    return 0;
	}

	// Hook up the uniforms
	global.bktGlitchUniform[bktGlitch.lineSpeed] = shader_get_uniform(shdBktGlitch, "lineSpeed");
	global.bktGlitchUniform[bktGlitch.lineDrift] = shader_get_uniform(shdBktGlitch, "lineDrift");
	global.bktGlitchUniform[bktGlitch.lineResolution] = shader_get_uniform(shdBktGlitch, "lineResolution");
	global.bktGlitchUniform[bktGlitch.lineVertShift] = shader_get_uniform(shdBktGlitch, "lineVertShift");
	global.bktGlitchUniform[bktGlitch.lineShift] = shader_get_uniform(shdBktGlitch, "lineShift");   
	global.bktGlitchUniform[bktGlitch.jumbleness] = shader_get_uniform(shdBktGlitch, "jumbleness"); 
	global.bktGlitchUniform[bktGlitch.jumbleResolution] = shader_get_uniform(shdBktGlitch, "jumbleResolution");   
	global.bktGlitchUniform[bktGlitch.jumbleShift] = shader_get_uniform(shdBktGlitch, "jumbleShift");  
	global.bktGlitchUniform[bktGlitch.jumbleSpeed] = shader_get_uniform(shdBktGlitch, "jumbleSpeed");    
	global.bktGlitchUniform[bktGlitch.dispersion] = shader_get_uniform(shdBktGlitch, "dispersion");
	global.bktGlitchUniform[bktGlitch.channelShift] = shader_get_uniform(shdBktGlitch, "channelShift"); 
	global.bktGlitchUniform[bktGlitch.noiseLevel] = shader_get_uniform(shdBktGlitch, "noiseLevel");   
	global.bktGlitchUniform[bktGlitch.shakiness] = shader_get_uniform(shdBktGlitch, "shakiness");
	global.bktGlitchUniform[bktGlitch.rngSeed] = shader_get_uniform(shdBktGlitch, "rngSeed");
	global.bktGlitchUniform[bktGlitch.intensity] = shader_get_uniform(shdBktGlitch, "intensity"); 
	global.bktGlitchUniform[bktGlitch.time] = shader_get_uniform(shdBktGlitch, "time");   
	global.bktGlitchUniform[bktGlitch.resolution] = shader_get_uniform(shdBktGlitch, "resolution");
	global.bktGlitchUniform[bktGlitch.noiseTexture] = shader_get_sampler_index(shdBktGlitch, "noiseTexture");
	global.bktGlitchUniform[bktGlitch.randomValues] = shader_get_uniform(shdBktGlitch, "randomValues");

	// Generate the noise texture.
	// Store the current seed to restore it later, so we don't accidentally mess with the game RNG.
	var _originalSeed = random_get_seed();

	var _buffer = buffer_create(NOISE_TEXTURE_SIZE * NOISE_TEXTURE_SIZE * 4, buffer_grow, 1);
	while (buffer_tell(_buffer) < buffer_get_size(_buffer)) {
		// Can't use irandom to generate 64-bit ints directly due to precision issues.
		buffer_write(_buffer, buffer_u64, irandom(0xffffffff) | (irandom(0xffffffff) << 32));	
	}
	var _surface = surface_create(NOISE_TEXTURE_SIZE, NOISE_TEXTURE_SIZE);
	buffer_set_surface(_buffer, _surface, 0, 0, 0);
	global.bktGlitchNoise = sprite_get_texture(sprite_create_from_surface(_surface, 0, 0, NOISE_TEXTURE_SIZE, NOISE_TEXTURE_SIZE, false, false, 0, 0), 0);
	surface_free(_surface);
	buffer_delete(_buffer);

	random_set_seed(_originalSeed);

	// Set up the sampler
	gpu_set_tex_repeat_ext(global.bktGlitchUniform[bktGlitch.noiseTexture], true);
	gpu_set_tex_filter_ext(global.bktGlitchUniform[bktGlitch.noiseTexture], false);


}
