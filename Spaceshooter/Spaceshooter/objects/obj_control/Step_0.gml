/// @description checando level

//subindo pontos
if(cur_exp >= exp_needed){
	global.lvl ++;
	exp_needed = floor(exp_needed * 1.5)
}

//check pontuação mais alta
if(cur_exp > global.maiorpontuacao){
	global.maiorpontuacao = cur_exp	
}

if(global.lvl >= nextBoss and !boss){
		instance_create_layer(room_width/2, -700, "Inimigos", obj_boss)
		instance_destroy(obj_inimigo01)
		instance_destroy(obj_inimigo02)
		boss = true
		//audio_stop_all()
		audio_sound_gain(audio, 0, 2000)
		alarm[0] = 0
}