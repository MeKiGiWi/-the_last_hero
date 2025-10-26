/// @description Запустить диалог
/// @param {String} _dialogue_id ID диалога из базы данных
function dialogue_start(_dialogue_id) {
    // Если уже есть активный диалог, игнорировать

    if (global.active_dialogue != noone) {
        show_debug_message("Dialogue already active!");
        return;
    }
    
    // Получить массив реплик
    var lines = get_dialogue(_dialogue_id);
    
    if (array_length(lines) == 0) {
        return;
    }
    
    // Создать объект диалогового окна
    global.active_dialogue = instance_create_depth(0, 0, -9999, obj_dialogue_box);
    global.active_dialogue.load_dialogue(lines);
    
    // Пауза игры (опционально)
    if (global.dialogue_pause_game) {
        instance_deactivate_object(obj_player);
    }
}

/// @description Завершить текущий диалог
function dialogue_end() {
    if (global.active_dialogue != noone) {
        instance_destroy(global.active_dialogue);
        global.active_dialogue = noone;
        
        // Возобновить игру
        if (global.dialogue_pause_game) {
            instance_activate_object(obj_player);
        }
    }
}

/// @description Проверка активности диалога
/// @return {Bool}
function dialogue_is_active() {
    return (global.active_dialogue != noone);
}
 