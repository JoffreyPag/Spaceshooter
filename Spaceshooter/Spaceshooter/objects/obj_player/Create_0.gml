/// @description Iniciando variaveis

vel = 4

vida = 3

lvltiro = 1

qtd_escudo = 3

function fire(){
	audio_play_sound(sfx_laser1, 10, false)
	if(lvltiro == 1){
		instance_create_layer(x, y, "Instances", obj_tiro)	
		
	} else if(lvltiro == 2){
		var t = instance_create_layer(x+28, y, "Instances", obj_tiro2)
		t.hspeed = 4
		var t = instance_create_layer(x-28, y, "Instances", obj_tiro2)
		t.hspeed = -4
		
	} else if(lvltiro == 3){
		instance_create_layer(x, y, "Instances", obj_tiro)	
		var t = instance_create_layer(x+28, y, "Instances", obj_tiro2)
		t.hspeed = 4
		var t = instance_create_layer(x-28, y, "Instances", obj_tiro2)
		t.hspeed = -4
		
	} else if(lvltiro == 4){
		var val = 20//definir a diferença na direção
		repeat(3){
			var t = instance_create_layer(x,y,"Instances", obj_tiro)
			t.direction = 90+val
			t.image_angle = val
			val-=20
		}
	} else if(lvltiro == 5){
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