#region Variaveis

velh                = 0;
velv                = 0;
velh_max            = 1;
velv_max            = 1;


tempo_balanco = 0;


right               = false;
left                = false;
up                  = false;
down                = false;


margem_p = 20;
pimenta_angulo = 0;

#endregion



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
    
    var _half_width  = sprite_width / 2;
    var _half_height = sprite_height / 2;
    
    x += velh;
    y += velv; 
    
    x = clamp(x, _half_width, room_width - _half_width);
    y = clamp(y, _half_height, room_height - _half_height);
    
    var _esta_andando = (velh != 0 || velv != 0);

   if (_esta_andando) {
       tempo_balanco += 0.2;
       
       image_yscale = 1 + sin(tempo_balanco) * 0.08;
       image_xscale = 1 - sin(tempo_balanco) * 0.08;
   
   } else {
       tempo_balanco = 0;
       image_xscale = lerp(image_xscale, 1, 0.2);
       image_yscale = lerp(image_yscale, 1, 0.2);
       image_angle  = lerp(image_angle, 0, 0.2);
   }
}


Pimenta_create = function(){
    if(!instance_exists(obj_pimenta_pimentinha)){
        instance_create_layer(x + margem_p, y, layer, obj_pimenta_pimentinha);
    }
}

#endregion