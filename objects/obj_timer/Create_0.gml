/*
function get_random_delay_btw_borders(min_delay_in_sec, max_delay_in_sec)
{
	return random_range(min_delay_in_sec, max_delay_in_sec);
};


function get_random_sound(sounds)
{
	if (array_length(sounds) == 0) return undefined;
	var random_index = irandom(array_length(sounds) - 1);
	return sounds[random_index];
};

function play_sound_after_timer(sounds, min_delay, max_delay)
{
	var delay_in_steps = game_get_speed(gamespeed_fps);
	if (delay_in_steps > 0)
	{
		--delay_in_steps;
	}
	else if (delay_in_steps == 0)
	{
		get_random_sound(sounds);	
	}
};
*/