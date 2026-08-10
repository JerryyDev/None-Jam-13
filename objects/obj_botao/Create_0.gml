/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor 
image_xscale = 1.6;
image_yscale = 1.6;

xscale = image_xscale;
yscale = image_yscale;

escala_txt = 0.2;
val_cor = 0;



minha_funcao = function()
{
    if(texto == "exit"){
        game_end();
    }else if(texto == "play"){
        global.prx_r = rm_game;
        layer_sequence_create("TRN", 0, 0, trn_in);
    }else if(texto == "config"){
        //
    }
}