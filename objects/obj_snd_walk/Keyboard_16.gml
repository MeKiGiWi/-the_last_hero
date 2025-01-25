if (keyboard_check(vk_left))
{
	audio_stop_sound(snd_walk_loop);

	playOnce = true;
}

if (keyboard_check(vk_right))
{
	audio_stop_sound(snd_walk_loop);

	playOnce = true;
}