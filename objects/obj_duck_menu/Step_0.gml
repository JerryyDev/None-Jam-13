tempo += velocidade_balanco;

y = y_original + amplitude_balanco * sin(tempo);

tempo_tiro++;

if (tempo_tiro >= intervalo_tiro) {
    tempo_tiro = 0;
    
    var _tiro = instance_create_layer(x + 20, y, "Instances", obj_tiro_menu);
    _tiro.speed = 3;
    _tiro.direction = 0;
}