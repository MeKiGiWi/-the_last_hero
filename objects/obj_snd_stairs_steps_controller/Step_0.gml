/// @description sounds of steps on stairs


if (position_meeting(obj_yura.x, obj_yura.y + 3, obj_stairs))
{
	with (obj_yura)
	{
		if (abs(_hsp) == 0 && abs(_vsp) == 0)
		{
			audio_stop_sound(snd_walk_ladder_loop);
		}
		else if (!is_running)
				&& !(audio_is_playing(snd_walk_ladder_loop))
		{
			audio_play_sound(snd_walk_ladder_loop, 100, false);
		}
	}
}
else
{
	audio_stop_sound(snd_walk_ladder_loop);
}