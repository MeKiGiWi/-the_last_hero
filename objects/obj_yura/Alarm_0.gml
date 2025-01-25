/// @description playing dogs sounds


if !(audio_is_playing(snd_dogs1)) && !(audio_is_playing(snd_dogs2))
{
	audio_play_sound(choose(snd_dogs1, snd_dogs2), 99, false);
}