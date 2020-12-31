/// @description coliision with extra life
instance_destroy(other)

if(vida < 3) {
	vida++
}else if(qtd_escudo < 3){
	qtd_escudo++
}else{
	obj_control.cur_exp+=50	
}