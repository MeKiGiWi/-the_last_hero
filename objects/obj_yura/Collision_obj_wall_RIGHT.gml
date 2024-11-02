/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 71BA02DF
/// @DnDArgument : "type" "1"
hspeed = 0;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 277FB4F6
/// @DnDArgument : "imageind" "6"
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "spr_yura_stat_RIGHT"
/// @DnDSaveInfo : "spriteind" "spr_yura_stat_RIGHT"
sprite_index = spr_yura_stat_RIGHT;
image_index += 6;

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 03F47098
/// @DnDArgument : "soundid" "snd_run"
/// @DnDSaveInfo : "soundid" "snd_run"
audio_stop_sound(snd_run);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4B682737
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "playOnce2"
playOnce2 = true;