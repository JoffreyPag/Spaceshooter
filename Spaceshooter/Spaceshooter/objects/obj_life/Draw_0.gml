/// @description Insert description here
// You can write your code in this editor
draw_self() // se desenhando ????
gpu_set_blendmode(bm_add)//mistura nas imagens

draw_sprite_ext(spr_brilhotiro2, image_index, x,y, image_xscale*2, image_yscale*2,image_angle,cor, .5)

gpu_set_blendmode(bm_normal)//volta ao normal