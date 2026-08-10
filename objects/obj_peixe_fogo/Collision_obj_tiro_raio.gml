hp -= 10;
efeito_mola(0.6,1.4);

if (hp <= 0) {
    // Salva as posições atuais antes de destruir esta instância
    var _ex = x;
    var _ey = y;
    var _range = range_explosao;
    var _me = id; // Para não destruir a si mesmo duas vezes

    // Loop por TODOS os outros inimigos do jogo
    with (obj_enemy_father) { // Troque 'obj_inimigo_pai' pelo objeto pai dos seus inimigos
        // Garante que não é o próprio inimigo que está morrendo agora
        if (id != _me) {
            // Checa a distância até onde ocorreu a explosão do raio
            if (point_distance(x, y, _ex, _ey) <= _range) {
                global.kills++;
                instance_destroy(); // Destrói os inimigos no raio de alcance
            }
        }
    }
    
    instance_create_layer(x,y,layer,obj_explosao);

    // Por fim, destrói o inimigo original que tomou o tiro
    instance_destroy();
}