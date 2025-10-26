// Fade-in эффект
if (box_alpha < 1) {
    box_alpha += 0.1;
}

// Typewriter эффект
if (!text_finished && current_line != undefined) {
    char_index += global.dialogue_typewriter_speed;
    
    if (char_index >= string_length(current_line.text)) {
        char_index = string_length(current_line.text);
        text_finished = true;
    }
    
    displayed_text = string_copy(current_line.text, 1, floor(char_index));
    
    // Обновить анимацию спикера
    current_speaker.update_animation(!text_finished);
}

// Обработка ввода
if (keyboard_check_pressed(global.dialogue_input_key) || mouse_check_button_pressed(mb_left)) {
    if (!text_finished) {
        // Пропустить печать
        skip_typewriter();
    } else {
        // Следующая реплика
        show_next_line();
    }
}
 