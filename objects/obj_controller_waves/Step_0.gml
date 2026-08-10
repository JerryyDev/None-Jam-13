if(global.qtd_wave >= qtd_waves){
    if(!instance_exists(obj_boss)){
        instance_create_layer(240,48,"HUD",obj_boss);
    }
}

if(global.wave >= global.wave_max){
    global.wave = global.wave_max
    global.qtd_wave = global.qtd_wave + 7;
}