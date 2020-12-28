
/// @description configurando tiro
// You can write your code in this editor
instance_create_layer(x, y, "Inimigos", obj_tiro_inimigo)
audio_play_sound(sfx_laser2, 5, false)
alarm[0] = room_speed*random_range(1.5,3);