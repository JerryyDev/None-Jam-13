StateMachine();

if(hp <= 0){
    global.prx_r = room_goto(rm_menu);
    layer_sequence_create("TRN",0,0,trn_in);
}

image_xscale = lerp(image_xscale, 1, 0.2);
image_yscale = lerp(image_yscale, 1, 0.2);