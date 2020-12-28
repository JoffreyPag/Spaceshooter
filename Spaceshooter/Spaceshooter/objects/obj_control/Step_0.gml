/// @description checando level


if(cur_exp >= exp_needed){
	global.lvl ++;
	exp_needed = floor(exp_needed * 1.5)
}

if(global.lvl >= nextBoss and !boss){
		instance_create_layer(room_width/2, -700, "Inimigos", obj_boss)
		instance_destroy(obj_inimigo01)
		instance_destroy(obj_inimigo02)
		boss = true
		alarm[0] = 0
}