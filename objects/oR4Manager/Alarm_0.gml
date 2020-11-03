/// @description check for enemy

function response() {
	function gateOpen() {
		if instance_exists(oDoor) {
			oDoor.isOpen = true
			if instance_exists(oDad) {
				with(oDad) {
					instance_create_depth(x,y,0,oDadExit)
					instance_destroy()
				}
			}
		}
	}
	function dadInsult() {
		function gateOpen() {
			if instance_exists(oDoor) {
				oDoor.isOpen = true
				if instance_exists(oDad) {
					with(oDad) {
						instance_create_depth(x,y,0,oDadExit)
						instance_destroy()
					}
				}
			}
		}
		makeText(
		"dad: \nhaha! good joke, son! let's go.",
		gateOpen
	)	
	}
	
	function dadQuestion() {
		function gateOpen() {
			if instance_exists(oDoor) {
				oDoor.isOpen = true
				if instance_exists(oDad) {
					with(oDad) {
						instance_create_depth(x,y,0,oDadExit)
						instance_destroy()
					}
				}
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
			"lol no i was kidding!", gateOpen,
			"yes. im sorry. let's go back.", sadness
		)
	}
	
	if loop == 1 {
		makeChoice(
			"how do you respond to your dad?",
			"tsk. please. this is too easy.", gateOpen,
			"yeah dad.. let's go back", dadInsult
		)
	} else {
		makeChoice(
			"how do you respond to your dad?",
			"no dad, let's keep going.", gateOpen,
			"yes, please, let's go back.", dadQuestion
		)
	}
}

if !instance_exists(pEnemy) {
	if loop < 4 {
		makeText(
			"dad: \nwell.. this is getting a bit tougher, huh? just tell me if it gets too hard for you",
			response
		)	
	} else {
		if instance_exists(oDoor) {
			pulseGlitch(0.3)
			oDoor.isOpen = true
			if instance_exists(oDad) {
				with(oDad) {
					instance_destroy()
				}
			}
		}
	}
} else {
	alarm[0] = 30	
}