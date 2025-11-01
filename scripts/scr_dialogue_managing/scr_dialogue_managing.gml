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
/// @param {String} _dialogue_id ID диалога (название)
/// @param {Struct} _dialogue_struct Распаршенный JSON диалога
/// (созданный в dialog manager)
/// @return {Array<Struct.DialoguePhrase>} Массив со структурами фразы
function get_dialogue_phrases(_dialogue_id, _dialogue_struct) {
    if (variable_struct_exists(_dialogue_struct, _dialogue_id)) {
        var _dialog_arr = variable_struct_get(_dialogue_struct, _dialogue_id);

        /// @type {Array<Struct.DialoguePhrase>}
        var _dialogue_struct_arr = [];
        for (var i = 0; i < array_length(_dialog_arr); i++) {
            _dialogue_struct_arr[i] = new DialoguePhrase(
                _dialog_arr[i][0],
                _dialog_arr[i][1],
                _dialog_arr[i][2]
                );
        }
        return _dialogue_struct_arr;
    }
    show_error("Error: Dialogue '" + _dialogue_id + "' not found!", true);
}
