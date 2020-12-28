/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x,y, "inimigos", obj_explosao)
audio_sound_gain(audioBoss, 0, 1000)
obj_control.bossDead()
