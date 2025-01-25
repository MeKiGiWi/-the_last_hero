/// @description walking and colliding
// You can write your code in this editor

var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up_arrow = keyboard_check(vk_up);
var down_arrow = keyboard_check(vk_down);

var _hsp = right - left;
var _vsp = down_arrow - up_arrow;
_vsp = 0;

while (!place_meeting(x, y + 1, obj_floor))
{
	y++;
}

if (keyboard_check(vk_shift) && !place_meeting(x, y + 1, obj_stairs))
{
	_hsp *= run_speed;
}

if (global.pause || global.dialog || global.black_scr_opacity > 0 || global.animation)
{
	_hsp = 0;
	_vsp = 0
}

move_and_collide(_hsp * walk_speed, _vsp, obj_floor);
if (_hsp == 1)
{
	sprite_index = spr_yura_walk_RIGHT;
}
else if (_hsp == -1)
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


//sounds of moving on street
if (room == rm_street_0 || room == rm_street_1 || room == rm_street_2)
{
	if !(audio_is_playing(snd_run_loop)) && (abs(_hsp) == run_speed || abs(_vsp) == run_speed)
	{
		audio_stop_sound(snd_walk_loop);
		audio_play_sound(snd_run_loop, 100, true);
	}
	else if (audio_is_playing(snd_run_loop)) && (abs(_hsp) != run_speed && abs(_vsp) != run_speed)
	{
		audio_stop_sound(snd_run_loop);
	}
	else if !(audio_is_playing(snd_walk_loop)) && (_hsp != 0 || _vsp != 0) && !(audio_is_playing(snd_run_loop))
	{
		audio_play_sound(snd_walk_loop, 99, true);
	}
	else if (audio_is_playing(snd_walk_loop)) && (_hsp == 0) && (_vsp == 0)
	{
		audio_stop_sound(snd_walk_loop);
	}
}