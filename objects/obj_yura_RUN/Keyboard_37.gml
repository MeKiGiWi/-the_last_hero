if (!keyboard_check(vk_right))
{
	sprite_index = spr_yura_run_LEFT;
	image_index += 8;

	direction = 180;

	speed = 3;
	if (!keyboard_check(vk_shift))
	{
		instance_change(obj_yura, true);
	}
}