// enter vars: needx, needy and goal_room when obj would created
if (place_meeting(x, y, obj_yura) && keyboard_check_pressed(vk_enter))
{
	self.current_goal = self.ROOM_TO_GO;
	room_goto(self.ROOM_TO_GO);
	with (obj_yura)
	{
		x = other.roomx;
		y = other.roomy;
	}
}
