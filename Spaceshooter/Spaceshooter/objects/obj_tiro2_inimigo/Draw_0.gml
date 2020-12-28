/// @description melhorando a imagem do tiro

draw_self() // se desenhar, sem ele a sprite nao rendenriza em execução
gpu_set_blendmode(bm_add)//mistura nas imagens
draw_sprite_ext(spr_brilhotiro2, image_index, x,y, image_xscale+.7, image_yscale+.7, image_angle, c_fuchsia, .5)

gpu_set_blendmode(bm_normal)//volta ao normal