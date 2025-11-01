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
}


start_dialog = function() {
    _dialog_started = true;
    global.dialog = true;
    
    var keys = variable_struct_get_names(speakers_positions);
    for (var i = 0; i < array_length(keys); i++) {
        var speaker_name = keys[i];
        var pos = variable_struct_get(speakers_positions, speaker_name);
        var dialog_instance = instance_create_layer(
            pos.x,
            pos.y,
            self.layer,
            obj_dialog_box_x
            );
        variable_struct_set(dialog_box_instances, speaker_name, dialog_instance);
    }
    _dialog_phrases = get_dialogue_phrase(
        self.dialog_name,
        global.chapter_one_dialogs
        );
    show_debug_message(_dialog_phrases[0]);
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

self.instance_init();