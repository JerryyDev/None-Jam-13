audio_stop_all();
audio_play_sound(snd_menu,0,true);

if(global.in_trn)
        layer_sequence_create("TRN",0,0,trn_out);

global.kills = 0;
global.mk = 10;
global.pimenta_liberada = false;

global.elemento_atual = 1;

global.in_trn = false;
global.prx_r = rm_menu;

global.wave = 1;
global.wave_max = 2;

global.boss = false;

global.qtd_wave = 10;
global.qtd_create = 0;