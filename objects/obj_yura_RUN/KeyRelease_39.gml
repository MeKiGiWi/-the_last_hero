/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 47B69977
/// @DnDArgument : "imageind" "6"
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "spr_yura_stat_RIGHT"
/// @DnDSaveInfo : "spriteind" "spr_yura_stat_RIGHT"
sprite_index = spr_yura_stat_RIGHT;
image_index += 6;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 26E6E2B9
speed = 0;

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 5B5687A2
/// @DnDArgument : "soundid" "snd_run"
/// @DnDSaveInfo : "soundid" "snd_run"
audio_stop_sound(snd_run);