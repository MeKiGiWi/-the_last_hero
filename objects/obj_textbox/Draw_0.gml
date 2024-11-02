//draw textbox
draw_sprite(spr_dialog3, 0, x, y);

//draw text
draw_set_font(fnt_dialog);
draw_text_ext(x, y, text, s_height, box_w);
