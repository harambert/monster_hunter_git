depth = 0

txt[0] = ""
scr = noone
currTxt = 0
currLetter = 0

choiceMode = false
currChoice = 0
choiceTopTxt = ""
choiceTxt[0] = ""
choiceScript[0] = noone

xx = guiw/2
yy = 100
width = 600
xbuff = 60
height = 150

if instance_exists(oEnemyArrow) {
	instance_destroy(oEnemyArrow)	
}