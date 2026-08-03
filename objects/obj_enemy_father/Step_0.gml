if (movendo) {
    x += lengthdir_x(velocidade, dir_movimento);
    y += lengthdir_y(velocidade, dir_movimento);
    
    tempo_balanco += 0.2;
    image_yscale = 1 + sin(tempo_balanco) * 0.12;
    image_xscale = 1 - sin(tempo_balanco) * 0.12;

    if (lengthdir_x(1, dir_movimento) < 0) {
        image_xscale = -abs(image_xscale); 
    } else {
        image_xscale = abs(image_xscale);
    }

} else {
    tempo_balanco = 0;
    image_xscale = lerp(image_xscale, sign(image_xscale) == 0 ? 1 : sign(image_xscale), 0.2);
    image_yscale = lerp(image_yscale, 1, 0.2);
}



var _distancia_minima = 16; 

var _outro_peixe = instance_place(x, y, obj_enemy_father);

if (_outro_peixe != noone && _outro_peixe != id) {
    if (x == _outro_peixe.x && y == _outro_peixe.y) {
        x += random_range(-1, 1);
        y += random_range(-1, 1);
    } else {
        var _dir = point_direction(_outro_peixe.x, _outro_peixe.y, x, y);
        x += lengthdir_x(1, _dir);
        y += lengthdir_y(1, _dir);
    }
}