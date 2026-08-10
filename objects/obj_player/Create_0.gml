#region Variaveis

velh                = 0;
velv                = 0;
velh_max            = 1.2;
velv_max            = 1.2;


tempo_balanco = 0;


right               = false;
left                = false;
up                  = false;
down                = false;


margem_p = 20;
pimenta_angulo = 0;
draw_xscale = 1;
draw_yscale = 1;


hp_max = 100;
hp = hp_max;

#endregion

minha_barra = instance_create_layer(x, y + 15, "BarraDeVida", obj_barra_vida);
minha_barra.dono = id;

#region Métodos

Inputs = function(){
    var l,r,u,d;
    r = keyboard_check(ord("D"));
    l = keyboard_check(ord("A"));
    u = keyboard_check(ord("W"));
    d = keyboard_check(ord("S"));
    
    right = r;
    left = l;
    up = u;
    down = d;
}


movimento = function(){
    velh = (right - left) * velh_max;
    velv = (down - up) * velv_max;
    
    
    var _esta_andando = (velh != 0 || velv != 0);

    if (_esta_andando) {
        tempo_balanco += 0.2;
        
        if(!instance_exists(obj_vsfx_move)){
            instance_create_layer(x,y,"Vsfx",obj_vsfx_move);
        }
   
        var _escala_base = 1;
        var _deformacao = sin(tempo_balanco) * 0.12;
   
        var _dir = (velh != 0) ? sign(velh) : sign(draw_xscale);
       
        draw_xscale = _dir * (_escala_base + _deformacao);
        draw_yscale = _escala_base - _deformacao;
   
    } else {
        tempo_balanco = 0;
        draw_xscale = lerp(draw_xscale, 1, 0.1);
        draw_yscale = lerp(draw_yscale, 1, 0.1);
    }
   
    image_xscale = 1;
    image_yscale = 1;
    
    if (place_meeting(x + velh, y, obj_wall)) {
         while (!place_meeting(x + sign(velh), y, obj_wall)) {
           x += sign(velh);
        }
        velh = 0;
    }
    
    x += velh; 
  
    if (place_meeting(x, y + velv, obj_wall)) {
        while (!place_meeting(x, y + sign(velv), obj_wall)) {
           y += sign(velv);
        }
        velv = 0;
    }
    
    y += velv;
}


Pimenta_create = function(){
    if(!instance_exists(obj_pimenta_pimentinha)){
        instance_create_layer(x + margem_p, y, layer, obj_pimenta_pimentinha);
    }
}

#endregion