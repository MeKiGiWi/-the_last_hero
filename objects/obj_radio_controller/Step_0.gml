/// @description script for changing gain depends on rooms


if (!audio_is_playing(snd_radio_home1) || !audio_is_playing(snd_radio_home2))
{
	audio_sound_gain(snd_radio_home2, 0, 100);
	audio_sound_gain(snd_radio_home1, 0, 100);
}
else
{	
	if (room == rm_room_1 || (room == rm_room_2 && collision_rectangle(360, 0, 640, 360, obj_yura, 0, 0)))
	{
		audio_sound_gain(snd_radio_home2, 1, 100);
		audio_sound_gain(snd_radio_home1, 0, 100);
	}
	else if (room == rm_room_2)
	{
		audio_sound_gain(snd_radio_home2, 0, 100);
		audio_sound_gain(snd_radio_home1, 1, 100);
	}
	else
	{
		audio_sound_gain(snd_radio_home2, 0, 100);
		audio_sound_gain(snd_radio_home1, 0, 100);
	}
}