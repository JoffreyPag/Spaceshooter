/// @description Iniciando o controlador
window_set_cursor(cr_none)
global.lvl = 1
cur_exp = 0
exp_needed = 10
boss = false
nextBoss = 10
audio = pointer_null
inimigosderrotados = 0
alarm[0] = room_speed * 2

function bossDead(){
	nextBoss += 10
	boss = false
	alarm[0] = room_speed*2
	inimigosderrotados++
	runWorldSound()
}

function runWorldSound(){
	audio = audio_play_sound(snd_Darkling,1,true)
}