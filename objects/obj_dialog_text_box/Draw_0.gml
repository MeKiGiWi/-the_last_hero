/// @description Insert description here
// You can write your code in this editor
draw_set_font(self.font);
draw_sprite(self.sprite, self.subimg, self.x, self.y);

for (i = 0; i < array_length(self.text); i++)
{
	draw_text_ext(self.x, self.y, self.text[i], string_height(self.text[i]), sprite_get_width(self.sprite));
}