// enter vars: needx, needy and goal_room when obj would created
if (place_meeting(x, y, obj_yura) && keyboard_check_pressed(vk_enter))
{
	self.to_black = true;
}
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
			y = other.roomy;
		}
	}
}
else
{
	if(self.opacity > 0)
		self.opacity -= 0.04;
}