// ОБРАБОТКА ДВИЖЕНИЯ ГЕРОЯ (STEP EVENT)

if (!dialog_active) { // Главное условие: диалоговое окно НЕ открыто
    if (!global.is_cutscene)
    {
        _hsp = keyboard_check(vk_right) - keyboard_check(vk_left); // Горизонтальное движение
        _vsp = keyboard_check(vk_down) - keyboard_check(vk_up); // Вертикальное движение
        _vsp = 0; // temp
        is_running = keyboard_check(vk_shift); // Бег с Shift

        // Обновляем переменную last_direction при движении
        if (_hsp > 0) {
            last_direction = "right";
        } else if (_hsp < 0) {
            last_direction = "left";
        }

        while (!place_meeting(x, y + 1, obj_floor))
        {
            y++; // Проверка пола под ногами
        }

        if (is_running && !place_meeting(x, y + 1, obj_stairs))
        {
            _hsp *= run_speed; // Бег
        }
        else if (is_running && place_meeting(x, y + 1, obj_stairs))
        {
            is_running = 0; // Нельзя бегать вверх по лестнице
        }

        if (global.pause || global.dialog || global.black_scr_opacity > 0 || global.animation)
        {
            _hsp = 0;
            _vsp = 0;
            is_running = 0;
        }

        move_and_collide(_hsp, _vsp, obj_floor); // Основное движение
        if (place_meeting(x - 1, y, obj_wall) || place_meeting(x + 1, y, obj_wall))
        {
            _hsp = 0;
            _vsp = 0;
        }

        // Выбор анимации движения
        if (_hsp == walk_speed)
        {
            sprite_index = spr_yura_walk_RIGHT;
        }
        else if (_hsp == -walk_speed)
        {
            sprite_index = spr_yura_walk_LEFT;
        }
        else if (_hsp == -run_speed)
        {
            sprite_index = spr_yura_run_LEFT;
        }
        else if (_hsp == run_speed)
        {
            sprite_index = spr_yura_run_RIGHT;
        }
        else
        {
            // Анимация покоя
            if (last_direction == "right")
            {
                sprite_index = spr_yura_stat_RIGHT;
            }
            else
            {
                sprite_index = spr_yura_stat_LEFT;
            }
        }
    }
} else {
    // ДИАЛОГОВОЕ ОКНО АКТИВНО
    _hsp = 0; // НЕТ горизонтального движения
    _vsp = 0; // НЕТ вертикального движения
    is_running = 0; // ОТКЛЮЧЕН бег
    audio_stop_sound(snd_walk_loop); // Остановка звука ходьбы
    audio_stop_sound(snd_run_loop); // Остановка звука бега

    // Приведение к состоянию покоя
    if (last_direction == "right")
    {
        sprite_index = spr_yura_stat_RIGHT; // Анимация покоя вправо
    }
    else
    {
        sprite_index = spr_yura_stat_LEFT; // Анимация покоя влево
    }
    // Убираем остановку анимации
    // image_speed = 0; // Больше не останавливаем анимацию
}