// ПРОВЕРЯЕМ ЗАВЕРШЕНИЕ АНИМАЦИИ
if (image_index >= sprite_get_number(sprite_index) - 1) {
    // СОЗДАЕМ ДИАЛОГОВОЕ ОКНО ТОЛЬКО ЕСЛИ ЕГО ЕЩЁ НЕТ
    if (!instance_exists(obj_dialogbox_X)) {
        instance_create_layer(x, y, layer, obj_dialogbox_X);
    }
    
    // НЕ УНИЧТОЖАЕМ СЕБЯ! ОСТАЁМСЯ КАК ДЕКОРАТИВНАЯ СТРЕЛОЧКА
    // Просто останавливаем анимацию на последнем кадре
    image_speed = 0;
}

// ОБНОВЛЯЕМ АНИМАЦИЮ (если ещё не достигли последнего кадра)
var total_frames = sprite_get_number(sprite_index);
if (image_index < total_frames - 1) {
    image_speed = 1; // Продолжаем анимацию
}

