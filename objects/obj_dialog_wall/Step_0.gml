if (!is_finished) 
{
    print_counter++;
    
    // Ускорение по нажатию клавиши (опционально)
    if (keyboard_check(vk_enter))
    {
        print_speed_up = 3;
    }
    else
    {
        print_speed_up = 1;
    }
    
    // Добавляем новый символ через каждые print_speed кадров
    while (print_counter >= print_speed / print_speed_up) 
    {
        print_counter -= (print_speed / print_speed_up);
        if (print_counter <= 0.1)
        {
            print_counter = 0;
        }
        // Проверяем, не вышли ли за пределы строки
        if (char_index < string_length(full_text)) 
        {
            current_text += string_char_at(full_text, char_index + 1);
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