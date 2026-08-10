if (instance_exists(dono)) {
    x = dono.x;
    
    if(dono.object_index == obj_boss){
        y = dono.y + 50;
    }else{
        y = dono.y + 15;
    }

    var _pct = clamp(dono.hp / dono.hp_max, 0, 1);
    image_xscale = _pct;
} else {
    instance_destroy();
}