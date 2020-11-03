/// @description r3 dialog

function startFight() {
	oDadScene.alarm[3] = 1000 //check why taking so long
	oDadScene.alarm[4] = 30 //check for skeleton 
}

makeText(
	"dad: \noh no! that goose is getting fricked by that skeleton archer!",
	"dad: \nyou gotta save it son! it is your duty as a monster hunter to save the animals!",
	startFight
)