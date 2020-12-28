/// @description Insert description here
// You can write your code in this editor

delay++;
contador++

//a cada 6s o boss muda de estado
if(contador >= room_speed*6){
	estado = irandom(2);
	contador = 0;
}

//estado fora da tela, caminhando para a posição de combate
if(estado == 3){
	if(y < 96) {
		y+=5;
	}else{
		estado = irandom(2);
		delay = 0
		contador = 0;
		audioBoss = audio_play_sound(snd_Aggressor, 1, true)
	}
}

if(vida <= 0) instance_destroy();

if(instance_exists(obj_player)){
	//tiro
	switch(estado){
		case 0:
			//a cada 1s -> 1 tiro
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
			//a cada 55s (considerando que a conf desse jogo seja 60 fps)
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
			//limite da tela a direita
			//TODO: Mudar esses valores depois de implementar  ajuste de tela dinamico
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