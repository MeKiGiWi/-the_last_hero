/// @description body of flexible timer



if (array_contains(self.rooms, room))
{
	if (next_delay > 0) 
	{
		next_delay -= 1;
		if (next_delay <= 0) 
		{
			if !(self.sounds_can_be_overlayed)
			{
				var flag = array_any(sounds, function(sound) { return audio_is_playing(sound); });
				if (!flag)
				{
					audio_play_sound(get_random_sound(self.sounds), 100, 0);
					set_next_delay(self.min_delay, self.max_delay);
				}
				else
				{
					set_next_delay(self.min_delay, self.min_delay);
				}
			}
			else
			{
				audio_play_sound(get_random_sound(self.sounds), 100, 0);
				set_next_delay(self.min_delay, self.max_delay);
			}
		}
	}
	else
	{
		set_next_delay(self.min_delay, self.max_delay);
	}
}
else
{
	next_delay = 0;
	stop_all_certain_sounds(self.sounds);
}