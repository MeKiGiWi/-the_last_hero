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
/// @return {Array<Struct.DialoguePhrase>}
function get_dialogue_phrases(_dialogue_id) {
    if (variable_struct_exists(global.dialogues, _dialogue_id)) {
        return global.dialogues[$ _dialogue_id];
    }
    show_debug_message("Error: Dialogue '" + _dialogue_id + "' not found!");
    return [];
}
