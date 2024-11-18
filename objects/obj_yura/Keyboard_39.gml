if (global.pause || global.dialog)
{
	speed = 0;
	exit;
}
if (global.stairs != 0)
{
	move_and_collide(1, global.stairs, obj_stairs);
}
else if (!keyboard_check(vk_left))
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