/// @description Iniciando o controlador
global.lvl = 1
cur_exp = 0
exp_needed = 10
boss = false
nextBoss = 10
alarm[0] = room_speed * 2

function bossDead(){
	nextBoss += 10
	boss = false
	alarm[0] = room_speed*2
}