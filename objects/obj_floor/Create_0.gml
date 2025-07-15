play_steps_sounds = function(target_entity, sound_of_walking, sound_of_running) 
{
	if (position_meeting(target_entity.x, target_entity.y + 3, self))
	{
		with (target_entity)
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
	}
	else 
	{
		audio_stop_sound(sound_of_walking);
		audio_stop_sound(sound_of_running);
	}
};