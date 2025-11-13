function move_state() {
    get_input();

    // Direção
    var _dir = point_direction(0, 0, xaxis, yaxis);
    
    // Calcula a velocidade
    var len = (xaxis != 0 || yaxis != 0) ? spd : 0;
    var hspd = lengthdir_x(len, _dir);
    var vspd = lengthdir_y(len, _dir);

    // Lida com colisões horizontais
    if (place_meeting(x + hspd, y, obj_painel)) {
        while (!place_meeting(x + hspd, y, obj_painel)) {
            x += sign(hspd);
        }
        hspd = 0;
    }
    x += hspd;

    // Lida com colisões verticais
    if (place_meeting(x, y + vspd, obj_painel)) {
        while (!place_meeting(x, y + vspd, obj_painel)) {
            y += sign(vspd);
        }
        vspd = 0;
    }
    y += vspd;

    // Controle da sprite
    _walk = (Iskey_left + key_left1 + Iskey_right + key_right1);

    // Define a escala da imagem
    image_xscale = sign(xaxis) * 6;

    // Altera a sprite
    sprite_index = (_walk > 0) ? spr_player_walk : spr_player_idle;
}
