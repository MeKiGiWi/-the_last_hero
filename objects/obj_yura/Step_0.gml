/// @description walking
// You can write your code in this editor


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


/*
//sounds of street
if (room == rm_street_0 || room == rm_street_1 || room == rm_street_2)
{
	if !(audio_is_playing(snd_wind_loop))
	{
		audio_play_sound(snd_wind_loop, 99, true);
	}
	
	if !(audio_is_playing(snd_dogs1)) && !(audio_is_playing(snd_dogs2))
	{
		audio_play_sound(choose(snd_dogs1, snd_dogs2), 99, false);
	}
}
else
{
	audio_stop_sound(snd_dogs1);
	audio_stop_sound(snd_dogs2);
	audio_stop_sound(snd_wind_loop);
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
	else if (audio_is_playing(snd_walk_bathroom_loop)) && (_hsp == 0) && (_vsp == 0) || place_meeting(x, y, obj_wall) || place_meeting(x, y, obj_wall_RIGHT)
	{
		audio_stop_sound(snd_walk_bathroom_loop);
		audio_stop_sound(snd_run_bathroom_loop);
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
	else if (audio_is_playing(snd_walk_padik_loop)) && (_hsp == 0) && (_vsp == 0) || place_meeting(x, y, obj_wall) || place_meeting(x, y, obj_wall_RIGHT) || (place_meeting(x, y + 5, obj_stairs))
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
	
	if !(audio_is_playing(snd_HRAP_hrrr))
	{
		audio_play_sound(snd_HRAP_hrrr, 99, true);
	}
	
}
else
{
	audio_stop_sound(snd_padik_loop);
	audio_stop_sound(snd_HRAP_hrrr);
	audio_stop_sound(snd_neigh_padik);
	audio_stop_sound(snd_neigh_padik2);
	audio_stop_sound(snd_neigh_padik3);
}
*/