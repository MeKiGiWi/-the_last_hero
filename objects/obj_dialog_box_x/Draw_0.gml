draw_self();

var _x_centre = x + floor(self.sprite_width / 2);
var _y_bottom = y + self.sprite_height;

draw_sprite(spr_dialog_arrow_x, 0, _x_centre, _y_bottom);

var _prev_font = draw_get_font();
draw_set_font(fnt_dialog);

draw_text_ext(
    x + global.text_offset_x,
    y + global.text_offset_y,
    string_copy(current_phrase.text, 1, floor(_current_text_length)),
    -1,
    self.sprite_width - 2 * global.text_offset_x
);

draw_set_font(_prev_font);
