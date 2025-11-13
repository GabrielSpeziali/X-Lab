if (skill == true) {
    var temperature_string = string(temperature) + " C";
    var   temperature_kelvin = string(kelvin) + " K";
    
    draw_set_font(fnt_temperatura);
    if (temp == true) {
        draw_set_color(c_yellow);
    } else {
        draw_set_color(c_white);
    }
    
    draw_text(1220, 116, temperature_string);
	if (global.kelvinHability == true) {
		draw_text(1155, 90, temperature_kelvin);
	}
}

var _sprite_index = sprite_index; // Substitua pelo nome do seu sprite
var scale_factor = 0.4; // Ajuste o fator de escala (2 dobra o tamanho, 0.5 reduz pela metade, etc.)

// Desenhe o sprite redimensionado na tela
draw_sprite_ext(_sprite_index, 0, 1325, 63, scale_factor, scale_factor, 0, c_white, 1);
