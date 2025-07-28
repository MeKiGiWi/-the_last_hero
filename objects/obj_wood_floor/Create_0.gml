/// @description function for playing steps sounds on wood with creaks


function play_steps_sounds(type_of_floor, sound_of_walking, sound_of_running, creaking_sounds, probability_percentage) 
{
	with (obj_yura)
	{
		if (collision_rectangle(x - 3, y - 3, x + 3, y + 3, type_of_floor, 0, 0))
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
				if (array_length(creaking_sounds) != 0)
				{
					if (irandom_range(1, 100) <= probability_percentage)
					{
						if (get_playing_sound(creaking_sounds) == undefined)
						{
							audio_play_sound(get_random_sound(creaking_sounds), 100, 0);
						}
					}
				}
			}
			else if (is_running)
					&& !(audio_is_playing(sound_of_running))
			{
				audio_stop_sound(sound_of_walking);
				audio_play_sound(sound_of_running, 100, false);
				if (array_length(creaking_sounds) != 0)
				{
					if (irandom_range(1, 100) <= probability_percentage)
					{
						if (get_playing_sound(creaking_sounds) == undefined)
						{
							audio_play_sound(get_random_sound(creaking_sounds), 100, 0);
						}
					}
				}
			}
		}
		else 
		{
			audio_stop_sound(sound_of_walking);
			audio_stop_sound(sound_of_running);
		}
	}
};


function get_playing_sound(sounds)
{
	for (var i = 0; i < array_length(sounds); ++i)
	{
		if (audio_is_playing(sounds[i]))
		{
			return sounds[i];	
		}
	}
	
	return undefined;
};


function get_random_sound(sounds)
{
	if (array_length(sounds) == 0) return undefined;
	var random_index = irandom(array_length(sounds) - 1);
	return sounds[random_index];
};