if (instance_exists(obj_player)) {
    dir_movimento = point_direction(x, y, obj_player.x, obj_player.y);
} else {
    dir_movimento = random(360);
}

movendo = true;

alarm[1] = room_speed * 0.8;