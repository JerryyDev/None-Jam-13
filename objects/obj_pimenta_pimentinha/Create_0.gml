
timer_fire = 0;
posso_atirar = false;

Cria_tiros = function(){
    if(timer_fire >= 0) timer_fire--;
        
    if(timer_fire < 0){
        posso_atirar = true;
        timer_fire = 30;
    }
    
    var qtd,tiro,index_tiro;
    qtd = 0;
    tiro = [obj_tiro_fogo,obj_tiro_agua,obj_tiro_raio];
    index_tiro = 0;
    
    if(index_tiro == 0){
        qtd = 1;
    }else if(index_tiro == 1){
        qtd = 3;
    }else if(index_tiro == 2){
        qtd = 2;
    }
    
    
    if(posso_atirar == true){
        if(mouse_check_button(mb_left)){
            index_tiro = irandom_range(0,2);
            
            repeat(qtd){
               	var instance = instance_create_layer(x,y,"Tiro",tiro[index_tiro]);
                instance.speed = 3;
                instance.direction = point_direction(x,y,mouse_x,mouse_y);
            }
            
            posso_atirar = false;
        }
    }
    
    
    if(index_tiro > 2){
        index_tiro = 0;
    }else if(index_tiro < 0){
        index_tiro = 2;
    }
}

Segue_cursor = function(){
       if (instance_exists(obj_player)) {
        var _dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
        
        var _distancia = 22;
        
        x = obj_player.x + lengthdir_x(_distancia, _dir);
        y = obj_player.y + lengthdir_y(_distancia, _dir);
        
        image_angle = _dir;
        
        
        if (_dir > 90 && _dir < 270) {
            image_yscale = -1;
        } else {
            image_yscale = 1;
        }
    } 
}