/// @type {Struct.DialoguePhrase} 
current_phrase = new DialoguePhrase("", "", 0); 

_current_text_length = 0;
_current_phrase_length = 0;
_end_timer = 0;
/// @description для отслеживания установки новой фразы с задержкой
_set_timer = 0;
delay_after = 1.0;
_to_set_with_delay = false; 
_phrase_done = true;

/// @param {Struct.DialoguePhrase} phrase новая фраза
set_phrase = function(phrase){
    self.current_phrase = phrase;
    self._current_text_length = 0; 
    self._current_phrase_length = string_length(
        self.current_phrase.text
        )
    self._end_timer = 0;
    self._set_timer = 0;
    self._phrase_done = false;
}

/// @param {Struct.DialoguePhrase} phrase новая фраза
set_phrase_with_delay = function(phrase){
    self._to_set_with_delay = true;
    self.set_phrase(phrase);

    self._phrase_done = true;
}

end_phrase = function() {
    self._phrase_done = true;
    self._current_text_length = 0; 
}

end_with_delay = function() {
    self._current_text_length = self._current_phrase_length; 
}