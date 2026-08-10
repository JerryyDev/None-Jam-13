estado = "idle";
timer_troca_estado = room_speed*2;

hp_max = 1000;
hp = hp_max;

minha_barra = instance_create_layer(x, y+90, "UI", obj_barra_vida);
minha_barra.dono = id;


StateMachine = function(){
    switch (estado) {
    	case "idle":{
            global.boss = true;
            
            sprite_index = spr_boss;
            
            if(timer_troca_estado > 0) timer_troca_estado--;
            if(timer_troca_estado <= 0){
                estado = choose("reloading atk 1", "reloading spawn", "reloading spawn","reloading atk 1");
                timer_troca_estado = room_speed*2;
            }
        }
        break;
            
    
        case "reloading atk 1":{
            sprite_index = spr_boss_atk_1;
            
            var dir,marg;
            dir = -45;
            marg = 0;
            
            if(!instance_exists(obj_indicador)){
                repeat(3){
                    var _spawn_x = x + lengthdir_x(40, dir - 90);
                    var _spawn_y = y + lengthdir_y(40, dir - 90);
                    
                    var _instance = instance_create_layer(_spawn_x, _spawn_y, "HUD", obj_indicador);
                    _instance.image_angle = dir;
                    
                    dir += 45;
                }
            }
            
            if(image_index > image_number - 1){
                instance_destroy(obj_indicador);
                estado = "atk 1";
            }
        }  
        break;
    
    
        case "atk 1":{
            var dir;
            dir = -45;
            
            if(!instance_exists(obj_tiro_boss)){
                repeat(3){
                    var _spawn_x = x + lengthdir_x(40, dir - 90); 
                    var _spawn_y = y + lengthdir_y(40, dir - 90);
                    
                    var _instance = instance_create_layer(_spawn_x, _spawn_y, "HUD", obj_tiro_boss);
                    _instance.image_angle = dir;
                    _instance.vspeed = 4;
                    _instance.direction = dir - 90;
                    
                    dir += 45;
                } 
            }
            
            estado = "idle";
        }
        break;
    
    
        case "reloading spawn":{
            if(timer_troca_estado > 0) timer_troca_estado--;
            if(timer_troca_estado <= 0){
                estado = "spawn enemys";
                timer_troca_estado = room_speed*18;
            }    
            
        }  
        break;  
    
        
        case "spawn enemys":{
            global.boss = false;
            
            if(timer_troca_estado > 0) timer_troca_estado--;
            if(timer_troca_estado <= 0){
                estado = "idle";
                timer_troca_estado = room_speed*2;
            }                
        }
        break;
    }
}