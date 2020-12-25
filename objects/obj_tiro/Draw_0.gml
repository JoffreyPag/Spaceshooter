/// @description melhorando a imagem do tiro

draw_self() // se desenhando ????
gpu_set_blendmode(bm_add)//mistura nas imagens

draw_sprite_ext(sprite_index, image_index, x,y, image_xscale+.5, image_yscale+.5,image_angle,cor, .5)

gpu_set_blendmode(bm_normal)//volta ao normal