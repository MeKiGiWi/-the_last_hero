/// @description function for playing steps sounds


play_steps_sounds = function(type_of_floor, sound_of_walking, sound_of_running) 
{
	with (obj_yura)
	{
		if (collision_rectangle(x-3, y-3, x+3, y+3, type_of_floor, 0, 0))
		{
			if (abs(_hsp) == 0 && abs(_vsp) == 0)
			{
				audio_stop_sound(sound_of_walking);
				audio_stop_sound(sound_of_running);
			}
			else if (!is_running)
					&& !(audio_is_playing(sound_of_walking))
			{
				audio_stop_sound(sound_of_running);
				audio_play_sound(sound_of_walking, 100, false);
			}
			else if (is_running)
					&& !(audio_is_playing(sound_of_running))
			{
				audio_stop_sound(sound_of_walking);
				audio_play_sound(sound_of_running, 100, false);
			}
		}
		else 
		{
			audio_stop_sound(sound_of_walking);
			audio_stop_sound(sound_of_running);
		}
	}
};