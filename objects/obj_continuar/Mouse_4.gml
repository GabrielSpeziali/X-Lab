<<<<<<< HEAD
audio_play_sound(snd_click, 100, false);
room_goto(global.sala_anterior);

        // Ative a visibilidade do termômetro e da barra de vida
        if (instance_exists(obj_thermometer)) {
            obj_thermometer.visible = true;
        }
        if (instance_exists(obj_life_bar)) {
            obj_life_bar.visible = true;
=======
audio_play_sound(snd_click, 100, false);
room_goto(global.sala_anterior);

        // Ative a visibilidade do termômetro e da barra de vida
        if (instance_exists(obj_thermometer)) {
            obj_thermometer.visible = true;
        }
        if (instance_exists(obj_life_bar)) {
            obj_life_bar.visible = true;
>>>>>>> 406811f24178cb7c901e82d65b1dcb9b5c505c7c
        }