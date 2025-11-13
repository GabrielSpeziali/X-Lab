<<<<<<< HEAD
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
=======
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
>>>>>>> 406811f24178cb7c901e82d65b1dcb9b5c505c7c
