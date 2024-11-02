/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5CF31F40
/// @DnDArgument : "key" "vk_left"
var l5CF31F40_0;
l5CF31F40_0 = keyboard_check(vk_left);
if (l5CF31F40_0)
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 4A0D3DF6
	/// @DnDParent : 5CF31F40
	/// @DnDArgument : "soundid" "snd_walk"
	/// @DnDSaveInfo : "soundid" "snd_walk"
	audio_stop_sound(snd_walk);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F62633D
	/// @DnDParent : 5CF31F40
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "playOnce"
	playOnce = true;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6EB4E8C4
/// @DnDArgument : "key" "vk_right"
var l6EB4E8C4_0;
l6EB4E8C4_0 = keyboard_check(vk_right);
if (l6EB4E8C4_0)
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 185BE776
	/// @DnDParent : 6EB4E8C4
	/// @DnDArgument : "soundid" "snd_walk"
	/// @DnDSaveInfo : "soundid" "snd_walk"
	audio_stop_sound(snd_walk);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 08659074
	/// @DnDParent : 6EB4E8C4
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "playOnce"
	playOnce = true;
}