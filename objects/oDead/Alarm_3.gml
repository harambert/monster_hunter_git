/// @description next text

function glitchOpen() {
	playSFX(sndWarp,false)
	oDead.glitchMode = "open"
	oDead.alarm[4] = 180
	loop ++
}

if loop < 3 {
	makeText(
		"very well. pray we don't meet again.",
		glitchOpen
	)
} else {
	makeText(
		"good luck. i have a feeling you'll return soon.",
		glitchOpen
	)
}