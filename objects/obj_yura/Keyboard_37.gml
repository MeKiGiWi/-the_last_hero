/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 58A18904
/// @DnDArgument : "key" "vk_right"
/// @DnDArgument : "not" "1"
var l58A18904_0;
l58A18904_0 = keyboard_check(vk_right);
if (!l58A18904_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4B32F0A2
	/// @DnDParent : 58A18904
	/// @DnDArgument : "imageind" "9"
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_yura_walk_LEFT"
	/// @DnDSaveInfo : "spriteind" "spr_yura_walk_LEFT"
	sprite_index = spr_yura_walk_LEFT;
	image_index += 9;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 6C5858A4
	/// @DnDParent : 58A18904
	/// @DnDArgument : "direction" "180"
	direction = 180;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3829BA0C
	/// @DnDParent : 58A18904
	/// @DnDArgument : "speed" "1"
	speed = 1;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 791EEB36
	/// @DnDParent : 58A18904
	/// @DnDArgument : "key" "vk_shift"
	var l791EEB36_0;
	l791EEB36_0 = keyboard_check(vk_shift);
	if (l791EEB36_0)
	{
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 60F1F632
		/// @DnDParent : 791EEB36
		/// @DnDArgument : "objind" "obj_yura_RUN"
		/// @DnDSaveInfo : "objind" "obj_yura_RUN"
		instance_change(obj_yura_RUN, true);
	}
}