/// @description checando level


if(cur_exp >= exp_needed){
	global.lvl ++;
	exp_needed = floor(exp_needed * 1.5)
}