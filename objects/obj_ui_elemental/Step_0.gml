var space = keyboard_check_pressed(vk_space);
if(space){
    global.elemento_atual++;
    efeito_mola(0.7,1.3);
}



image_xscale = lerp(image_xscale,1,0.2);
image_yscale = lerp(image_yscale,1,0.2);


if(global.elemento_atual == 1){
    image_index = 0;
}else if(global.elemento_atual == 2){
    image_index = 1;
}else if(global.elemento_atual == 3){
    image_index = 2;
}


if(global.elemento_atual > 3){
    global.elemento_atual = 1;
}