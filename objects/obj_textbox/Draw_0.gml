
draw_sprite(spr_dialog3, 0, 192, 261);
text = "Hello epta this is test of f*cking text wrapping cheeeeeeeeeeeeeeeeeeeeeeeeer";

//draw text
draw_set_font(fnt_dialog);
draw_text_ext(192, 261, text, string_height(text), sprite_get_width(spr_dialog3));
