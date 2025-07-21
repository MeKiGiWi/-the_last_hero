/// @description moving the car


if (image_xscale == 1)
{
	if (x >= 160)
	{
		instance_destroy();
	}
	else
	{
		x++;
	}
}
else
{
	if (x <= -25)
	{
		instance_destroy();
	}
	else
	{
		x--;
	}
}