if (!global.music_started) {
    audio_play_sound(snd_menu, music_volume, true);
    global.music_started = true; // Marca a música como iniciada
}
