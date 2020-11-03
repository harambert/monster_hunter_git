/// @description check why r3 taking so long

if instance_exists(oSkeletonScene) {
	alarm[3] = 600
	r3txt[0] = "dad: \nwhat's the matter son? why aren't you saving the goose?"
	r3txt[1] = "dad: \nson if you don't save that goose im going to be disappointed."
	r3txt[2] = "dad: \nsave the goose now. that's an order."
	makeText(
		r3txt[r3txtNum]
	)
	if r3txtNum < 2 {
		r3txtNum ++	
	}
}