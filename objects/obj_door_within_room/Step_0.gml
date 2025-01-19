/// @description change global black scr op and entering btw rooms
// You can write your code in this editor

if (to_swap_masks)
{
	with (LEFT_MASK)
	{
		self.image_alpha += other.left_mask_dif;
	}
	with (RIGHT_MASK)
	{
		self.image_alpha += other.right_mask_dif;
		if (other.right_mask_dif > 0 && self.image_alpha >= 1)
		{
			other.to_tp = true;
		}
		else if (other.right_mask_dif < 0 && self.image_alpha <= 0)
		{
			other.to_tp = true;
		}
	}
	with (obj_yura)
	{
		image_alpha -= other.change_speed * 2;
	}
}
if (self.to_tp)
{
	with (obj_yura)
	{
		x = other.roomx != -1 ? other.roomx : x;
		y = other.roomy != -1 ? other.roomy: y;
		image_alpha = 1;
	}
	self.to_tp = false;
	self.to_swap_masks = false;
	global.animation = false;
}