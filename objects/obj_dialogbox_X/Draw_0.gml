// РИСУЕМ ОКНО
draw_self();

// ВЫЧИСЛЯЕМ РЕАЛЬНЫЕ ГРАНИЦЫ ОКНА С УЧЕТОМ ТОЧКИ ПРИВЯЗКИ
var window_top = y - (sprite_get_height(sprite_index) * image_yscale);    // Верх окна
var window_left = x - (sprite_get_width(sprite_index) * image_xscale / 2); // Левый край окна
var window_width = sprite_get_width(sprite_index) * image_xscale;          // Ширина окна

// ПОЗИЦИОНИРУЕМ ТЕКСТ С НАСТРАИВАЕМЫМИ ОТСТУПАМИ
var text_x = window_left + text_offset_x;          // Настраиваемый отступ слева
var text_y = window_top + text_offset_y;           // Настраиваемый отступ сверху
var text_width = window_width - (text_offset_x * 2); // Ширина текста (минус отступы с двух сторон)

// ВЫРЕЗАЕМ ЧАСТЬ ТЕКСТА ДЛЯ АНИМАЦИИ
var display_text = string_copy(current_text, 1, current_length);

// УСТАНАВЛИВАЕМ ШРИФТ И ЦВЕТ
draw_set_font(fnt_dialog);
draw_set_color(c_white);

// РИСУЕМ ТЕКСТ С ПЕРЕНОСОМ СЛОВ
draw_text_ext(text_x, text_y, display_text, -1, text_width);