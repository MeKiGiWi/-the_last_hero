/// @description playing current sound in certain rooms


if (is_coords_active)
{
	if (collision_rectangle(x1, y1, x2, y2, obj_yura, 0, 0))
	{
		play_background_sound_in_rooms(self.background_sound, self.rooms);
	}
	else
	{
		audio_stop_sound(self.background_sound);
	}
}

play_background_sound_in_rooms(self.background_sound, self.rooms);