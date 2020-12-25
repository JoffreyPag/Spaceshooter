/// @description destroi T U T O
instance_destroy();
instance_destroy(other)

obj_control.cur_exp += 5

var chance = random(100)

if(chance > 75){
	instance_create_layer(x,y, "Inimigos", obj_powerup)	
}