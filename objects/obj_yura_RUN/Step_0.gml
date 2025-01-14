/// @description running and colliding
if (!keyboard_check(vk_shift))
{
	instance_change(obj_yura, true);
}
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up_arrow = keyboard_check(vk_up);
var down_arrow = keyboard_check(vk_down);

var _hsp = right - left;
var _vsp = 0;
move_and_collide(_hsp * run_speed, _vsp, obj_floor);

if (_hsp == 1)
{
	sprite_index = spr_yura_run_RIGHT;
}
else if (_hsp == -1)
{
	sprite_index = spr_yura_run_LEFT;
}
else if (sprite_index == spr_yura_run_LEFT)
{
	sprite_index = spr_yura_stat_LEFT;
}
else if (sprite_index == spr_yura_run_RIGHT)
{
	sprite_index = spr_yura_stat_RIGHT;
}