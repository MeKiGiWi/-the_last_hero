if (global.pause || global.dialog)
{
	speed = 0;
	sprite_index = spr_yura_stat_LEFT;
	exit;
}
if (!keyboard_check(vk_right))
{
	sprite_index = spr_yura_walk_LEFT;
	image_index += 9;
	direction = 180;
	speed = 1;
	if ( keyboard_check(vk_shift))
	{
		instance_change(obj_yura_RUN, true);
	}
}