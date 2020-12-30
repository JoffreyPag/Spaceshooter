///@description treme_tela
///@arg force
///@arg sound
///@arg layer

function scr_treme(f,s,l){
	var treme = instance_create_layer(0 , 0 , l ,obj_treme);
	treme.f = f;
	treme.s = s;
}