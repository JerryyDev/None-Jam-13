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



function prx_trn(){
    global.in_trn = true;
    room_goto(global.prx_r);
}


function BarraDeVida(xscale=1,hp=1){
    xscale = xscale*hp;
    obj_barra_vida.image_xscale = xscale;
} 

function efeito_mola(xscale=1,yscale=1,force = 1,spd=0.2){
    image_xscale = xscale;
    image_yscale = yscale;
    
    xscale = lerp(xscale,force,spd);
    yscale = lerp(yscale,force,spd);
}