// Já mudei de room
if (mudei) {
    alpha -= transition_speed;

} else // Ainda não mudei de room
{
    alpha += transition_speed;
}

// Quando o alpha passar de 1, mudo de room
if (alpha >= 1)
{
    room_goto(destino);
    
    // Controlando a posição do player
    obj_player.x = destino_x;
    obj_player.y = destino_y;
}
