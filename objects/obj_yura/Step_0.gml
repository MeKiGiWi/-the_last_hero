/// @description walking
// You can write your code in this editor

if (!global.is_cutscene)
{
	_hsp = keyboard_check(vk_right) - keyboard_check(vk_left);
	_vsp = keyboard_check(vk_down) - keyboard_check(vk_up);
	_vsp = 0; // temp
	is_running = keyboard_check(vk_shift);

	while (!place_meeting(x, y + 1, obj_floor))
	{
		y++;
	}

	if (is_running && !place_meeting(x, y + 1, obj_stairs))
	{
		_hsp *= run_speed;
	}
	else if (is_running && place_meeting(x, y + 1, obj_stairs))
	{
		is_running = 0;
	}

	if (global.pause || global.dialog || global.black_scr_opacity > 0 || global.animation)
	{
		_hsp = 0;
		_vsp = 0;
		is_running = 0;
	}

	move_and_collide(_hsp, _vsp, obj_floor);
	if (place_meeting(x - 5, y, obj_wall) || place_meeting(x + 5, y, obj_wall))
	{
		_hsp = 0;
		_vsp = 0;
	}

	if (_hsp == walk_speed)
	{
		sprite_index = spr_yura_walk_RIGHT;
	}
	else if (_hsp == -walk_speed)
	{
		sprite_index = spr_yura_walk_LEFT;
	}
	else if (_hsp == -run_speed)
	{
		sprite_index = spr_yura_run_LEFT;
	}
	else if (_hsp == run_speed)
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
}