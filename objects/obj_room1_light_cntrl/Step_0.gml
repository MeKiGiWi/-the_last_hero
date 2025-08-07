/// @description turning on and off light


with (obj_room1_BLACK_L)
{
	if (self.image_alpha > 0)
	{
		layer_background_alpha(layer_background_get_id("left_light_trace"), 0);
		layer_background_alpha(layer_background_get_id("left_light"), 0);
		layer_background_alpha(layer_background_get_id("lamp_on_left"), 0);
	}
	else
	{
		layer_background_alpha(layer_background_get_id("left_light_trace"), 1);
		layer_background_alpha(layer_background_get_id("left_light"), 1);
		layer_background_alpha(layer_background_get_id("lamp_on_left"), 1);
	}
}
with (obj_room1_BLACK_R)
{
	if (self.image_alpha > 0)
	{
		layer_background_alpha(layer_background_get_id("right_light_trace"), 0);
		layer_background_alpha(layer_background_get_id("right_light"), 0);
		layer_background_alpha(layer_background_get_id("lamp_on_right"), 0);
	}
	else
	{
		layer_background_alpha(layer_background_get_id("right_light_trace"), 1);
		layer_background_alpha(layer_background_get_id("right_light"), 1);
		layer_background_alpha(layer_background_get_id("lamp_on_right"), 1);
	}
}