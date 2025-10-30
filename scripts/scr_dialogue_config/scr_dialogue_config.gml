/// @description Инициализация системы диалогов
function dialogue_system_init() {
    // Глобальные настройки
    global.dialogue_typewriter_speed = 0.35;
    global.dialogue_padding = 20;
    global.dialogue_line_height = 16;
    
    global.current_active_dialogue = noone;
    global.dialogue_input_key = vk_enter;
}
