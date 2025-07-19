/// @description play snore sound


if (room == rm_entrance_1)
{
	if !audio_is_playing(snd_HRAP_hrrr)
	{
		audio_play_sound(snd_HRAP_hrrr, 100, 0);
	}
}
else
{
	audio_stop_sound(snd_HRAP_hrrr);	
}