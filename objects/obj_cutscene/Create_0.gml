<<<<<<< HEAD
video = video_open("teste.mp4");
video_enable_loop(false);

//variavel define o estado do video
is_video_finished = false;

// Defina o tamanho da visualização do aplicativo para corresponder ao tamanho do vídeo
view_wview[0] = display_get_width();
=======
video = video_open("video.mp4");
video_enable_loop(false);

//variavel define o estado do video
is_video_finished = false;

// Defina o tamanho da visualização do aplicativo para corresponder ao tamanho do vídeo
view_wview[0] = display_get_width();
>>>>>>> 406811f24178cb7c901e82d65b1dcb9b5c505c7c
view_hview[0] = display_get_height();