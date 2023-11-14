repeat(abs(hspd)) { // abs garante que sempre será positivo
    if (place_meeting(x + sign(hspd), y, obj_wall) || place_meeting(x + sign(hspd), y, obj_painel)){
        hspd = 0;
        break; // quebra o looping
    } else {
        x += sign(hspd);
    }
}

repeat(abs(vspd)) { // abs garante que sempre será positivo
    if (place_meeting(x, y + sign(vspd), obj_wall) || place_meeting(x, y + sign(vspd), obj_painel)){
        vspd = 0;
        break; // quebra o looping
    } else {
        y += sign(vspd);
    }
}
