/// @description Insert description here
// You can write your code in this editor

if (self.to_black)
{
	self.opacity += 0.04;
	if (self.opacity >= 1)
	{
		room_goto(self.ROOM_TO_GO);
		global.room = self.ROOM_TO_GO;
		self.to_black = false;
		with (obj_yura)
		{
			x = other.roomx;
		}
	}
}
else
{
	if(self.opacity > 0)
		self.opacity -= 0.04;
}
draw_set_color(c_black);
draw_set_alpha(self.opacity);
var _tmp_depth = self.depth
self.depth = -9999;
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);
draw_set_color(c_white);