// ЕСЛИ ТЕКСТ ЕЩЁ НЕ ВЫВЕЛСЯ ПОЛНОСТЬЮ - АНИМИРУЕМ
if (!text_finished) {
    text_counter += text_speed;
    current_length = floor(text_counter);
    
    if (current_length >= string_length(current_text)) {
        current_length = string_length(current_text);
        text_finished = true;
    }
}

// ПРОВЕРКА НАЖАТИЯ ENTER
if (keyboard_check_pressed(vk_enter)) {
    if (!text_finished) {
        text_finished = true;
        current_length = string_length(current_text);
    } else {
        current_line++;
        
        if (current_line < array_length(dialog_lines)) {
            // ЗАГРУЖАЕМ НОВУЮ РЕПЛИКУ
            current_text = dialog_lines[current_line][0];
            var add_width = dialog_lines[current_line][1]; // Только ширина
            
            // РАСШИРЯЕМ/СУЖАЕМ ОКНО
            var target_width = dialog_lines[current_line][1]; // Берем ширину из массива
            image_xscale = target_width / base_width;
            image_yscale = 1;
            
            // ПОЗИЦИЯ НЕ МЕНЯЕТСЯ
            x = initial_x;
            y = initial_y;
            
            text_counter = 0;
            text_finished = false;
            current_length = 0;
        } else {
            with (obj_dialog_anim_X) {
                instance_destroy();
            }
            instance_destroy();
            
            with (obj_yura) {
                dialog_active = false;
            }
        }
    }
}