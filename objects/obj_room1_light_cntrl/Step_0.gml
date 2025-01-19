/// @description turning on and off light

with (obj_room1_BLACK_L)
{
	if (image_alpha == 1)
	{
		layer_background_alpha(layer_background_get_id("L3"), 0);
		layer_background_alpha(layer_background_get_id("L1"), 0);
		layer_background_alpha(layer_background_get_id("lamp_on_left"), 0);
		layer_background_alpha(layer_background_get_id("L4"), 1);
		layer_background_alpha(layer_background_get_id("L2"), 1);
		layer_background_alpha(layer_background_get_id("lamp_on_right"), 1);
	}
	else
	{
		layer_background_alpha(layer_background_get_id("L3"), 1);
		layer_background_alpha(layer_background_get_id("L1"), 1);
		layer_background_alpha(layer_background_get_id("lamp_on_left"), 1);
		layer_background_alpha(layer_background_get_id("L2"), 0);
		layer_background_alpha(layer_background_get_id("L4"), 0);
		layer_background_alpha(layer_background_get_id("lamp_on_right"), 0);
	}
}
