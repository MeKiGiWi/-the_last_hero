/// @description playing the random sounds from neigh in the entrances

if !(audio_is_playing(snd_neigh_padik)) && !(audio_is_playing(snd_neigh_padik2) && !(audio_is_playing(snd_neigh_padik3)))
{
	audio_play_sound(choose(snd_neigh_padik, snd_neigh_padik2, snd_neigh_padik3), 99, false);
}