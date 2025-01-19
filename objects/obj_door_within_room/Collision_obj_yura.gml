/// @description entering in room (only by x)

with (RIGHT_MASK)
{
	if (self.image_alpha >= 1)
	{
		other.right_mask_dif = -1 * other.change_speed;
		other.left_mask_dif = other.change_speed;
	}
	else
	{
		other.right_mask_dif = other.change_speed;
		other.left_mask_dif = -1 * other.change_speed;
	}
}
self.to_swap_masks = true;
global.animation = true;