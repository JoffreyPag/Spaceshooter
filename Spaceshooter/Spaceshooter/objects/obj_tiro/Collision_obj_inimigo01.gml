/// @description destroi T U T O
instance_destroy();
instance_destroy(other)
obj_control.cur_exp+=2

var chance = random(100)

if(chance > 90){
	instance_create_layer(x,y, "Inimigos", obj_powerup)	
}