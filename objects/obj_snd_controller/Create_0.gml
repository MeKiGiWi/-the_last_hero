play_sound_in_certain_rooms = function(sound, certain_rooms)
{
	if array_contains(certain_rooms, room)
	{
		if !audio_is_playing(sound)
		{
			audio_play_sound(sound, 100, 0);
		}
	}
	else
	{
		audio_stop_sound(sound);	
	}
};