/// @description entering in room (only by x)

if (LEFT_MASK != undefined)
{
	with (LEFT_MASK)
	{
		self.image_alpha++;
		self.image_alpha %= 2;
	}
}

if (RIGHT_MASK != undefined)
{
	with (RIGHT_MASK)
	{
		self.image_alpha++;
		self.image_alpha %= 2;
	}
}

with (obj_yura)
{
	x = other.roomx;
}