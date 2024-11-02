/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7DB8DA6E
/// @DnDArgument : "key" "vk_right"
/// @DnDArgument : "not" "1"
var l7DB8DA6E_0;
l7DB8DA6E_0 = keyboard_check(vk_right);
if (!l7DB8DA6E_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4B32F0A2
	/// @DnDParent : 7DB8DA6E
	/// @DnDArgument : "imageind" "8"
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_yura_run_LEFT"
	/// @DnDSaveInfo : "spriteind" "spr_yura_run_LEFT"
	sprite_index = spr_yura_run_LEFT;
	image_index += 8;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 6C5858A4
	/// @DnDParent : 7DB8DA6E
	/// @DnDArgument : "direction" "180"
	direction = 180;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3829BA0C
	/// @DnDParent : 7DB8DA6E
	/// @DnDArgument : "speed" "3"
	speed = 3;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 791EEB36
	/// @DnDParent : 7DB8DA6E
	/// @DnDArgument : "key" "vk_shift"
	/// @DnDArgument : "not" "1"
	var l791EEB36_0;
	l791EEB36_0 = keyboard_check(vk_shift);
	if (!l791EEB36_0)
	{
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7F53EB61
		/// @DnDParent : 791EEB36
		/// @DnDArgument : "objind" "obj_yura"
		/// @DnDSaveInfo : "objind" "obj_yura"
		instance_change(obj_yura, true);
	}
}