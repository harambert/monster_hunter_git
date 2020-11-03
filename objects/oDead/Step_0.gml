switch(reason) {
	case deadReason.playerDead:
		spr = sPlayerDead
		txt = "you died"
		break
	case deadReason.dadDead:
		spr = sDadDead
		txt = "your dad died"
	break
	case deadReason.dadSadness:
		spr = sDadSadness
		txt = "your dad died of sadness because\nyou admitted that you are a coward"
	break
	case deadReason.goose:
		spr = sGooseBack
		txt = "your dad was killed by the goose"
	break
}

if glitchMode == "open" {
	glitchInt = min(1, glitchInt + 0.005)
	txt = "loop " + string(loop)
} else if glitchInt > 0 {
	glitchInt -= 0.005
}