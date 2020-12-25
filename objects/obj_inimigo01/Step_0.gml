/// @description configurando o inimigo
// You can write your code in this editor
if(y>=0 and !naTela){
	naTela = true
	alarm[0] = room_speed*random_range(0.5,1);
}
if(y >= room_height+100)instance_destroy();
