/// @description ajustando o tamanho

if(aumentando){
	image_xscale += v
}
if(diminuindo){
	image_xscale -= v
}

if(image_xscale>=2){
	aumentando = false
	diminuindo = true
	v = random_range(.01,.1)
}
if(image_xscale<=0.5){
	aumentando = true
	diminuindo = false
	v = random_range(.01,.1)
}
