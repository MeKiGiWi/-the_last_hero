if (place_meeting(x, y, obj_yura))
{
	if (keyboard_check_pressed(vk_enter))
	{
		if (my_text_box == noone)
		{
			my_text_box = instance_create_depth(0, 0, 0, obj_dialog_text_box, {	text: my_text})
		}
	}
}
else if (my_text_box != noone)
	{
		instance_destroy(my_text_box, false);
		my_text_box = noone;	
	}
