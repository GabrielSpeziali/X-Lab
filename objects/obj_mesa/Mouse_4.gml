if mouse_check_button_pressed(mb_left) {
    // Alterna entre os sprites com base no estado atual
    if spriteState == 0 {
        // Se o estado atual for 0, mude para o segundo sprite e atualize o estado
        sprite_index = spr_mesa_2;
        spriteState = 1;
    } else {
        // Se o estado atual for 1, mude de volta para o primeiro sprite e atualize o estado
        sprite_index = spr_mesa;
        spriteState = 0;
    }
}