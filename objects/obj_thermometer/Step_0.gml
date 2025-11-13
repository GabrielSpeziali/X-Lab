<<<<<<< HEAD
// Variável para controlar o estado da skill
if (keyboard_check_pressed(ord("F"))) {
    skill = !skill; // Inverte o estado da skill ao pressionar "F"

    // Reproduza o som quando a habilidade for ativada ou desativada
    if (audio_is_playing(snd_skill)) {
        audio_stop_sound(snd_skill); // Pare o som se já estiver tocando
    }
    audio_play_sound(snd_skill, 1, false);
}

// Verifique se a tecla "X" foi pressionada quando a skill está ativada
if (skill && keyboard_check_pressed(ord("X"))) {
    global.room_copy_status = true;
    var temperature_message = "Temperatura da sala: " + string(temperature) + "°C";
    if (global.kelvinHability) {
        temperature_message += " / " + string(kelvin) + "K";
    }
    show_message(temperature_message);
}

// Defina as temperaturas para cada sala
if (room == rm_Game1) {
    temp = true;
    temperature = -3;
    kelvin = 297.15; // Temperatura em Kelvin para a sala 1
	if (global.room_copy_status == true) {
		global.rm1_copy = true;
	}
    if (skill == true) {
        sprite_index = spr_thermometer_cold;
    } else {
        sprite_index = spr_thermometer_neutral;
    }
} else if (room == rm_Game2) {
    temp = true;
    temperature = 27;
    kelvin = 300.15; // Temperatura em Kelvin para a sala 2
	if (global.room_copy_status == true) {
		global.rm2_copy = true;
	}
    if (skill == true) {
        sprite_index = spr_thermometer_hot;
    } else {
        sprite_index = spr_thermometer_neutral;
    }
} else if (room == rm_Game) {
    temp = false;
    temperature = 24;
    kelvin = 297.15; // Temperatura em Kelvin para a sala padrão
    if (skill == true) {
        sprite_index = spr_thermometer_false;
    } else {
        sprite_index = spr_thermometer_neutral;
    }
} else {
    sprite_index = spr_thermometer_neutral;
}

// Verifique se a habilidade de Kelvin está ativada e mostre a temperatura em Kelvin
if (global.kelvinHability) {
    var temperature_kelvin = "Temperatura em Kelvin: " + string(kelvin) + "K";
    draw_set_font(fnt_temperatura);
    draw_set_color(c_white); // Defina a cor do texto para branco
    draw_text(1220, 116, temperature_kelvin);
}

// Verifique se a habilidade de Celsius está ativada e mostre a temperatura em Celsius
if (skill) {
    var temperature_string = "Temperatura em Celsius: " + string(temperature) + "°C";
    draw_set_font(fnt_temperatura);
    if (temp == true) {
        draw_set_color(c_yellow);
    } else {
        draw_set_color(c_white);
    }
    draw_text(1220, 96, temperature_string);
}

var _sprite_index = sprite_index; // Substitua pelo nome do seu sprite
var scale_factor = 0.4; // Ajuste o fator de escala (2 dobra o tamanho, 0.5 reduz pela metade, etc.)

// Desenhe o sprite redimensionado na tela
draw_sprite_ext(_sprite_index, 0, 1325, 63, scale_factor, scale_factor, 0, c_white, 1);

if (skill) {
    // A skill está ativa, verifique se os objetos existem antes de definir sua visibilidade
    if (instance_exists(obj_neutral_vision)) {
        obj_neutral_vision.visible = true;
    }
    if (instance_exists(obj_frost_vision)) {
        obj_frost_vision.visible = true;
    }
    if (instance_exists(obj_heat_vision)) {
        obj_heat_vision.visible = true;
    }
} else {
    // A skill está desativada, verifique se os objetos existem antes de definir sua visibilidade
    if (instance_exists(obj_neutral_vision)) {
        obj_neutral_vision.visible = false;
    }
    if (instance_exists(obj_frost_vision)) {
        obj_frost_vision.visible = false;
    }
    if (instance_exists(obj_heat_vision)) {
        obj_heat_vision.visible = false;
    }
}
=======
// Variável para controlar o estado da skill
if (keyboard_check_pressed(ord("F"))) {
    skill = !skill; // Inverte o estado da skill ao pressionar "F"

    // Reproduza o som quando a habilidade for ativada ou desativada
    if (audio_is_playing(snd_skill)) {
        audio_stop_sound(snd_skill); // Pare o som se já estiver tocando
    }
    audio_play_sound(snd_skill, 1, false);
}
if (global.isMove == true) {
	skill = false;
}

// Verifique se a tecla "X" foi pressionada quando a skill está ativada
if (skill && keyboard_check_pressed(ord("X"))) {
    global.room_copy_status = true;
    var temperature_message = "Temperatura da sala: " + string(temperature) + "°C";
    if (global.kelvinHability) {
        temperature_message += " / " + string(kelvin) + "K";
    }
    show_message(temperature_message);
}

// Defina as temperaturas para cada sala
if (room == rm_Game1) {
    temp = true;
    temperature = -3;
    kelvin = 297.15; // Temperatura em Kelvin para a sala 1
	if (global.room_copy_status == true) {
		global.rm1_copy = true;
	}
    if (skill == true) {
        sprite_index = spr_thermometer_cold;
    } else {
        sprite_index = spr_thermometer_neutral;
    }
} else if (room == rm_Game2) {
    temp = true;
    temperature = 27;
    kelvin = 300.15; // Temperatura em Kelvin para a sala 2
	if (global.room_copy_status == true) {
		global.rm2_copy = true;
	}
    if (skill == true) {
        sprite_index = spr_thermometer_hot;
    } else {
        sprite_index = spr_thermometer_neutral;
    }
}else {
    sprite_index = spr_thermometer_neutral;
}

// Verifique se a habilidade de Kelvin está ativada e mostre a temperatura em Kelvin
if (global.kelvinHability) {
    var temperature_kelvin = "Temperatura em Kelvin: " + string(kelvin) + "K";
    draw_set_font(fnt_temperatura);
    draw_set_color(c_white); // Defina a cor do texto para branco
    draw_text(1220, 116, temperature_kelvin);
}

// Verifique se a habilidade de Celsius está ativada e mostre a temperatura em Celsius
if (skill) {
    var temperature_string = "Temperatura em Celsius: " + string(temperature) + "°C";
    draw_set_font(fnt_temperatura);
    if (temp == true) {
        draw_set_color(c_yellow);
    } else {
        draw_set_color(c_white);
    }
    draw_text(1220, 96, temperature_string);
}

var _sprite_index = sprite_index; // Substitua pelo nome do seu sprite
var scale_factor = 0.4; // Ajuste o fator de escala (2 dobra o tamanho, 0.5 reduz pela metade, etc.)

// Desenhe o sprite redimensionado na tela
draw_sprite_ext(_sprite_index, 0, 1325, 63, scale_factor, scale_factor, 0, c_white, 1);

if (skill) {
    // A skill está ativa, verifique se os objetos existem antes de definir sua visibilidade
    if (instance_exists(obj_neutral_vision)) {
        obj_neutral_vision.visible = true;
    }
    if (instance_exists(obj_frost_vision)) {
        obj_frost_vision.visible = true;
		obj_snow.visible = true;
		obj_part_cold.visible = true;
    }
    if (instance_exists(obj_heat_vision)) {
        obj_heat_vision.visible = true;
		obj_fire.visible = true;
		obj_part_hot.visible = true;
    }
} else {
    // A skill está desativada, verifique se os objetos existem antes de definir sua visibilidade
    if (instance_exists(obj_neutral_vision)) {
        obj_neutral_vision.visible = false;
    }
    if (instance_exists(obj_frost_vision)) {
        obj_frost_vision.visible = false;
		obj_snow.visible = false;
		obj_part_cold.visible = false;
    }
    if (instance_exists(obj_heat_vision)) {
        obj_heat_vision.visible = false;
		obj_fire.visible = false;
		obj_part_hot.visible = false;
    }
}
>>>>>>> 406811f24178cb7c901e82d65b1dcb9b5c505c7c
