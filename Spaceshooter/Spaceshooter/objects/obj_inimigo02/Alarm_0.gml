
/// @description configurando tiro
// You can write your code in this editor
if(instance_exists(obj_player)){
	if(y < obj_player.y){
		instance_create_layer(x, y, "Inimigos", obj_tiro2_inimigo)
		audio_play_sound(sfx_laser2, 5, false)
	}
}
alarm[0] = room_speed*random_range(2,3);