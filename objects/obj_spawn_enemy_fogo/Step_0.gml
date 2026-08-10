if(global.boss == true){
    exit;
}

if(global.qtd_create > global.qtd_wave) {
    exit;
}


if(spawn_timer > 0) spawn_timer--;
    
if(spawn_timer <= 0){
    repeat (qtd_enemys) {
    	instance_create_layer(x,spawn_enemy,"Enemys",obj_peixe_fogo);
        global.qtd_create++;
    }
    
    spawn_enemy = choose(y,y+25,y-25);
    spawn_timer = room_speed*2;
}