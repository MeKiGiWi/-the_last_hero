/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2EB84FC0
/// @DnDArgument : "key" "vk_shift"
var l2EB84FC0_0;
l2EB84FC0_0 = keyboard_check(vk_shift);
if (l2EB84FC0_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A08F05C
	/// @DnDParent : 2EB84FC0
	/// @DnDArgument : "var" "playOnce2"
	/// @DnDArgument : "value" "true"
	if(playOnce2 == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1DA13B63
		/// @DnDParent : 3A08F05C
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "playOnce2"
		playOnce2 = false;
	
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 40FEFFAC
		/// @DnDParent : 3A08F05C
		/// @DnDArgument : "soundid" "snd_walk"
		/// @DnDSaveInfo : "soundid" "snd_walk"
		audio_stop_sound(snd_walk);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 007E5399
		/// @DnDParent : 3A08F05C
		/// @DnDArgument : "soundid" "snd_run"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "snd_run"
		audio_play_sound(snd_run, 0, 1, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 15BCD68C
		/// @DnDParent : 3A08F05C
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "playOnce"
		playOnce = false;
	}
}