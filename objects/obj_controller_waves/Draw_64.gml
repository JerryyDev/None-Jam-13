draw_set_font(fnt_game);
draw_set_valign(1);
draw_set_halign(1);

draw_text(990,50,"Wave : " + string(global.wave) + "/" + string(global.wave_max))

draw_set_halign(-1)
draw_set_valign(-1);
draw_set_font(-1);