/// @description functions for flexible timer and values init


next_delay = 0;


function set_next_delay(min_delay, max_delay)
{
	if (min_delay == undefined || max_delay == undefined) return;
    next_delay = random_range(min_delay, max_delay) * game_get_speed(gamespeed_fps);
};


function get_random_sound(sounds)
{
	if (array_length(sounds) == 0) return undefined;
	var random_index = irandom(array_length(sounds) - 1);
	return sounds[random_index];
};


function get_playing_sound(sounds)
{
	for (var i = 0; i < array_length(sounds); ++i)
	{
		if (audio_is_playing(sounds[i]))
		{
			return sounds[i];
		}
	}
	return undefined;
};