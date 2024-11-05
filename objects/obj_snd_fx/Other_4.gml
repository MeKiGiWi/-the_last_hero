
audio_play_sound_ext({
sound: snd_wind,
priority: 1,
loop: true,
gain: 0.2,
position:
	{
		x: 0,
		y: display_get_height() / 2
	}
});


audio_play_sound_ext({
sound: snd_neigh,
priority: 2,
loop: false,
gain: 0.6,
position:
	{
		x: 0,
		y: display_get_height() / 2,
		z: 300
	}
});


audio_play_sound_ext({
sound: mus_sedaya_noch,
priority: 3,
loop: true,
gain: 1.0
});


audio_play_sound_ext({
sound: snd_dogs,
priority: 2,
loop: true,
gain: 0.5
});


audio_set_master_gain(0, 3);