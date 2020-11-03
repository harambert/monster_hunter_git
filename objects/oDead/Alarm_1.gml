/// @description show txt

function showMystery() {
	oDead.transMode = "open"
	oDead.alarm[2] = 120 //show mystery txt
}

switch(reason) {
	case deadReason.playerDead:
		playerDeaths += 1
		if playerDeaths == 1 {
			makeText(
				"no... i can't feel anything... i'm scared..",
				"i was too weak.. if only i was stronger..",
				"if only i knew what to do..",
				showMystery
			)
		} else if playerDeaths < 4 {
			makeText(
				"not again. i am still not strong enough..",
				"i want to go back..",
				showMystery
			)	
		} else {
			makeText(
				"this seems pointless.. who am i trying to save anyway?",
				"is this even my world? is any of this real?",
				showMystery
			)
		}
		break
	case deadReason.dadDead:
		dadDeaths += 1
		if dadDeaths == 1 {
			makeText(
				"no... dad.. this can't be.. he died because of me..",
				"i was too weak.. if only i was stronger..",
				"if only i knew what to do..",
				showMystery
			)
		} else if dadDeaths < 4 {
			makeText(
				"this can't be happening.. nothing seems to be working..",
				"my dad always dies no matter what i do..",
				showMystery
			)
		} else {
			makeText(
				"this is pointless.. i don't think i can do anything to save him.",
				"is he even my real dad? i've seen him die so many times. is any of this real?",
				showMystery
			)
		}
	break
	case deadReason.dadSadness:
		sadDeaths += 1
		if sadDeaths == 1 {
			makeText(
				"what.. is this a cruel joke?!",
				"how was i supposed to know that was gonna kill him?!",
				"please... I need another chance",
				showMystery
			)
		} else if sadDeaths < 4 {
			makeText(
				"no! not again! why do i keep making mistakes!",
				"come on magic man! gimme another chance!",
				showMystery
			)
		} else {
			makeText(
				"haha! he's dead again. because of me.",
				"this is getting ridiculous.",
				showMystery
			)
		}
	break
	case deadReason.goose:
		makeText(
			"seriously???",
			"the fricking goose?!",
			showMystery
		)
	break
}