if (audio_sound_get_track_position(song_id) >= len_song1 - 1 and current_song = 1) {
	audio_stop_sound(song_id);
	song_id = audio_play_sound(song2, 1000, false);
	current_song = 2;
} else if (audio_sound_get_track_position(song_id) >= len_song2 - 1 and current_song = 2) {
	audio_stop_sound(song_id);
	song_id = audio_play_sound(song3, 1000, false);
	current_song = 3;
} else if (audio_sound_get_track_position(song_id) >= len_song3 - 1 and current_song = 3) {
	audio_stop_sound(song_id);
	song_id = audio_play_sound(song4, 1000, false);
	current_song = 4;
} else if (audio_sound_get_track_position(song_id) >= len_song4 - 1 and current_song = 4) {
	audio_stop_sound(song_id);
	song_id = audio_play_sound(song5, 1000, false);
	current_song = 5;
} else if (audio_sound_get_track_position(song_id) >= len_song5 - 1 and current_song = 5) {
	audio_stop_sound(song_id);
	song_id = audio_play_sound(song1, 1000, false);
	current_song = 1;
}