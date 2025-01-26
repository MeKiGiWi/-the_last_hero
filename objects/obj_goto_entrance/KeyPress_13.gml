/// @description opening the iron doors


if place_meeting(x, y, obj_yura)
{
	if !audio_is_playing(snd_door_iron)
	{
		audio_play_sound(snd_door_iron, 100, false);
	}
	else
	{
		audio_stop_sound(snd_door_iron);
		audio_play_sound(snd_door_iron, 100, false);
	}
}