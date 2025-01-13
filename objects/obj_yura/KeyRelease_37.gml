image_index += 6;
speed = 0;
if (global.pause || global.dialog)
{
	if (sprite_index = spr_yura_walk_LEFT)
	{
		sprite_index = spr_yura_stat_LEFT;
	}
	else if (sprite_index = spr_yura_walk_RIGHT)
	{
		sprite_index = spr_yura_stat_RIGHT;
	}
	exit;
}
else
{
	sprite_index = spr_yura_stat_LEFT;
}