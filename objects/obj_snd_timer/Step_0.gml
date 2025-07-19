/// @description body of flexible timer


if (array_contains(self.rooms, room))
{
	if (next_delay > 0) 
	{
	    next_delay -= 1;
	    if (next_delay <= 0) 
		{
			var flag = array_any(sounds, function(sound) { return audio_is_playing(sound); });
			if (!flag)
			{
				audio_play_sound(get_random_sound(self.sounds), 100, 0);
				set_next_delay(self.min_delay, self.max_delay);
			}
			else
			{
				var playing_sound = get_playing_sound(self.sounds);
				set_next_delay(self.min_delay, self.max_delay - (playing_sound != undefined ? audio_sound_get_track_position(playing_sound) : 0));
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
	var snd = get_playing_sound(self.sounds);
	if (snd != undefined)
	{
		audio_stop_sound(snd);
	}
}