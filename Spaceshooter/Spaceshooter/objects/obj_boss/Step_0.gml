/// @description Insert description here
// You can write your code in this editor

delay++;
contador++

if(contador >= room_speed*6){
	estado = irandom(2);
	contador = 0;
}
if(estado == 3){
	if(y < 96) {
		y+=5;
	}else{
		estado = irandom(2);
		delay = 0
		contador = 0;
	}
}
if(vida <= 0) instance_destroy();
if(instance_exists(obj_player)){
	switch(estado){
		case 0:
			if(delay > 60){
				instance_create_layer(x,y,"inimigos", obj_tiro2_inimigo);
				delay = 0;
			}
			if(move){
				x-=4	
			}else{
				x+=4
			}
			
			if(x >= 672) move = true;
			if(x <= 128) move = false;
		break;
		case 1:
			if(delay > 55){
				instance_create_layer(x-95,y+45, "inimigos", obj_tiro_inimigo);
				instance_create_layer(x+90,y+45, "inimigos", obj_tiro_inimigo);
				delay = 0;
			}
			
			if(move){
				x-=2	
			}else{
				x+=2
			}
			
			if(x >= 672) move = true;
			if(x <= 128) move = false;
			
		break;
		case 2:
			if(delay == 55){
				instance_create_layer(x-95,y+45, "inimigos", obj_tiro_inimigo);
				instance_create_layer(x+90,y+45, "inimigos", obj_tiro_inimigo);
			}
			if(delay > 60){
				instance_create_layer(x,y,"inimigos", obj_tiro2_inimigo);
				delay = 0;
			}
		break;
		default:
	
	}
}