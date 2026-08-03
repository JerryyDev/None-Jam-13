#region Variaveis

options = ["Play","Config","Exit"];
index_options = 0;

#endregion


#region Métodos

DesenhaMenu = function(){
    // Garante que o texto fique centralizado na tela ao escalar
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    var xx = display_get_gui_width() / 2;
    var yy = display_get_gui_height() / 2; // Corrigido para height
    var espacamento = 40; // Distância vertical entre cada opção
    
    for (var i = 0; i < array_length(options); i++) {
        var xs_t, ys_t, color;
        
        // Se for o item selecionado
        if (index_options == i) {
            color = c_red;
            xs_t = 1.2;
            ys_t = 1.2;
        } else {
            color = c_white;
            xs_t = 1.0;
            ys_t = 1.0; 
        }
        
        draw_set_colour(color);
        
        // Desenha o texto com escala e posição Y ajustada por linha
        draw_text_ext_transformed(xx, yy + (espacamento * i), options[i], 0, 1000, xs_t, ys_t, 0);
    }
    
    // Reseta o alinhamento e a cor padrão do GameMaker
    draw_set_colour(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}


ControlaMenu = function(){
    var key_u,key_d;
    key_u = keyboard_check_pressed(vk_up);
    key_d = keyboard_check_pressed(vk_down);
    
    if(key_d){
        index_options++;
    }
    
    if(key_u){
        index_options--;
    }
    
    
    if(index_options > 2){
        index_options = 0;
    }else if(index_options < 0){
        index_options = 2;
    }
}


#endregion