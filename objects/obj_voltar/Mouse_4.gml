<<<<<<< HEAD
audio_play_sound(snd_click, 100, false);
room_goto(global.sala_anterior); // Retorna para a sala anterior
	
if (mouse_check_button_released(mb_left)) {
	if (global.sala_anterior != noone) {
        room_goto(global.sala_anterior); // Retorna para a sala anterior
        obj_jogador.x = global.posicao_jogador_x;
        obj_jogador.y = global.posicao_jogador_y;
    }
}

=======
audio_play_sound(snd_click, 100, false);
room_goto(global.sala_anterior); // Retorna para a sala anterior
	
if (mouse_check_button_released(mb_left)) {
	if (global.sala_anterior != noone) {
        room_goto(global.sala_anterior); // Retorna para a sala anterior
        obj_jogador.x = global.posicao_jogador_x;
        obj_jogador.y = global.posicao_jogador_y;
    }
}

>>>>>>> 406811f24178cb7c901e82d65b1dcb9b5c505c7c
