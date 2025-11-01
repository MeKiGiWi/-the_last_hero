instance_init = function() {
    _dialog_started = false;
    dialog_box_instances = {};
    _current_phrase = 0;

    speakers_positions = {
        "yura": get_dialogue_box_pos(
            self,
            "yura"
            )
    };
    dialog_name = "";
    disposable = true;
    dynamic_names = ["yura"];
}


start_dialog = function() {
    _dialog_started = true;
    global.dialog = true;
    
    var keys = variable_struct_get_names(speakers_positions);
    for (var i = 0; i < array_length(keys); i++) {
        var speaker_name = keys[i];
        var pos = variable_struct_get(speakers_positions, speaker_name);
        if (array_contains(dynamic_names, speaker_name)) {
            pos = get_dialogue_box_pos(self, speaker_name);
        }
        var dialog_instance = instance_create_layer(
            pos.x,
            pos.y,
            self.layer,
            obj_dialog_box_x
            );
        variable_struct_set(dialog_box_instances, speaker_name, dialog_instance);
    }
    _dialog_phrases = get_dialogue_phrases(
        self.dialog_name,
        global.chapter_one_dialogs
        );
    self.process_first_phrase();
}

process_first_phrase = function() {
    var current_phrase_struct = self._dialog_phrases[self._current_phrase]; 

    /// @type {Id.Instance.obj_dialog_box_x} 
    var _current_dialog_box = variable_struct_get(
        dialog_box_instances,
        current_phrase_struct.speaker_id
        );
    _current_dialog_box.set_phrase(current_phrase_struct);
}

/// @description Заканчивает текущую фразу и переходит к следующей
process_next_phrase = function() {
    if (self._current_phrase == array_length(self._dialog_phrases) - 1) {
        end_dialog();
        return;
    }
    var current_phrase_struct = self._dialog_phrases[self._current_phrase];
    var next_phrase_struct = self._dialog_phrases[++self._current_phrase];

    /// @type {Id.Instance.obj_dialog_box_x} 
    var _current_dialog_box = variable_struct_get(
        dialog_box_instances,
        current_phrase_struct.speaker_id
        );

    /// @type {Id.Instance.obj_dialog_box_x} 
    var _next_dialog_box = variable_struct_get(
        dialog_box_instances,
        next_phrase_struct.speaker_id
        );

    if (_current_dialog_box == _next_dialog_box) {
        _current_dialog_box.set_phrase_with_delay(next_phrase_struct);
    }
    _current_dialog_box.end_with_delay();
    _next_dialog_box.set_phrase_with_delay(next_phrase_struct);    

}

end_dialog = function() {
    var keys = variable_struct_get_names(speakers_positions);

    for (var i = 0; i < array_length(keys); i++) {
        instance_destroy(variable_struct_get(
            self.dialog_box_instances,
            keys[i]
        ));
    }
    global.dialog = false;
    if (self.disposable) {
        instance_destroy();
    }
    self._dialog_started = false;
    self._current_phrase = 0;
}

self.instance_init();