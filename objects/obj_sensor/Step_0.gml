<<<<<<< HEAD
//checar se está colidindo cm o player
var player = place_meeting(x, y, obj_player);

// função letra E
var e = keyboard_check_released(ord("E"));

//o player está colidindo
if (player && e) {
	audio_play_sound(snd_door_open, 50, false);
	//codigo transição
	var tran = instance_create_layer(0, 0, layer, obj_transicao);
	tran.destino = destino;
	tran.destino_x = destino_x;
	tran.destino_y = destino_y;
=======
//checar se está colidindo cm o player
var player = place_meeting(x, y, obj_player);

// função letra E
var e = keyboard_check_released(ord("E"));

//o player está colidindo
if (player && e) {
	audio_play_sound(snd_door_open, 50, false);
	//codigo transição
	var tran = instance_create_layer(0, 0, layer, obj_transicao);
	tran.destino = destino;
	tran.destino_x = destino_x;
	tran.destino_y = destino_y;
>>>>>>> 406811f24178cb7c901e82d65b1dcb9b5c505c7c
}