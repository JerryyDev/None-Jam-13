if (instance_exists(obj_player)) {
    var _dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
    
    var _distancia = 22;
    
    x = obj_player.x + lengthdir_x(_distancia, _dir);
    y = obj_player.y + lengthdir_y(_distancia, _dir);
    
    image_angle = _dir;
    
    
    if (_dir > 90 && _dir < 270) {
        image_yscale = -1;
    } else {
        image_yscale = 1;
    }
}