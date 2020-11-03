/// @description show mystery text

function response() {
	
	function strength() {
		playerDmg += 1
		oDead.alarm[3] = 30
	}
	function hp() {
		playerMaxHp += 5
		oDead.alarm[3] = 30
	}
	function spd() {
		playerWalkSpd += 0.5
		playerCoolDown = max(5, playerCoolDown - 10)
		oDead.alarm[3] = 30
	}
	
	makeChoice(
		"reflect on your mistake.",
		"I need to be stronger.", strength,
		"I need to be tougher.", hp,
		"I need to be quicker.", spd
	)
}

if loop == 1 {
	makeText(
		"mysterious man: \nahh. yes. regret. desperation.",
		"mysterious man: \ndo you not wish you could go back in time? correct all your wrongs? perhaps save someone?",
		"mysterious man: \nworry not, child. i will give you another chance.",
		"mysterious man: \nhere is a piece of advice before i help you. think about your mistake.",
		response
	)
} else if loop == 2 {
		makeText(
		"mysterious man: \nahh. we meet again, child.",
		"mysterious man: \ndo not worry. i will help you once more. i have all the time in the world.",
		"mysterious man: \nliterally..",
		response
	)
} else if loop == 3 {
		makeText(
		"mysterious man: \noh! it's you again. becoming a regular customer, are we?",
		"mysterious man: \noh well. i don't mind. i was getting bored without any visitors, anyway.",
		response
	)
} else if loop == 4 {
		makeText(
		"mysterious man: \nah! another visit. i think you're starting to like it here, boy.",
		"mysterious man: \nwell.. since you're here. let me tell you a trivia.",
		"mysterious man: \ndid you know that every time you go back in time, reality branches into two realities?",
		"mysterious man: \nfascinating, right?",
		response
	)
} else if loop == 5 {
		makeText(
		"mysterious man: \nhehe. the look in your eyes is different this time.",
		"mysterious man: \neverything loses meaning with time, right?",
		"mysterious man: \nbut i guess you'll want to at least try again.",
		response
	)
} else {
		makeText(
		"mysterious man: \ni have a question for you.",
		"mysterious man: \nhow long have you been here? how many times have we had this exact conversation?",
		response
	)
}