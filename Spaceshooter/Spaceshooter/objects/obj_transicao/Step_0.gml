/// @description Insert description here
// You can write your code in this editor
if(sumindo){
	alpha -= .05
}else{
	alpha += .05
}
if(alpha >= 1){
	sumindo = true;
	room_goto(destino)
}
if(alpha <= 0 and novaroom){
	sumindo = false
	instance_destroy()
}
