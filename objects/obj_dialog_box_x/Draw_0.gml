draw_self();

var scaled_width = sprite_get_width(self.sprite_index) * image_xscale;
var scaled_height = sprite_get_height(self.sprite_index) * image_yscale;

var _x_centre = x + floor(scaled_width / 2);
var _y_bottom = y + scaled_height;

draw_sprite(spr_dialog_arrow_x, 0, _x_centre, _y_bottom);

var _prev_font = draw_get_font();
draw_set_font(fnt_dialog);

draw_text_ext(
    x + global.text_offset_x,
    y + global.text_offset_y,
    current_phrase.text,
    -1,
    scaled_width - 2 * global.text_offset_x
);

draw_set_font(_prev_font);
