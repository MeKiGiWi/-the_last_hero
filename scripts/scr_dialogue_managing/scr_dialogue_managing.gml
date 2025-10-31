/// @description Инициализация системы диалогов
function init_dialogue_system() {
    // Глобальные настройки
    global.dialogue_typewriter_speed = 0.35;
    global.text_offset_x = 5;
    global.text_offset_y = 3;
    global.current_active_dialogue = noone;
    global.dialogue_input_key = vk_enter;
}


/// @description Получить диалог по ID
/// @param {String} _dialogue_id ID диалога
/// @param {Struct} _dialogue_struct Распаршенный JSON диалога
/// @return {Array<Struct.DialoguePhrase>}
function get_dialogue_phrases_array(_dialogue_id, _dialogue_struct) {
    if (variable_struct_exists(_dialogue_struct, _dialogue_id)) {
        return struct_get(_dialogue_struct, _dialogue_id);
    }
    show_debug_message("Error: Dialogue '" + _dialogue_id + "' not found!");
    return [];
}
