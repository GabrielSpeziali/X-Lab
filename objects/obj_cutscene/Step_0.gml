if keyboard_check_pressed(vk_enter) {
	video_close();
    room_goto_next(); 
}

var _status = video_get_status();
    if (_status == video_status_closed)
    {
        room_goto_next(); //vai para proxima sala se o video acabar
    }
    else if (_status == video_status_playing)
    {
        //nada a fazer
    }


