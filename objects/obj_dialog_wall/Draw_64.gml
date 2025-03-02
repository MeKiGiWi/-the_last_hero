/// @description 
// Рисуем текст
draw_set_color(c_white);
draw_set_font(fnt_dialog); // Укажите ваш шрифт
draw_text(20, 20, current_text);

// Мерцающий курсор (опционально)
if (!is_finished && (current_time % 1000 < 500)) {
    draw_text(20 + string_width(current_text), 20, "_");
}