if (place_meeting(x, y, obj_yura) && keyboard_check_pressed(vk_enter))
{
	room_goto(self.goal_room);
	with (obj_yura)
	{
		x = other.needx;
		y = other.needy;
	}
	global.room = self.goal_room_num;
}