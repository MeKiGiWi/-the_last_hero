/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 4396D16B
/// @DnDArgument : "imageind" "6"
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "spr_yura_stat_LEFT"
/// @DnDSaveInfo : "spriteind" "spr_yura_stat_LEFT"
sprite_index = spr_yura_stat_LEFT;
image_index += 6;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 6B912364
speed = 0;

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 2CE12D5A
/// @DnDArgument : "soundid" "snd_run"
/// @DnDSaveInfo : "soundid" "snd_run"
audio_stop_sound(snd_run);