/// @description change global black scr op and entering btw rooms
// You can write your code in this editor


if (place_meeting(x, y, obj_yura) && keyboard_check(vk_enter) && !self.to_swap_masks)
{
	if (RIGHT_MASK.image_alpha == 1)
	{
		self.cur_dir = 1;
	}
	else
	{
		self.cur_dir = -1;
	}
	RIGHT_MASK.image_alpha = 1;
	LEFT_MASK.image_alpha = 1;
	self.to_swap_masks = true;
	global.animation = true;
}
if (to_swap_masks)
{
	with (obj_yura)
	{
		image_alpha -= other.change_speed * 1;
		if (image_alpha <= 0)
		{
			other.to_tp = true;
		}
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
	if (self.cur_dir == 1)
	{
		RIGHT_MASK.image_alpha = 0;
	}
	else
	{
		LEFT_MASK.image_alpha = 0;
	}
	self.to_tp = false;
	self.to_swap_masks = false;
	global.animation = false;
}