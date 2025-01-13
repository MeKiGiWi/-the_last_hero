if (!keyboard_check(vk_left))
{
	sprite_index = spr_yura_run_RIGHT;
	image_index += 8;

	direction = 0;

	speed = 3;


	if (!keyboard_check(vk_shift))
	{
		instance_change(obj_yura, true);
	}
}