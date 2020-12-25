/// @description configurando o inimigo
// You can write your code in this editor
if(y>=0 and !naTela){
	naTela = true
	alarm[0] = room_speed*random_range(1,2);
}

if(naTela && !movendo){
	if(y > room_height/3){// ja passou de 1/3 da tela
		if(x > room_width/2){
			//esta na direita
			hspeed = -4
		}else{
			//esta na esquerda
			hspeed = 4
		}
		movendo = true
	}
}


if(y >= room_height+100)instance_destroy();
