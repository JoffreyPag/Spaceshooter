/// @description chamando a explosao
instance_create_layer(x,y, "Inimigos", obj_explosao)
obj_control.cur_exp+=2

var chance = random(100)

if(chance > 99){
	instance_create_layer(x,y, "Inimigos", obj_powerup)	
}