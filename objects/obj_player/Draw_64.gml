<<<<<<< HEAD
if (is_damaged == true) {
    var text = "Atenção: Seu personagem não possui habilidades o suficientes para resistir ao calor extremo!!";
    draw_set_font(fnt_aten);
    draw_set_color(c_yellow);

    var text_width = string_width(text);
    var text_height = string_height(text);
    var draw_x = display_get_width() / 2 - text_width / 2;
    var draw_y = display_get_height() / 2 - text_height / 2;

    draw_text(draw_x, draw_y, text);

    if (!is_damaged_timer_running) {
        is_damaged_timer = room_speed * 3; // 3 segundos
        is_damaged_timer_running = true;
    }

    if (is_damaged_timer > 0) {
        is_damaged_timer -= 1;
    } else {
        is_damaged = false;
        is_damaged_timer_running = false;
    }
}
=======
if (is_damaged == true) {
    var text = "Atenção: Seu personagem não possui habilidades o suficientes para resistir ao calor extremo!!";
    draw_set_font(fnt_aten);
    draw_set_color(c_yellow);

    var text_width = string_width(text);
    var text_height = string_height(text);
    var draw_x = display_get_width() / 2 - text_width / 2;
    var draw_y = display_get_height() / 2 - text_height / 2;

    draw_text(draw_x, draw_y, text);

    if (!is_damaged_timer_running) {
        is_damaged_timer = room_speed * 3; // 3 segundos
        is_damaged_timer_running = true;
    }

    if (is_damaged_timer > 0) {
        is_damaged_timer -= 1;
    } else {
        is_damaged = false;
        is_damaged_timer_running = false;
    }
}
>>>>>>> 406811f24178cb7c901e82d65b1dcb9b5c505c7c
