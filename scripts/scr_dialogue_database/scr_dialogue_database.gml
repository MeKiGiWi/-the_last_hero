/// @description Инициализация базы данных диалогов
function init_dialogues() {
    global.dialogues = {};
    global.dialogues[$ "intro"] = [
        new DialoguePhrase("yura", "sup man", 500),
        new DialoguePhrase("yura", "it's such a good day", 0),
        new DialoguePhrase("yura", "and i testing dialog", 600)
    ];
}

/// @description Получить диалог по ID
/// @param {String} _dialogue_id ID диалога
/// @return {Array<Struct.DialoguePhrase>}
function get_dialogue(_dialogue_id) {
    if (variable_struct_exists(global.dialogues, _dialogue_id)) {
        return global.dialogues[$ _dialogue_id];
    }
    show_debug_message("Error: Dialogue '" + _dialogue_id + "' not found!");
    return [];
}
