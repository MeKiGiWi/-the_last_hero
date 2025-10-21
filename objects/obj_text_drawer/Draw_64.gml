/// @description 
var _prev_alpha = draw_get_alpha();
// Рисуем текст
draw_set_alpha(image_alpha);

draw_set_color(c_white);
draw_set_font(fnt_dialog); // Укажите ваш шрифт
draw_text(x, y, current_text);

draw_set_alpha(_prev_alpha);














