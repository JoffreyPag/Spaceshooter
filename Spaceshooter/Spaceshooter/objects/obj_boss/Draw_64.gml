/// @description Insert description here
// You can write your code in this editor
draw_text(camera_get_view_width(view_camera[0]) - 200, 20, "Vida do boss: "+string(vida))
draw_set_alpha(.5)

draw_rectangle_color(tolerance,5,vida+tolerance,15, c_red,c_red,c_red,c_red, false)
draw_set_alpha(1)
//the border was made it after because the alpha is set to normal and de border can be 
//see better before for better game experience
draw_rectangle(tolerance,5,tam_borda_life+tolerance,15,true)