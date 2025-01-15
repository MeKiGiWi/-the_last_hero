/// @description walking and colliding
// You can write your code in this editor

var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up_arrow = keyboard_check(vk_up);
var down_arrow = keyboard_check(vk_down);

var _hsp = right - left;
var _vsp = down_arrow - up_arrow;
_vsp = 0;

if (keyboard_check(vk_shift))
{
	_hsp *= 3;
	show_debug_message("regaet {0}", _hsp);
}

if (global.pause || global.dialog)
{
	_hsp = 0;
	_vsp = 0
}

if (_hsp == 1)
{
	sprite_index = spr_yura_walk_RIGHT;
}
else if (_hsp == -1)
{
	sprite_index = spr_yura_walk_LEFT;
}
else if (_hsp == -3)
{
	sprite_index = spr_yura_run_LEFT;
}
else if (_hsp == 3)
{
	sprite_index = spr_yura_run_RIGHT;
}
else if (sprite_index == spr_yura_walk_LEFT || sprite_index == spr_yura_run_LEFT)
{
	sprite_index = spr_yura_stat_LEFT;
}
else if (sprite_index == spr_yura_walk_RIGHT || sprite_index == spr_yura_run_RIGHT)
{
	sprite_index = spr_yura_stat_RIGHT;
}

move_and_collide(_hsp * walk_speed, _vsp, obj_floor);

while (!place_meeting(x, y + 1, obj_floor))
{
	y++;
}
