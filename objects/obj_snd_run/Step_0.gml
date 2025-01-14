/// @description sync sound with movement

var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);
var _shift = keyboard_check(vk_shift);
var _hsp = _right - _left;
if (global.pause || global.dialog)
{
	_hsp = 0;
}

if (_hsp == 0)
{
	audio_stop_sound(snd_walk);
	audio_stop_sound(snd_run);
	playOnce2 = true;
	playOnceWalk = true;
}
else if (_shift)
{
	if (playOnce2)
	{
		audio_stop_sound(snd_walk);
		audio_play_sound(snd_run, 0, 1, 0.6, undefined, 1.0);
		playOnce2 = false;
		playOnceWalk = true;
	}
}
else
{
	if (playOnceWalk)
	{
		audio_stop_sound(snd_run);
		audio_play_sound(snd_walk, 0, 1, 0.6, undefined, 1.0);
		audio_stop_sound(snd_run);
		playOnce2 = true;
		playOnceWalk = false;
	}
}
