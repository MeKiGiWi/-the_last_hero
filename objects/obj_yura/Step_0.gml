/// @description walking, sounds
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


//sounds of walking and running on street
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
		audio_play_sound(snd_walk_loop, 100, true);
	}
	else if (audio_is_playing(snd_walk_loop)) && (_hsp == 0) && (_vsp == 0)
	{
		audio_stop_sound(snd_walk_loop);
		audio_stop_sound(snd_run_loop);
	}
}


//sounds of street
if (room == rm_street_0 || room == rm_street_1 || room == rm_street_2)
{
	if !(audio_is_playing(snd_wind_loop))
	{
		audio_play_sound(snd_wind_loop, 99, true);
	}
	
	alarm[0] = room_speed * (random(10));
}
else
{
	alarm[0] = -1;
	audio_stop_sound(snd_dogs1);
	audio_stop_sound(snd_dogs2);
	audio_stop_sound(snd_wind_loop);
}


//sounds of moving on wood floors
if (room == rm_room_1 || room == rm_room_2)  && place_meeting(x, y + 3, obj_wood_floor)
{
	if !(audio_is_playing(snd_run_wood_loop)) && (abs(_hsp) == run_speed || abs(_vsp) == run_speed)
	{
		audio_stop_sound(snd_walk_wood_loop);
		audio_play_sound(snd_run_wood_loop, 100, true);
	}
	else if (audio_is_playing(snd_run_wood_loop)) && (abs(_hsp) != run_speed && abs(_vsp) != run_speed)
	{
		audio_stop_sound(snd_run_wood_loop);
	}
	else if !(audio_is_playing(snd_walk_wood_loop)) && (_hsp != 0 || _vsp != 0) && !(audio_is_playing(snd_run_wood_loop))
	{
		audio_play_sound(snd_walk_wood_loop, 100, true);
	}
	else if (audio_is_playing(snd_walk_wood_loop)) && (_hsp == 0) && (_vsp == 0) || place_meeting(x, y, obj_wall_LEFT) || place_meeting(x, y, obj_wall_RIGHT)
	{
		audio_stop_sound(snd_walk_wood_loop);
		audio_stop_sound(snd_run_wood_loop);
	}
}


//sounds of moving on tile floors
if (room == rm_room_1)  && place_meeting(x, y + 3, obj_tile_floor)
{
	if !(audio_is_playing(snd_run_bathroom_loop)) && (abs(_hsp) == run_speed || abs(_vsp) == run_speed)
	{
		audio_stop_sound(snd_walk_bathroom_loop);
		audio_play_sound(snd_run_bathroom_loop, 100, true);
	}
	else if (audio_is_playing(snd_run_bathroom_loop)) && (abs(_hsp) != run_speed && abs(_vsp) != run_speed)
	{
		audio_stop_sound(snd_run_bathroom_loop);
	}
	else if !(audio_is_playing(snd_walk_bathroom_loop)) && (_hsp != 0 || _vsp != 0) && !(audio_is_playing(snd_run_bathroom_loop))
	{
		audio_play_sound(snd_walk_bathroom_loop, 100, true);
	}
	else if (audio_is_playing(snd_walk_bathroom_loop)) && (_hsp == 0) && (_vsp == 0) || place_meeting(x, y, obj_wall_LEFT) || place_meeting(x, y, obj_wall_RIGHT)
	{
		audio_stop_sound(snd_walk_bathroom_loop);
		audio_stop_sound(snd_run_bathroom_loop);
	}
}


//sounds of walking on wood stairs
if (room == rm_entrance_1 || room == rm_entrance_2)
{
	if !(audio_is_playing(snd_walk_ladder_loop)) && (_hsp != 0 || _vsp != 0) && (place_meeting(x, y + 5, obj_stairs) || place_meeting(x, y - 5, obj_stairs))
	{
		audio_play_sound(snd_walk_ladder_loop, 100, true);
		alarm[1] = room_speed * random(2);
	}
	if !(place_meeting(x, y + 5, obj_stairs) || place_meeting(x, y - 5, obj_stairs)) || (_hsp == 0 && _vsp == 0)
	{
		alarm[1] = -1;
		audio_stop_sound(snd_creak_padik);
		audio_stop_sound(snd_creak_padik2);
		audio_stop_sound(snd_creak_padik3);
		audio_stop_sound(snd_walk_ladder_loop);
	}
}


//sounds of walking and running in entrances
if ((room == rm_entrance_1) || (room == rm_entrance_2))
{
	if !(audio_is_playing(snd_run_padik_loop)) && (abs(_hsp) == run_speed || abs(_vsp) == run_speed)
	{
		audio_stop_sound(snd_walk_padik_loop);
		audio_play_sound(snd_run_padik_loop, 100, true);
	}
	else if (audio_is_playing(snd_run_padik_loop)) && (abs(_hsp) != run_speed && abs(_vsp) != run_speed)
	{
		audio_stop_sound(snd_run_padik_loop);
	}
	else if !(audio_is_playing(snd_walk_padik_loop)) && (_hsp != 0 || _vsp != 0) && !(audio_is_playing(snd_run_padik_loop))
	{
		audio_play_sound(snd_walk_padik_loop, 100, true);
	}
	else if (audio_is_playing(snd_walk_padik_loop)) && (_hsp == 0) && (_vsp == 0) || place_meeting(x, y, obj_wall_LEFT) || place_meeting(x, y, obj_wall_RIGHT) || (place_meeting(x, y + 5, obj_stairs))
	{
		audio_stop_sound(snd_walk_padik_loop);
		audio_stop_sound(snd_run_padik_loop);
	}
}


//sounds of rm_entrance_1
if (room == rm_entrance_1)
{
	if !(audio_is_playing(snd_padik_loop))
	{
		audio_play_sound(snd_padik_loop, 98, false);
	}
	alarm[2] = room_speed * 52;
	if !(audio_is_playing(snd_HRAP_hrrr))
	{
		audio_play_sound(snd_HRAP_hrrr, 99, true);
	}
	alarm[3] = room_speed * random(8);
}
else
{
	alarm[2] = -1;
	audio_stop_sound(snd_padik_loop);
	audio_stop_sound(snd_HRAP_hrrr);
	alarm[3] = -1;
	audio_stop_sound(snd_neigh_padik);
	audio_stop_sound(snd_neigh_padik2);
	audio_stop_sound(snd_neigh_padik3);
}