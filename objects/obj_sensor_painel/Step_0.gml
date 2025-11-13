<<<<<<< HEAD
// Função letra E
var e = keyboard_check_pressed(ord("E"));

if (e) {
    if (place_meeting(x, y, obj_player)) {
        if (painelon) {
			global.paineloff = true;
            painelon = false; // Desativa o painel
            with (obj_popup) {
                instance_destroy(); // Destroi o objeto do painel
            }
            with (obj_btm_0) {
                instance_destroy(); // Destroi o objeto do painel
            }
            with (obj_btm_1) {
                instance_destroy(); // Destroi o objeto do painel
            }
            with (obj_btm_2) {
                instance_destroy(); // Destroi o objeto do painel
            }
            with (obj_painel_bck) {
                instance_destroy(); // Destroi o objeto do painel
            }
            obj_player.can_move = true; // Permite o movimento do jogador
        } else {
            painelon = true; // Ativa o painel
			global.paineloff = false;

            var camera_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2;
            var camera_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;
            instance_create_layer(camera_x, camera_y, "painel", obj_popup); // Cria o objeto no centro da câmera na camada "painel"
            instance_create_layer(1930, 260, "btm", obj_btm_1); // Cria o objeto no centro da câmera na camada "painel"
            instance_create_layer(1930, 480, "btm", obj_btm_2); // Cria o objeto no centro da câmera na camada "painel"
            instance_create_layer(2000, 595, "btm", obj_btm_0); // Cria o objeto no centro da câmera na camada "painel"
            instance_create_layer(2746, 0, "painel_back", obj_painel_bck);
            obj_player.can_move = false; // Bloqueia o movimento do jogador
        }
    }
}

if (global.btm_enter1 == true) {
	temp = true;
    instance_create_layer(1800, 260, "btm", obj_temp_rm1);
}
if (global.btm_enter2 == true) {
	temps = true;
    instance_create_layer(1800, 480, "btm", obj_temp_rm2);
}

if (temps == true && temp == true) {
	global.enter00 = true;
	if (global.btm_enter0 == true) {
		global.kelvinHability = true;
		instance_create_layer(2203, 260, "btm", obj_temp_kelvin1);
		instance_create_layer(2203, 480, "btm", obj_temp_kelvin2);
	}
}

if (painelon == false) {
	instance_destroy(obj_temp_rm1);
	instance_destroy(obj_temp_rm2);
	instance_destroy(obj_temp_kelvin1);
	instance_destroy(obj_temp_kelvin2);
}



if (painelon == false) {
	instance_activate_layer("mensage");
    window_set_cursor(cr_none);
} else {
	instance_deactivate_layer("mensage");
    window_set_cursor(cr_default);
}


=======
// Função letra E
var e = keyboard_check_pressed(ord("E"));

if (e) {
    if (place_meeting(x, y, obj_player)) {
        if (painelon) {
			global.paineloff = true;
            painelon = false; // Desativa o painel
            with (obj_popup) {
                instance_destroy(); // Destroi o objeto do painel
            }
            with (obj_btm_0) {
                instance_destroy(); // Destroi o objeto do painel
            }
            with (obj_btm_1) {
                instance_destroy(); // Destroi o objeto do painel
            }
            with (obj_btm_2) {
                instance_destroy(); // Destroi o objeto do painel
            }
            with (obj_painel_bck) {
                instance_destroy(); // Destroi o objeto do painel
            }
            obj_player.can_move = true; // Permite o movimento do jogador
        } else {
            painelon = true; // Ativa o painel
			global.paineloff = false;

            var camera_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2;
            var camera_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;
            instance_create_layer(camera_x, camera_y, "painel", obj_popup); // Cria o objeto no centro da câmera na camada "painel"
            instance_create_layer(1930, 260, "btm", obj_btm_1); // Cria o objeto no centro da câmera na camada "painel"
            instance_create_layer(1930, 480, "btm", obj_btm_2); // Cria o objeto no centro da câmera na camada "painel"
            instance_create_layer(2000, 595, "btm", obj_btm_0); // Cria o objeto no centro da câmera na camada "painel"
            instance_create_layer(2746, 0, "painel_back", obj_painel_bck);
            obj_player.can_move = false; // Bloqueia o movimento do jogador
        }
    }
}

if (global.btm_enter1 == true) {
	temp = true;
    instance_create_layer(1800, 260, "btm", obj_temp_rm1);
}
if (global.btm_enter2 == true) {
	temps = true;
    instance_create_layer(1800, 480, "btm", obj_temp_rm2);
}

if (temps == true && temp == true) {
	global.enter00 = true;
	if (global.btm_enter0 == true) {
		global.kelvinHability = true;
		instance_create_layer(2203, 260, "btm", obj_temp_kelvin1);
		instance_create_layer(2203, 480, "btm", obj_temp_kelvin2);
	}
}

if (painelon == false) {
	instance_destroy(obj_temp_rm1);
	instance_destroy(obj_temp_rm2);
	instance_destroy(obj_temp_kelvin1);
	instance_destroy(obj_temp_kelvin2);
}



if (painelon == false) {
	instance_activate_layer("mensage");
    window_set_cursor(cr_none);
} else {
	instance_deactivate_layer("mensage");
    window_set_cursor(cr_default);
}


>>>>>>> 406811f24178cb7c901e82d65b1dcb9b5c505c7c
