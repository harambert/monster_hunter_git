/// @description  BktGlitch_set_channel_shift(shift)
/// @function  BktGlitch_set_channel_shift
/// @param shift
function BktGlitch_set_channel_shift(argument0) {
	/*
	    Sets level of horizontal RGB channel shift.
	    Range based around 0-1, no upper limit.
    
	    ONLY RUN WHILE THE SHADER IS ACTIVE!
	*/

	shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.channelShift], abs(argument0));


}
