song1 = snd_background1;
song2 = snd_background2;
song3 = snd_background3;
song4 = snd_background4;
song5 = snd_background5;

len_song1 = audio_sound_length(song1);
len_song2 = audio_sound_length(song2);
len_song3 = audio_sound_length(song3);
len_song4 = audio_sound_length(song4);
len_song5 = audio_sound_length(song5);

current_song = 1;
song_id = audio_play_sound(song1, 1000, false);