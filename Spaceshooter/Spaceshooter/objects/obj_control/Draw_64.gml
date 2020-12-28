/// @description Insert description here
draw_set_font(fnt_exibir)
draw_text(20,20,"Level atual: "+string(global.lvl))
draw_text(20,40, "Pro proximo level: " + string(int64(exp_needed)))
draw_text(20,60,"Falta: "+string(int64(exp_needed - cur_exp)))