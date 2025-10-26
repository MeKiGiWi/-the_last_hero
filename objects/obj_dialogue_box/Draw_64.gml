if (current_speaker == undefined) return;

// Отрисовка диалогового окна
var box_sprite = current_speaker.dialog_box_sprite;
draw_sprite_ext(
    box_sprite,
    0,
    box_x,
    box_y,
    box_width / sprite_get_width(box_sprite),
    1,
    0,
    c_white,
    box_alpha
);

// Отрисовка текста
draw_set_font();
draw_set_color(c_white);
draw_set_alpha(box_alpha);

draw_text_ext(
    box_x + global.dialogue_padding,
    box_y + global.dialogue_padding,
    displayed_text,
    global.dialogue_line_height,
    box_width - global.dialogue_padding * 2
);

draw_set_alpha(1);

// Отрисовка анимации спикера
current_speaker.draw_sprite();

// Индикатор продолжения (когда текст закончен)
if (text_finished && box_alpha >= 1) {
    // Мигающая стрелка/индикатор
    var arrow_alpha = abs(sin(current_time / 300));
    draw_sprite_ext(spr_continue_arrow, 0, box_x + box_width - 20, box_y + 80, 1, 1, 0, c_white, arrow_alpha * box_alpha);
}
 