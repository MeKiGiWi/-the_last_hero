/// @description Insert description here
// You can write your code in this editor
draw_sprite(self.sprite, self.subimg, self.x, self.y);
draw_set_font(self.font);
draw_text_ext(self.x,self.y,
				self.text[phrase_ind],
				string_height(self.text[phrase_ind]),
				sprite_get_width(self.sprite));
