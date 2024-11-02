/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 56A6FBEA
/// @DnDArgument : "key" "vk_shift"
var l56A6FBEA_0;
l56A6FBEA_0 = keyboard_check(vk_shift);
if (l56A6FBEA_0)
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3696C648
	/// @DnDParent : 56A6FBEA
	/// @DnDArgument : "soundid" "snd_run"
	/// @DnDSaveInfo : "soundid" "snd_run"
	audio_stop_sound(snd_run);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6B9BB1F3
	/// @DnDParent : 56A6FBEA
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "playOnce2"
	playOnce2 = true;
}