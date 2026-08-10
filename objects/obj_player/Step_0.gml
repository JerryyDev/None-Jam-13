Inputs();
movimento();
Pimenta_create();


if(global.kills >= global.mk){
    global.wave++;
    global.mk = global.mk + 10;
    global.qtd_create = 0;
    global.kills = 0;
}


if(hp <= 30){
    sprite_index = spr_player_raivoso;
    velh_max = 1.4;
    velv_max = 1.4; 
    
}else{
    sprite_index = spr_player;
}


if(hp <= 0){
    room_goto(rm_menu);
}

show_debug_message(global.kills);

pimenta_angulo = point_direction(x, y, mouse_x, mouse_y);