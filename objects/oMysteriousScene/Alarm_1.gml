/// @description text

function reveal() {
	pulseGlitch(0.2)
	oMysteriousScene.sprite_index = sDadIdle
	oMysteriousScene.image_xscale = 1
	oMysteriousScene.alarm[2] = 240 //end the game
}

makeText(
	"tell me, mysterious man. is there any way i can save both of them? or are you just toying with me?",
	"mysterious man: \nheh. sorry, jeff. that's impossible. i can control time, but not life. someone has to die today.",
	"then why did you go through all these trouble to help me?",
	"mysterious man: \nwell.. someone has to die today.. and it's not gonna be me, son.",
	reveal
)