/// @description rule of move birds in cutscene


if (image_xscale == 1)
{
	x += fly_speed;	
}
else
{
	x -= fly_speed;	
}

if (x >= 800)
{
	instance_destroy();	
}