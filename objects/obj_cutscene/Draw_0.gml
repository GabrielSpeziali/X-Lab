var _videoData = video_draw(); // Processa o vídeo
var _videoStatus = _videoData[0];
if (_videoStatus == 0) // Roda sem erro
{
    var _videoSurface = _videoData[1];

    // Obtenha as dimensões da room
    var _room_width = 1366;
    var _room_height = 720;

    // Calcule a escala para cobrir a room
    var scaleX = _room_width / surface_get_width(_videoSurface);
    var scaleY = _room_height / surface_get_height(_videoSurface);

    // Desenhe o vídeo dimensionado para cobrir a room
    draw_surface_stretched(_videoSurface, 0, 0, room_width, room_height);
}
