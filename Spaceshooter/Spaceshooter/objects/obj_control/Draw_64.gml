/// @description Insert description here

draw_text(20,20,"Level atual: "+string(global.lvl))
draw_text(20,40, "Pro proximo level: " + string(exp_needed))
draw_text(20,60,"Falta: "+string(exp_needed - cur_exp))