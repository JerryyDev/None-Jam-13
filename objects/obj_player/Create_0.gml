#region Variaveis

velh                = 0;
velv                = 0;
velh_max            = 1;
velv_max            = 1;


right               = false;
left                = false;
up                  = false;
down                = false;

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
    
    
    if(place_meeting(x + velh,y,obj_wall)){
        velh = 0;
    }
    
    x += velh;
    
    
    if(place_meeting(x,y + velv, obj_wall)){
        velv = 0;
    }
    
    y += velv;
}


Pimenta_create = function(){
    if(!instance_exists(obj_pimenta_pimentinha)){
        var margem_p = 20;
        instance_create_layer(x + margem_p, y, layer, obj_pimenta_pimentinha);
    }
}

#endregion