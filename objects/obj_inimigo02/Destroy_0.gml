/// @description chamando a explosao
instance_create_layer(x,y, "Inimigos", obj_explosao)
obj_control.cur_exp += 5

var chance = random(100)

if(chance > 95){
	instance_create_layer(x,y, "Inimigos", obj_powerup)	
}