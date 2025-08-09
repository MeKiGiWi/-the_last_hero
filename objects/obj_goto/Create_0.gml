/// @description door sounds, transition effects


function play_door_sound(sound)
{
	if (sound != undefined)
    {
        if (!audio_is_playing(sound))
        {
            audio_play_sound(sound, 100, 0);
        }
        else
        {
            audio_stop_sound(sound);
            audio_play_sound(sound, 100, 0);
        }
    }
};


to_swap_masks = false;
cur_dir = 1;
change_speed = 0.02;
to_tp = false;


function blackscreen_transition_effect(is_auto, sound, is_empty_door)
{
    var should_activate = false;
    
    if (is_auto) 
    {
        if (place_meeting(x, y, obj_yura))
        {
            should_activate = true;
        }
    }
    else
    {
        if (place_meeting(x, y, obj_yura) && keyboard_check_pressed(vk_enter))
        {
            should_activate = true;
        }
    }
    
    if (should_activate)
    {
        global.to_black_scr = true;
        global.gate_num = self.id;
		
		play_door_sound(sound);
    }
    
    if (global.to_black_scr && global.gate_num == self.id)
    {
        global.black_scr_opacity += is_empty_door ? 0.04 : 0.025;
        if (global.black_scr_opacity >= 1)
        {
            room_goto(self.room_to_go);
            global.room = self.room_to_go;
            global.to_black_scr = false;
            with (obj_yura)
            {
				image_alpha = 0;
                x = other.roomx;
                y = other.roomy;
                if (other.start_sprite != undefined)
                {
                    sprite_index = other.start_sprite;
                }
            }
			obj_yura.image_alpha = 1;
        }
    }
};


function fade_transition_effect(is_auto, sound, is_empty_door)
{
    var should_activate = false;
    
    if (is_auto)
    {
        if (place_meeting(x, y, obj_yura))
        {
            should_activate = true;
        }
    }
    else
    {
        if (place_meeting(x, y, obj_yura) && keyboard_check_pressed(vk_enter))
        {
            should_activate = true;
        }
    }
    
    if (should_activate && !self.to_swap_masks)
    {
		play_door_sound(sound);
		
        if (right_mask.image_alpha == 1)
        {
            self.cur_dir = 1;
        }
        else
        {
            self.cur_dir = -1;
        }
        right_mask.image_alpha = 1;
        left_mask.image_alpha = 1;
        self.to_swap_masks = true;
        global.animation = true;
    }
    
    if (to_swap_masks)
    {
        with (obj_yura)
        {
            image_alpha -= other.change_speed;
            if (image_alpha <= 0)
            {
                other.to_tp = true;
            }
        }
    }

    if (self.to_tp)
    {
        with (obj_yura)
        {
            x = other.roomx != -1 ? other.roomx : x;
            y = other.roomy != -1 ? other.roomy : y;
            image_alpha = 1;
        }
        
        if (self.cur_dir == 1)
        {
            right_mask.image_alpha = 0;
        }
        else
        {
            left_mask.image_alpha = 0;
        }
        
        self.to_tp = false;
        self.to_swap_masks = false;
        global.animation = false;
    }
};