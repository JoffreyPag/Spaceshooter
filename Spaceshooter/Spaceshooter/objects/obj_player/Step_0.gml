/// @description Configurando o player

var esq = (keyboard_check(vk_left) or keyboard_check(ord("A")))
var dir = (keyboard_check(vk_right) or keyboard_check(ord("D")))
var cima = (keyboard_check(vk_up) or keyboard_check(ord("W")))
var baixo = (keyboard_check(vk_down) or keyboard_check(ord("S")))

var tiro = keyboard_check(vk_space)

var escudo = keyboard_check_pressed(ord("E"))

//teste de tiro tirar futuramente
if(keyboard_check_pressed(ord("P"))) lvltiro++;
if(keyboard_check_pressed(ord("O"))) lvltiro--;

if(tiro and pode_atirar){
	pode_atirar = false
	fire();
}else {
	timeout++
	if(timeout >= room_speed/4){
		pode_atirar= true
		timeout = 0
	}
}

if(keyboard_check_pressed(ord("R"))) game_restart();

if(escudo and qtd_escudo > 0){
	instance_create_layer(x,y, "Instances", obj_escudo)
	qtd_escudo--
}
//show_debug_message("player vida = "+string(vida))
/*
if (esq) x -= vel;
if(dir) x += vel;
if(cima) y -= vel;
if(baixo) y += vel;
*/
velh = (dir-esq)*vel
velv = (baixo-cima)*vel

x += velh;
y += velv

//------- game over palhaço ------
if(vida <=0){
	instance_destroy()
}

//estabelecendo limites de pos x e y do player
x = clamp(x ,32, room_width-32)
y = clamp(y ,32, room_height-32)