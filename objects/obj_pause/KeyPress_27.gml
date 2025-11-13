<<<<<<< HEAD
if key_pause {
    if (room != rm_Pause) {
        if (instance_exists(obj_player)) {
            obj_player.persistent = false;
            isPause = true;
            instance_activate_all();
            window_set_cursor(cr_default); // Ativa o cursor

            // Desative a visibilidade do termômetro e da barra de vida
            if (instance_exists(obj_thermometer)) {
                obj_thermometer.visible = false;
            }
            if (instance_exists(obj_life_bar)) {
                obj_life_bar.visible = false;
            }
        }
        room_goto(global.sala_anterior);
        room_goto(rm_Pause);
    } else {
        room_goto(global.sala_anterior);

        // Ative a visibilidade do termômetro e da barra de vida
        if (instance_exists(obj_thermometer)) {
            obj_thermometer.visible = true;
        }
        if (instance_exists(obj_life_bar)) {
            obj_life_bar.visible = true;
        }
    }
=======
if key_pause {
    if (room != rm_Pause) {
        if (instance_exists(obj_player)) {
            obj_player.persistent = false;
            isPause = true;
            instance_activate_all();
            window_set_cursor(cr_default); // Ativa o cursor

            // Desative a visibilidade do termômetro e da barra de vida
            if (instance_exists(obj_thermometer)) {
                obj_thermometer.visible = false;
            }
            if (instance_exists(obj_life_bar)) {
                obj_life_bar.visible = false;
            }
        }
        room_goto(global.sala_anterior);
        room_goto(rm_Pause);
    } else {
        room_goto(global.sala_anterior);

        // Ative a visibilidade do termômetro e da barra de vida
        if (instance_exists(obj_thermometer)) {
            obj_thermometer.visible = true;
        }
        if (instance_exists(obj_life_bar)) {
            obj_life_bar.visible = true;
        }
    }
>>>>>>> 406811f24178cb7c901e82d65b1dcb9b5c505c7c
}