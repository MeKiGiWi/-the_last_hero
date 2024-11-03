/// @description Insert description here
// You can write your code in this editor

//draw text
if (!self.hide_text)
{
	draw_sprite(self.sprite_index, 0, x, y);
	draw_set_font(self.font);
	draw_text_ext(x, y, self.text, string_height(self.text), self.sprite_width);
}
else
{
	transparency = lerp(transparency, 0, 0.05);
	draw_set_alpha(transparency);
	draw_sprite(self.sprite_index, 0, x, y);
	draw_set_font(self.font);
	draw_text_ext(x, y, self.text, string_height(self.text), self.sprite_width);
	draw_set_alpha(1);
}