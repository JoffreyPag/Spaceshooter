/// @description destroi T U T O
instance_destroy();
instance_destroy(other)
obj_control.cur_exp+=(2*(global.lvl*.5))
obj_control.inimigosderrotados++
var chance = random(100)

if(chance > 90){
	instance_create_layer(x,y, "Inimigos", obj_powerup)	
}else if(chance > 85){
	instance_create_layer(x,y, "Inimigos", obj_life)	
}