/// @description sounds of steps on stone


if (place_meeting(obj_yura.x, obj_yura.y, obj_stone_floor))
{
	with (obj_yura)
	{
		if (abs(_hsp) == 0 && abs(_vsp) == 0)
		{
			audio_stop_sound(snd_walk_padik_loop);
			audio_stop_sound(snd_run_padik_loop);
		}
		else if (!is_running)
				&& !(audio_is_playing(snd_walk_padik_loop))
		{
			audio_stop_sound(snd_run_padik_loop);
			audio_play_sound(snd_walk_padik_loop, 100, false);
		}
		else if (is_running)
				&& !(audio_is_playing(snd_run_padik_loop))
		{
			audio_stop_sound(snd_walk_padik_loop);
			audio_play_sound(snd_run_padik_loop, 100, false);
		}
	}
}
else
{
	audio_stop_sound(snd_walk_padik_loop);
	audio_stop_sound(snd_run_padik_loop);
}