self.persistent = true;

function play_background_sound_in_rooms(sound, rooms)
{
	if array_contains(rooms, room)
	{
		if !audio_is_playing(sound) && sound != undefined
		{
			audio_play_sound(sound, 100, 0);
		}
	}
	else
	{
		audio_stop_sound(sound);	
	}
};