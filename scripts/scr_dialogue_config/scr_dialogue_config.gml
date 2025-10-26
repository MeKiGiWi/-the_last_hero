/// @description Инициализация системы диалогов
function dialogue_system_init() {
    // Глобальные настройки
    global.dialogue_width_default = 640;
    global.dialogue_typewriter_speed = 0.5;
    global.dialogue_padding = 20;
    global.dialogue_line_height = 16;
    
    global.speakers = {};
    global.current_active_dialogue = noone;
    global.dialogue_pause_game = true;
    global.dialogue_input_key = vk_enter;

    register_speaker(new SpeakerData(
        "yura",
        spr_dialogbox_X,
        0,
        0
    ))
}
