if (global.pause || global.dialog)
{
	speed = 0;
	sprite_index = spr_yura_stat_LEFT;
	exit;
}
if (!keyboard_check(vk_left))
{
	sprite_index = spr_yura_walk_RIGHT;
	image_index += 9;
	direction = 0;
	speed = 1;
	if (keyboard_check(vk_shift))
	{
		instance_change(obj_yura_RUN, true);
	}
}