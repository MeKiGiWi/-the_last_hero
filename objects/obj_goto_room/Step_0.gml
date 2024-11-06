if (place_meeting(x, y, obj_yura) && keyboard_check_pressed(vk_enter))
{
	global.room_to_go = self.goal_room;
	global.roomx = needx;
	global.roomy = needy;
}