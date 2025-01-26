/// @description playing creak sounds in the entrances


if !(audio_is_playing(snd_creak_padik)) && !(audio_is_playing(snd_creak_padik2) && !(audio_is_playing(snd_creak_padik3)))
{
	audio_play_sound(choose(snd_creak_padik, snd_creak_padik2, snd_creak_padik3), 99, false);
}