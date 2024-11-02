/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 619E042E
/// @DnDArgument : "key" "vk_left"
/// @DnDArgument : "not" "1"
var l619E042E_0;
l619E042E_0 = keyboard_check(vk_left);
if (!l619E042E_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2FA79505
	/// @DnDParent : 619E042E
	/// @DnDArgument : "imageind" "9"
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_yura_walk_RIGHT"
	/// @DnDSaveInfo : "spriteind" "spr_yura_walk_RIGHT"
	sprite_index = spr_yura_walk_RIGHT;
	image_index += 9;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 79E8DF89
	/// @DnDParent : 619E042E
	/// @DnDArgument : "direction" "0"
	direction = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6298DA5B
	/// @DnDParent : 619E042E
	/// @DnDArgument : "speed" "1"
	speed = 1;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 3562C85D
	/// @DnDParent : 619E042E
	/// @DnDArgument : "key" "vk_shift"
	var l3562C85D_0;
	l3562C85D_0 = keyboard_check(vk_shift);
	if (l3562C85D_0)
	{
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 05757427
		/// @DnDParent : 3562C85D
		/// @DnDArgument : "objind" "obj_yura_RUN"
		/// @DnDSaveInfo : "objind" "obj_yura_RUN"
		instance_change(obj_yura_RUN, true);
	}
}