/// @description ajustando o tamanho

if(aumentando){
	image_xscale += v
}else{
	image_xscale -= v
}

if(image_xscale>=2){
	aumentando = false
	v = random_range(.01,.1)
}
if(image_xscale<=0.5){
	aumentando = true
	v = random_range(.01,.1)
}
