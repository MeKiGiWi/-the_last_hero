/// @description function for playing sound in certain rooms


is_coords_active = !(x1 == -1 && x2 == -1 && y1 == -1 && y2 == -1);


function play_background_sound_in_rooms(sound, rooms, mode)
{
	if (array_contains(rooms, room))
	{
		if (mode)
		{
			if (collision_rectangle(x1, y1, x2, y2, obj_yura, 0, 0))
			{
				if (!audio_is_playing(sound))
				{
					audio_play_sound(sound, 100, 0);
				}
			}
			else
			{
				audio_stop_sound(sound);
			}
		}
		else
		{
			if (!audio_is_playing(sound))
			{
				audio_play_sound(sound, 100, 0);
			}
		}
	}
	else
	{
		audio_stop_sound(sound);	
	}
};