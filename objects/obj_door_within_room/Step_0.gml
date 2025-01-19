/// @description change global black scr op and entering btw rooms
// You can write your code in this editor

if (to_swap_masks)
{
	//global.to_black_scr = true;
	//global.gate_num = id;
	with (LEFT_MASK)
	{
		self.image_alpha += other.left_mask_dif > 0 ? other.left_mask_dif : 0;
		if (other.left_mask_dif > 0 && self.image_alpha >= 1)
		{
			other.to_tp = true;
		}
	}
	with (RIGHT_MASK)
	{
		self.image_alpha += other.right_mask_dif > 0 ? other.right_mask_dif : 0;
		if (other.right_mask_dif > 0 && self.image_alpha >= 1 || global.black_scr_opacity >= 1)
		{
			other.to_tp = true;
		}
	}
	with (obj_yura)
	{
		image_alpha -= other.change_speed * 3;
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
	if (self.right_mask_dif < 0)
	{
		with (RIGHT_MASK)
		{
			image_alpha = 0;
		}
	}
	else
	{
		with (LEFT_MASK)
		{
			image_alpha = 0;
		}
	}
	self.to_tp = false;
	self.to_swap_masks = false;
	global.animation = false;
	global.to_black_scr = false;
	//with (LEFT_MASK)
	//{
	//	image_alpha = !image_alpha;
	//}
	//with (RIGHT_MASK)
	//{
	//	image_alpha = !image_alpha;
	//}
}
if (global.to_black_scr && global.gate_num = self.id)
{
	global.black_scr_opacity += self.change_speed;
}
