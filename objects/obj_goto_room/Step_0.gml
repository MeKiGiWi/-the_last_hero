/// @description global black screen opacity editing and entering between rooms
// You can write your code in this editor
if (place_meeting(x, y, obj_yura) && keyboard_check_pressed(vk_enter))
{
	global.to_black_scr = true;
	global.gate_num = self.id
}
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
			x = other.roomx;
			y = other.roomy;
			if (other.START_SPRITE != undefined)
			{
				sprite_index = other.START_SPRITE;
			}
		}
	}
}