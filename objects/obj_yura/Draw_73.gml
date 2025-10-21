
if (!global.to_black_scr)
{
	if (global.black_scr_opacity > 0)
	{
	global.black_scr_opacity -= 0.04;
	}
}
draw_set_color(c_black);
draw_set_alpha(global.black_scr_opacity);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);
draw_set_color(c_white);