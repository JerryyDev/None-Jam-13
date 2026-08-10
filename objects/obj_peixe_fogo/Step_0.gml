// Inherit the parent event
event_inherited();

if(col_agua == true){
    image_xscale = 1;
    image_yscale = 1;
    sprite_index = spr_peixe_pedrificado;
    
    timer_pedrificado--;
    if(timer_pedrificado <= 0){
        col_agua = false;
        timer_pedrificado = room_speed*2;
    }
    
    if(hp <= 0){
        instance_destroy();
    }
    
    exit;
}else{
    sprite_index = spr_peixe_fogo;
}

if (col_raio == true && hp <= 0) {
    var _tiro = instance_nearest(x, y, obj_tiro_raio);
    
    if (_tiro != noone) {
        var _distance = point_distance(x, y, _tiro.x, _tiro.y);
        
        if (_distance <= range_explosao) {
            instance_destroy(_tiro); 
            instance_destroy();      
        }
    }
}


