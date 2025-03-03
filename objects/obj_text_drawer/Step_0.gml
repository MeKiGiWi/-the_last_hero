if (!is_finished) 
{
    print_counter++;
    
    // Ускорение по нажатию клавиши (опционально)
    if (keyboard_check_pressed(vk_enter))
    {
        print_speed_up = 1;
    }
    
    // Добавляем новый символ через каждые print_speed кадров
    while (print_counter >= print_speed) 
    {
        print_counter -= print_speed;
        if (print_counter <= 0.1)
        {
            print_counter = 0;
        }
        if (print_speed_up == 1)
        {
            print_speed_up = 0;
            while (string_pos(string_char_at(full_text, char_index), "\n!., ") == 0)
            {
                if (char_index == string_length)
                {
                    is_finished = true;
                    break;
                }
                current_text += string_char_at(full_text, char_index + 1);
                if (string_char_at(current_text, char_index + 1) == "\n")
                {
                    count_newlines++;
                    current_line = "";
                }
                else
                {
                    current_line += string_char_at(full_text, char_index + 1);
                }
                char_index++;
            }
        }
        // Проверяем, не вышли ли за пределы строки
        else if (char_index < string_length(full_text)) 
        {
            current_text += string_char_at(full_text, char_index + 1);
            // Calcualtions for support highlighting cursor
            if (string_char_at(current_text, char_index + 1) == "\n")
            {
                count_newlines++;
                current_line = "";
            }
            else
            {
                current_line += string_char_at(full_text, char_index + 1);
            }
            char_index++;
            // Здесь можно добавить звук печати
            // audio_play_sound(snd_type, 1, false);
        } 
        else 
        {
            is_finished = true;
        }
    }
}
// Уничтожение текста плавное или моментальное
else if (!smooth)
{
    instance_destroy(id, true);
}
else
{
    image_alpha -= sm_speed / room_speed;
    if (image_alpha <= 0)
    {
        instance_destroy(id);
    }
}