/// @description Инициализация базы данных диалогов
function init_dialogues() {
    global.dialogues = {};
    
    // Приветственный диалог
    global.dialogues[$ "intro"] = [
        new DialogueLine("yura", "sup man", 500),
        new DialogueLine("yura", "it's such a good day", 0),
        new DialogueLine("yura", "and i testing dialog", 600)
    ];
}

/// @description Получить диалог по ID
/// @param {String} _dialogue_id ID диалога
/// @return {Array<Struct.DialogueLine>}
function get_dialogue(_dialogue_id) {
    if (variable_struct_exists(global.dialogues, _dialogue_id)) {
        return global.dialogues[$ _dialogue_id];
    }
    
    show_debug_message("Error: Dialogue '" + _dialogue_id + "' not found!");
    return [];
}
