/// @description change global black scr op and entering btw rooms
// You can write your code in this editor

if (global.to_black_scr and global.gate_num == self.id)
{
	global.black_scr_opacity += 0.04;
	if (global.black_scr_opacity >= 1)
	{
		room_goto(self.ROOM_TO_GO);
		global.room = self.ROOM_TO_GO;
		global.to_black_scr = false;
		with (obj_yura)
		{
			x = other.roomx != -1 ? other.roomx : x;
			y = other.roomy != -1 ? other.roomy : y;
		}
	}
}
