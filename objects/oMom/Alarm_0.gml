/// @description start talking

if loop == 1 {
	function response() {
		function dadExit() {
			oMom.showTip = true
			with(oDadScene) {
				speed = 0.5
				direction = 0
			}
		}
		makeChoice(
			"what do you say to your parents?",
			"thank you parents! i'm excited!", dadExit,
			"whatever, this is too easy.", dadExit
		)
	}

	makeText(
		"mom: \nhello son! i am so proud of you for passing the monster hunter exam!",
		"mom: \nnow we can finally afford some furniture and some walls!",
		"dad: \nlet's go son! I am excited to finally go monster hunting with you",
		response
	)
} else if loop == 2 {
	function response2() {
		function dadExit() {
			with(oDadScene) {
				speed = 0.5
				direction = 0
			}
		}
		makeChoice(
			"what do you say to your parents?",
			"uhhh.. yeah mom.. i'm just excited..", dadExit,
			"sorry.. i just.. had a bad dream..", dadExit
		)
	}

	makeText(
		"mom: \n...son? did you hear what i was saying? is something wrong?",
		"dad: \nhah! don't worry about him honey, i bet he can't speak because of excitement!",
		"dad: \nthis is his first mission, afterall!",
		response2
	)
} else if loop == 3 {
	function response3() {
		function dadExit() {
			with(oDadScene) {
				speed = 0.5
				direction = 0
			}
		}
		
		function dadInsult() {
			function dadExit() {
				with(oDadScene) {
					speed = 0.5
					direction = 0
					}
			}
			makeText(
			"dad: \nhaha! don't worry son! I was also nervous on my first mission. i'm with you, nothing's gonna happen.",
			dadExit
			)	
		}
		
		makeChoice(
			"what do you say to your parents?",
			"nothing... let's go..", dadExit,
			"can we.. not go today, dad?", dadInsult
		)
	}

	makeText(
		"mom: \n...son? you seem.... out of this world.. what's going on?",
		"dad: \neverything all right son?",
		response3
	)
} else if loop == 4 {
	function response4() {
		function dadExit() {
			with(oDadScene) {
				speed = 0.5
				direction = 0
			}
		}
		
		function dadQuestion() {
			function dadExit() {
				with(oDadScene) {
					speed = 0.5
					direction = 0
				}
			}
		
			function sadness() {
				oGame.alarm[1] = 30
				with(oDead) {
					reason = deadReason.dadSadness
				}
			}
			makeChoice(
				"dad: son.. are you.. a coward?",
				"no.. okay.. let's go.", dadExit,
				"yes. im sorry. let's stay.", sadness
			)
		}
		
		makeChoice(
			"what do you say to your parents?",
			"nothing... let's go..", dadExit,
			"please. let's not go.", dadQuestion
		)
	}

	makeText(
		"mom: \n...son? why are you making that face?",
		response4
	)
} else if loop == 5 {
	function response5() {
		function dadExit() {
			pulseGlitch(0.1)
			with(oDadScene) {
				instance_destroy()
			}
		}
		
		function dadQuestion() {
			function dadExit() {
				pulseGlitch(0.2)
				with(oDadScene) {
					instance_destroy()
				}
			}
		
			function sadness() {
				oGame.alarm[1] = 30
				with(oDead) {
					reason = deadReason.dadSadness
				}
			}
			makeChoice(
				"dad: son.. are you.. a coward?",
				"no.. okay.. let's go.", dadExit,
				"yes. im sorry. let's stay.", sadness
			)
		}
		
		makeChoice(
			"what do you say to your parents?",
			"sigh.. it's not even worth it.", dadExit,
			"i beg you, let's not go.", dadQuestion
		)
	}

	makeText(
		"mom: \n...son..? who.. are you?",
		response5
	)
} else {
	function dadExit() {
		pulseGlitch(0.1)
		with(oDadScene) {
			instance_destroy()
		}
	}

	makeText(
		"mom: \n.......those....eyes....",
		dadExit
	)
}