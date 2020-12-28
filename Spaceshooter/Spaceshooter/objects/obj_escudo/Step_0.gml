/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_player)){
	x = obj_player.x
	y = obj_player.y
}else{
	instance_destroy()
}
if(vida <=0){
	instance_destroy()	
}
if(image_index == 0){
	image_alpha -= .05	
	if(image_alpha == .7) audio_play_sound(sfx_shieldDown, 11, false)
}
