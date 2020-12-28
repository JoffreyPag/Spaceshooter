/// @description criando so inimigos
if(instance_exists(obj_boss) or !boss){
	var repete = random_range(1,2)*global.lvl

	repeat(repete){
		var xrandom = random_range(36,room_width-32)
		var yrandom = random_range(-320, -32)
		var chance = random(10)*global.lvl
		if(chance > 25){
			var inimigo = instance_create_layer(xrandom, yrandom,"Inimigos", obj_inimigo02)
			inimigo.speed = random_range(2,5)
		}else{
			var inimigo = instance_create_layer(xrandom, yrandom,"Inimigos", obj_inimigo01)
			inimigo.speed = random_range(1,2)
		}
	}
	alarm[0] = (room_speed *random_range(1,2)) * global.lvl
}