/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2F3B5C6B
/// @DnDArgument : "var" "playOnce"
/// @DnDArgument : "value" "true"
if(playOnce == true)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 08CA7C4C
	/// @DnDParent : 2F3B5C6B
	/// @DnDArgument : "soundid" "snd_walk"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "snd_walk"
	audio_play_sound(snd_walk, 0, 1, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 43AF0C5D
	/// @DnDParent : 2F3B5C6B
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "playOnce"
	playOnce = false;
}