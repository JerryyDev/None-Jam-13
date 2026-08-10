if (instance_exists(obj_player)) {
    dir_movimento = point_direction(x, y, obj_player.x, obj_player.y);
} else {
    dir_movimento = random(360);
}

velocidade = irandom_range(1.3,2.6);

movendo = true;

audio_play_sound(snd_whoosh,0,false);

alarm[1] = room_speed * 0.8;