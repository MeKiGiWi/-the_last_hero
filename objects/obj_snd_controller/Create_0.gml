/// @description function for playing sound in certain rooms


is_coords_active = !(x1 == -1 && x2 == -1 && y1 == -1 && y2 == -1);


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