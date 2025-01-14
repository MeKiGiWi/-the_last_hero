/// @description walking and colliding
// You can write your code in this editor
if (keyboard_check(vk_shift))
{
	instance_change(obj_yura_RUN, true);
}
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up_arrow = keyboard_check(vk_up);
var down_arrow = keyboard_check(vk_down);

var _hsp = right - left;
var _vsp = down_arrow - up_arrow;
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
else if (sprite_index == spr_yura_walk_LEFT)
{
	sprite_index = spr_yura_stat_LEFT;
}
else if (sprite_index == spr_yura_walk_RIGHT)
{
	sprite_index = spr_yura_stat_RIGHT;
}
move_and_collide(_hsp * walk_speed, 0, obj_floor);


