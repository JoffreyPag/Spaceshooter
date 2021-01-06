/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_font(fnt_exibir)

image_blend = c_red
draw_text(x,y, texto)

draw_set_halign(-1)
draw_set_font(-1)

if(position_meeting(mouse_x, mouse_y, self)){
	
	gpu_set_blendmode(bm_add)//mistura nas imagens
	draw_sprite_ext(spr_botaoBrilho, image_index, x,y, image_xscale, image_yscale+.2, image_angle, c_aqua, .5)
	gpu_set_blendmode(bm_normal)//volta ao normal
}