/// 
if (floor(self.image_index) == sprite_get_number(self.sprite_index) - 1) {
    self.image_speed = 0;
}

if (self.current_phrase.window_width != 0) {
    var _new_xscale = self.current_phrase.window_width / sprite_get_width(self.sprite_index);
    self.image_xscale = _new_xscale;
} else {
    self.image_xscale = 1;
}