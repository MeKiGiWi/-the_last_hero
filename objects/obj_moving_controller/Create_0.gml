/// @description basic timer functions for random events


next_delay = 0;


function set_next_delay(min_delay, max_delay)
{
	if (min_delay == undefined || max_delay == undefined) return;
    next_delay = random_range(min_delay, max_delay) * game_get_speed(gamespeed_fps);
};


function get_random_sprite(sprites)
{
	if (array_length(sprites) == 0) return undefined;
	var random_index = irandom(array_length(sprites) - 1);
	return sprites[random_index];
};