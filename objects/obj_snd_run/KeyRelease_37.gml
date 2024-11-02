/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 510AE3CF
/// @DnDArgument : "key" "vk_shift"
var l510AE3CF_0;
l510AE3CF_0 = keyboard_check(vk_shift);
if (l510AE3CF_0)
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2C7334CA
	/// @DnDParent : 510AE3CF
	/// @DnDArgument : "soundid" "snd_run"
	/// @DnDSaveInfo : "soundid" "snd_run"
	audio_stop_sound(snd_run);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2F762786
	/// @DnDParent : 510AE3CF
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "playOnce2"
	playOnce2 = true;
}