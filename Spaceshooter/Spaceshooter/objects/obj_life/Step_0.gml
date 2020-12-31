/// @description ajustando o tamanho

if(aumentando){
	image_xscale += v
}else{
	image_xscale -= v
}

//check image scale reach values to change behavior
if(image_xscale>=2){
	aumentando = false
}
if(image_xscale<=0.8){
	aumentando = true
}
