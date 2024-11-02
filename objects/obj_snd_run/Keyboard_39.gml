/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 0910A267
/// @DnDArgument : "key" "vk_shift"
var l0910A267_0;
l0910A267_0 = keyboard_check(vk_shift);
if (l0910A267_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14D333C4
	/// @DnDParent : 0910A267
	/// @DnDArgument : "var" "playOnce2"
	/// @DnDArgument : "value" "true"
	if(playOnce2 == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2D034A99
		/// @DnDParent : 14D333C4
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "playOnce2"
		playOnce2 = false;
	
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 5DB00BD2
		/// @DnDParent : 14D333C4
		/// @DnDArgument : "soundid" "snd_walk"
		/// @DnDSaveInfo : "soundid" "snd_walk"
		audio_stop_sound(snd_walk);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 62295BF9
		/// @DnDParent : 14D333C4
		/// @DnDArgument : "soundid" "snd_run"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "snd_run"
		audio_play_sound(snd_run, 0, 1, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6DF0247B
		/// @DnDParent : 14D333C4
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "playOnce"
		playOnce = false;
	}
}