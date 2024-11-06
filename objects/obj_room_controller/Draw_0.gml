if (global.room_to_go != undefined)
{
	opacity += 0.04;
	if (opacity >= 1)
	{
		room_goto(global.room_to_go);
		global.room = global.room_to_go;
		global.room_to_go = undefined;
		with (obj_yura)
		{
			x = global.roomx;
			y = global.roomy;
		}
	}
}
else
{
	if(opacity > 0)
		opacity -= 0.04;
}
draw_set_color(c_black);
draw_set_alpha(opacity);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);
draw_set_color(c_white);