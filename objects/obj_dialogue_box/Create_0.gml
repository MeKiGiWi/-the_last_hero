// Массив реплик
lines = [];
current_line_index = 0;
current_line = undefined;

// Typewriter эффект
char_index = 0;
displayed_text = "";

// Текущий спикер
current_speaker = undefined;

// Визуальные параметры
box_x = 0;
box_y = 0;
box_width = 0;
box_alpha = 0; // Fade-in эффект

// Флаг завершения текста
text_finished = false;

/// @description Загрузить массив реплик
/// @param {Array<Struct.DialogueLine>} _lines
load_dialogue = function(_lines) {
    lines = _lines;
    current_line_index = 0;
    show_next_line();
}

/// @description Показать следующую реплику
show_next_line = function() {
    if (current_line_index >= array_length(lines)) {
        dialogue_end();
        return;
    }
    
    // Получить текущую реплику
    current_line = lines[current_line_index];
    
    // Выполнить действия предыдущей реплики
    if (current_line_index > 0) {
        lines[current_line_index - 1].execute_actions();
    }
    
    // Получить данные спикера по строковому ID
    current_speaker = get_speaker(current_line.speaker_id);
    
    // Настроить окно
    box_width = current_line.window_width;
    box_x = current_speaker.dialog_pos_x;
    box_y = current_speaker.dialog_pos_y;
    
    // Сброс typewriter
    char_index = 0;
    displayed_text = "";
    text_finished = false;
    box_alpha = 0;
    
    current_line_index++;
}

/// @description Пропустить typewriter эффект
skip_typewriter = function() {
    if (!text_finished) {
        char_index = string_length(current_line.text);
        displayed_text = current_line.text;
        text_finished = true;
    }
}
