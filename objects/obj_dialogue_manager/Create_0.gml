// Инициализировать систему только один раз
if (!variable_global_exists("dialogue_initialized")) {
    dialogue_system_init();
    init_dialogues();
    
    // Регистрация всех спикеров
    register_speaker(new SpeakerData(
        "yura",                    // speaker_id
        spr_yura_idle,             // idle sprite
        spr_yura_talking,          // talking sprite
        room_width / 2,            // x position
        room_height - 100,         // y position
        spr_dialog_box_default     // dialog box sprite
    ));
    
    // Дефолтный спикер для неизвестных ID
    register_speaker(new SpeakerData(
        "default",
        noone,
        noone,
        room_width / 2,
        room_height - 100,
        spr_dialog_box_default
    ));
    
    global.dialogue_initialized = true;
}

// Сделать объект persistent
persistent = true;
 