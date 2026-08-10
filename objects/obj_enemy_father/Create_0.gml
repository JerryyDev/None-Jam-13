image_xscale = 1.2;
image_yscale = 1.2;

movendo = false;
velocidade = 1.3;
dir_movimento = 0;

hp_max = 30;
hp = hp_max;


minha_barra = instance_create_layer(x, y + 15, "BarraDeVida", obj_barra_vida);
minha_barra.dono = id;

alarm[0] = room_speed * random_range(1.5, 2);

tempo_balanco = 0;


timer_pedrificado = room_speed*2;
col_agua = false;
col_raio = false;
range_explosao = 60;