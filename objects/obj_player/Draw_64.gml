/// @description Insert description here
// You can write your code in this editor
var n = 1
repeat(vida){
	draw_sprite_ext(sprite_index, image_index, 30*n, room_height-50, .5, .5,image_angle, c_white, .7)
	n++
}

n=1
repeat(qtd_escudo){
	draw_sprite_ext(spr_escudo, 0, room_width-(40*n), room_height-50, .3, .3, image_angle, c_white, .7)
	n++
}