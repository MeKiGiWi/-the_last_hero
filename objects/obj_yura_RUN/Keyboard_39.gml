/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5749D832
/// @DnDArgument : "key" "vk_left"
/// @DnDArgument : "not" "1"
var l5749D832_0;
l5749D832_0 = keyboard_check(vk_left);
if (!l5749D832_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2FA79505
	/// @DnDParent : 5749D832
	/// @DnDArgument : "imageind" "8"
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_yura_run_RIGHT"
	/// @DnDSaveInfo : "spriteind" "spr_yura_run_RIGHT"
	sprite_index = spr_yura_run_RIGHT;
	image_index += 8;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 79E8DF89
	/// @DnDParent : 5749D832
	/// @DnDArgument : "direction" "0"
	direction = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6298DA5B
	/// @DnDParent : 5749D832
	/// @DnDArgument : "speed" "3"
	speed = 3;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 3562C85D
	/// @DnDParent : 5749D832
	/// @DnDArgument : "key" "vk_shift"
	/// @DnDArgument : "not" "1"
	var l3562C85D_0;
	l3562C85D_0 = keyboard_check(vk_shift);
	if (!l3562C85D_0)
	{
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 05757427
		/// @DnDParent : 3562C85D
		/// @DnDArgument : "objind" "obj_yura"
		/// @DnDSaveInfo : "objind" "obj_yura"
		instance_change(obj_yura, true);
	}
}