/// @description Insert description here
// You can write your code in this editor
draw_text(room_width - 200, 20, "Vida do boss: "+string(vida))
draw_set_alpha(.5)
draw_rectangle_color(150,5,vida+150,15, c_red,c_red,c_red,c_red, false)
draw_set_alpha(1)
draw_rectangle(150,5,tam_borda_life+150,15,true)