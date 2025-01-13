/// @description Smooth black screen
// You can write your code in this editor

if (self.current_goal == undefined)
{
	self.opacity += 0.04;
	if (self.opacity >= 1)
	{
		room_goto(self.ROOM_TO_GO);
		global.room = self.ROOM_TO_GO;
		self.current_goal = undefined;
		with (obj_yura)
		{
			x = other.roomx;
			y = other.roomy;
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
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);
draw_set_color(c_white);