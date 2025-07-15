if ((room == rm_street_0 || room == rm_street_1 || room == rm_street_2) 
	&& instance_exists(obj_yura))
{
	with (obj_yura)
	{
		if (abs(_hsp) == 0 && abs(_vsp) == 0)
		{
			audio_stop_sound(snd_walk_loop);
			audio_stop_sound(snd_run_loop);
		}
		else if (!is_running)
				&& !(audio_is_playing(snd_walk_loop))
		{
			audio_stop_sound(snd_run_loop);
			audio_play_sound(snd_walk_loop, 100, false);
		}
		else if (is_running)
				&& !(audio_is_playing(snd_run_loop))
		{
			audio_stop_sound(snd_walk_loop);
			audio_play_sound(snd_run_loop, 100, false);
		}
	}
}