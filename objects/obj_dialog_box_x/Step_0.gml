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

if (self._current_text_length < string_length(self.current_phrase.text) 
    && !self._phrase_done) {

    self._current_text_length += global.dialogue_typewriter_speed;
} else if (self._current_text_length >= self._current_phrase_length 
            && !self._phrase_done) {

    self._end_timer += 1;
    if (self._end_timer * game_get_speed(gamespeed_fps) >= self.delay_after) {
        self.end_phrase();
    } 
}

if (self._to_set_with_delay) {
    self._set_timer += 1;

    // запускаем диалог после паузы
    if (self._set_timer * game_get_speed(gamespeed_fps) >= self.delay_after) {
        self._phrase_done = false;
        self._to_set_with_delay = false;
    } 
}