/// @description Получить диалог по ID
/// @param {String} _dialogue_id ID диалога
/// @return {Array<Struct.DialoguePhrase>}
function get_dialogue_by_id(_dialogue_id) {
    if (variable_struct_exists(global.dialogues, _dialogue_id)) {
        return global.dialogues[$ _dialogue_id];
    }
    show_debug_message("Error: Dialogue '" + _dialogue_id + "' not found!");
    return [];
}
