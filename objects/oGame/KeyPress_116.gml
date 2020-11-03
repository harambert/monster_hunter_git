/// @description lv up

if !testMode exit

playerMaxHp += 5
playerHp = playerMaxHp
playerWalkSpd += 0.5
playerCoolDown = max(5, playerCoolDown - 10)
playerDmg += 1