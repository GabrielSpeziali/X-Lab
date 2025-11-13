<<<<<<< HEAD
#region variaveis
var key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
var key_jump = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);

vspd += grv;
vspd = clamp(vspd, vspd_min, vspd_max);
#endregion
#region movimentação
if (can_move) {
if (key_left || key_right) {
    move_dir = point_direction(0, 0, key_right - key_left, 0);

    move_spd = approach(move_spd, move_spd_max, acc); // Aceleração
} else {
    move_spd = approach(move_spd, 0, dcc); // Desaceleração
}

// Direção
hspd = lengthdir_x(move_spd, move_dir);

var ground = place_meeting(x, y + 1, obj_wall) || place_meeting(x, y + 1, obj_painel);

if (ground) {
    coyote_time = coyote_time_max;
} else {
    coyote_time--;
}

if (key_jump && coyote_time > 0) {
    coyote_time = 0;
    vspd = 0;
    vspd -= jump_height;
}
#endregion
#region sprites
// Controle da sprite
if (key_left) {
    move_dir = 180; // 180 graus é a esquerda
	audio_play_sound(snd_slide, 0.5, false);
    sprite_index = spr_player_walk;
    image_xscale = -5;
} else if (key_right) {
    move_dir = 0; // 0 graus é a direita
	audio_play_sound(snd_slide, 10, false);
    sprite_index = spr_player_walk;
    image_xscale = 5;
} else if (ground = false) {
	sprite_index = spr_player_jump;
}else {
    sprite_index = spr_player_idle;
    move_spd = 0; // Redefine a velocidade quando nenhuma tecla de movimento é pressionada
}
#endregion
#region mov e coli
// Movimentação horizontal com detecção de colisão
var new_x = x + hspd;
if (!place_meeting(new_x, y, obj_wall) && !place_meeting(new_x, y, obj_painel)) {
    x = new_x;
}

// Movimentação vertical com detecção de colisão
var new_y = y + vspd;
if (!place_meeting(x, new_y, obj_wall) && !place_meeting(x, new_y, obj_painel)) {
    y = new_y;
}
}
#endregion
#region dano
if (!can_take_damage) {
    damage_delay -= 1;
    if (damage_delay <= 0) {
        can_take_damage = true;
        damage_delay = 80; // Reinicia o atraso
    }
}

if (is_damaged) {
    sprite_index = spr_player_damage;
    damage_delay -= 1;
    if (damage_delay <= 0) {
        is_damaged = false;
        sprite_index = spr_player_idle;
    }
}

if (global.life <= 1) {
    sprite_index = spr_player_death;
}

if (global.life < 1) {
    game_restart();
}

// Verificar se a vida está abaixo do valor máximo e regenerar
if (global.life < 5) {
    life_regeneration_delay -= 1;
    if (life_regeneration_delay <= 0) {
        global.life += life_regeneration_amount; // Aumenta a vida
        if (global.life > 5) {
            global.life = 5; // Limita a vida ao valor máximo
        }
        life_regeneration_delay = room_speed * 5; // Reinicia o atraso de regeneração
    }
}
#endregion
=======
#region variaveis
var key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
var key_jump = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);

vspd += grv;
vspd = clamp(vspd, vspd_min, vspd_max);
#endregion
#region movimentação
if (can_move) {
if (key_left || key_right) {
    move_dir = point_direction(0, 0, key_right - key_left, 0);

    move_spd = approach(move_spd, move_spd_max, acc); // Aceleração
} else {
    move_spd = approach(move_spd, 0, dcc); // Desaceleração
}

// Direção
hspd = lengthdir_x(move_spd, move_dir);

var ground = place_meeting(x, y + 1, obj_wall) || place_meeting(x, y + 1, obj_painel);

if (ground) {
    coyote_time = coyote_time_max;
} else {
    coyote_time--;
}

if (key_jump && coyote_time > 0) {
    coyote_time = 0;
    vspd = 0;
    vspd -= jump_height;
}
#endregion
#region sprites
// Controle da sprite
if (key_left) {
    move_dir = 180; // 180 graus é a esquerda
	audio_play_sound(snd_slide, 0.5, false);
	global.isMove = true;
    sprite_index = spr_player_walk;
    image_xscale = -5;
} else if (key_right) {
	global.isMove = true;
    move_dir = 0; // 0 graus é a direita
	audio_play_sound(snd_slide, 10, false);
    sprite_index = spr_player_walk;
    image_xscale = 5;
} else if (ground = false) {
	global.isMove = true;
	sprite_index = spr_player_jump;
}else {
	global.isMove = false;
    sprite_index = spr_player_idle;
    move_spd = 0; // Redefine a velocidade quando nenhuma tecla de movimento é pressionada
}
#endregion
#region mov e coli
// Movimentação horizontal com detecção de colisão
var new_x = x + hspd;
if (!place_meeting(new_x, y, obj_wall) && !place_meeting(new_x, y, obj_painel)) {
    x = new_x;
}

// Movimentação vertical com detecção de colisão
var new_y = y + vspd;
if (!place_meeting(x, new_y, obj_wall) && !place_meeting(x, new_y, obj_painel)) {
    y = new_y;
}
}
#endregion
#region dano
if (!can_take_damage) {
    damage_delay -= 1;
    if (damage_delay <= 0) {
        can_take_damage = true;
        damage_delay = 80; // Reinicia o atraso
    }
}

if (is_damaged) {
    sprite_index = spr_player_damage;
    damage_delay -= 1;
    if (damage_delay <= 0) {
        is_damaged = false;
        sprite_index = spr_player_idle;
    }
}

if (global.life <= 1) {
    sprite_index = spr_player_death;
}

if (global.life < 1) {
    game_restart();
}

// Verificar se a vida está abaixo do valor máximo e regenerar
if (global.life < 5) {
    life_regeneration_delay -= 1;
    if (life_regeneration_delay <= 0) {
        global.life += life_regeneration_amount; // Aumenta a vida
        if (global.life > 5) {
            global.life = 5; // Limita a vida ao valor máximo
        }
        life_regeneration_delay = room_speed * 5; // Reinicia o atraso de regeneração
    }
}
#endregion
>>>>>>> 406811f24178cb7c901e82d65b1dcb9b5c505c7c
