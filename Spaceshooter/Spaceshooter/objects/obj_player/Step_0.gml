/// @description Configurando o player

var esq = (keyboard_check(vk_left) or keyboard_check(ord("A")))
var dir = (keyboard_check(vk_right) or keyboard_check(ord("D")))
var cima = (keyboard_check(vk_up) or keyboard_check(ord("W")))
var baixo = (keyboard_check(vk_down) or keyboard_check(ord("S")))

var tiro = keyboard_check_pressed(vk_space)

var escudo = keyboard_check_pressed(ord("E"))

//teste de tiro tirar futuramente
if(keyboard_check_pressed(ord("P"))) lvltiro++
if(keyboard_check_pressed(ord("O"))) lvltiro--

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


if(lvltiro == 1){
	if(tiro){
		instance_create_layer(x, y, "Instances", obj_tiro)	
	}
}else if(lvltiro == 2){
	if(tiro){
		var t = instance_create_layer(x+28, y, "Instances", obj_tiro2)
		t.hspeed = 4
		var t = instance_create_layer(x-28, y, "Instances", obj_tiro2)
		t.hspeed = -4
	}
} else if(lvltiro == 3){
		if(tiro){
			instance_create_layer(x, y, "Instances", obj_tiro)	
			var t = instance_create_layer(x+28, y, "Instances", obj_tiro2)
			t.hspeed = 4
			var t = instance_create_layer(x-28, y, "Instances", obj_tiro2)
			t.hspeed = -4
	}
}else if(lvltiro == 4){
	if(tiro){
		var val = 20//definir a diferença na direção
		repeat(3){
			var t = instance_create_layer(x,y,"Instances", obj_tiro)
			t.direction = 90+val
			t.image_angle = val
			val-=20
			
		}
	}
}else if(lvltiro == 5){
	if(tiro){
		
		var t = instance_create_layer(x+28, y, "Instances", obj_tiro2)
		t.hspeed = 6
			
		var t = instance_create_layer(x-28, y, "Instances", obj_tiro2)
		t.hspeed = -6
		
		var val = 20//definir a diferença na direção
		repeat(3){
			var t = instance_create_layer(x,y,"Instances", obj_tiro)
			t.direction = 90+val
			t.image_angle = val
			
			val-=20
		}
	}	
	
}



//------- game over palhaço ------
if(vida <=0){
	instance_destroy()
}