/// @description Insert description here
// You can write your code in this editor
if(room == Rm_pontos){
	draw_set_font(fnt_titulo)
	draw_set_halign(fa_center)
	draw_text(room_width/2 ,200,"Melhor pontuação até agora:")
	
	draw_set_font(fnt_exibir)
	draw_text(room_width/2, room_height/2, global.maiorpontuacao)
	draw_text(room_width/2, (room_height/2)+50, "Inimigos destruidos: "+ string(global.inimigosdestruidos))
	draw_text(room_width/2, (room_height/2)+100, "Inimigos destruidos na ultima partida: "+ string(global.inimigosdestruidosUltimapartida))

	draw_set_halign(fa_left)
}
