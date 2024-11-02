/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7B2E6C6D
/// @DnDArgument : "var" "nextroom1"
if(nextroom1 == 0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 15D69B24
	/// @DnDParent : 7B2E6C6D
	/// @DnDArgument : "key" "ord("E")"
	var l15D69B24_0;
	l15D69B24_0 = keyboard_check_pressed(ord("E"));
	if (l15D69B24_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2CC083FC
		/// @DnDParent : 15D69B24
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "167"
		/// @DnDArgument : "objectid" "obj_dialog_window"
		/// @DnDArgument : "layer" ""Yura""
		/// @DnDSaveInfo : "objectid" "obj_dialog_window"
		instance_create_layer(x + 0, 167, "Yura", obj_dialog_window);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 315CE61D
		/// @DnDParent : 15D69B24
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_yura_STAT_L"
		/// @DnDArgument : "layer" ""Yura""
		/// @DnDSaveInfo : "objectid" "obj_yura_STAT_L"
		instance_create_layer(x + 0, y + 0, "Yura", obj_yura_STAT_L);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4D275718
		/// @DnDParent : 15D69B24
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6074D21E
		/// @DnDParent : 15D69B24
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "snd_walk1"
		snd_walk1 = 1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 74BD1180
		/// @DnDParent : 15D69B24
		/// @DnDArgument : "var" "snd_walk1"
		/// @DnDArgument : "value" "1"
		if(snd_walk1 == 1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2966AA52
			/// @DnDParent : 74BD1180
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "nextroom1"
			nextroom1 = 1;
		
			/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
			/// @DnDVersion : 1.1
			/// @DnDHash : 0019CDF9
			/// @DnDParent : 74BD1180
			/// @DnDArgument : "sound" "snd_walk"
			/// @DnDArgument : "volume" "0"
			/// @DnDSaveInfo : "sound" "snd_walk"
			audio_sound_gain(snd_walk, 0, 0);
		
			/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
			/// @DnDVersion : 1.1
			/// @DnDHash : 2C305074
			/// @DnDParent : 74BD1180
			/// @DnDArgument : "sound" "snd_run"
			/// @DnDArgument : "volume" "0"
			/// @DnDSaveInfo : "sound" "snd_run"
			audio_sound_gain(snd_run, 0, 0);
		}
	}
}