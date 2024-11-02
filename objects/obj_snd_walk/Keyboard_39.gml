/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 620EF0A6
/// @DnDArgument : "var" "playOnce"
/// @DnDArgument : "value" "true"
if(playOnce == true)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 68C41818
	/// @DnDParent : 620EF0A6
	/// @DnDArgument : "soundid" "snd_walk"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "snd_walk"
	audio_play_sound(snd_walk, 0, 1, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44ABF1BB
	/// @DnDParent : 620EF0A6
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "playOnce"
	playOnce = false;
}