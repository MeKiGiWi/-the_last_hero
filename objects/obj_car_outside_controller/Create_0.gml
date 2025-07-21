/// @description functions for random cars moving


next_delay = 0;


function set_next_delay(min_delay, max_delay)
{
	if (min_delay == undefined || max_delay == undefined) return;
    next_delay = random_range(min_delay, max_delay) * game_get_speed(gamespeed_fps);
};


function get_random_car(cars)
{
	if (array_length(cars) == 0) return undefined;
	var random_index = irandom(array_length(cars) - 1);
	return cars[random_index];	
};


function create_car_and_sound_randomly(cars, snd_to_left, snd_to_right)
{
	if (next_delay > 0)
	{
		--next_delay;	
	}
	
	var directory = choose(-1, 1);
	var flag = array_any(cars, function(car) { return instance_exists(car); });
	
	if (!flag && next_delay <= 0)
	{
		var car = instance_create_layer(directory == 1 ? -300 : 540, 185, "car_outside", get_random_car(self.cars));
		car.image_xscale = directory;
	}
	
	if (!audio_is_playing(snd_to_left) && !audio_is_playing(snd_to_right) && next_delay <= 0)
	{
		audio_play_sound(directory == 1 ? snd_to_right : snd_to_left, 100, 0);
	}
	
	if (collision_rectangle(0, 0, 360, 360, obj_yura, 0, 0))
	{
		audio_sound_gain(directory == 1 ? snd_to_right : snd_to_left, 1, 100);
		audio_sound_gain(directory != 1 ? snd_to_right : snd_to_left, 0, 100);
	}
	else
	{
		audio_sound_gain(snd_to_left, 0, 100);
		audio_sound_gain(snd_to_right, 0, 100);
	}
	
	if (next_delay <= 0)
	{
		set_next_delay(self.min_delay, self.max_delay);
	}
};