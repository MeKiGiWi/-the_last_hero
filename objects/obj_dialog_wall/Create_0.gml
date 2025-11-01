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
    for (var i = 0; i < array_length_1d(keys); i++) {
        var speaker_name = keys[i];
        var pos = variable_struct_get(speakers_positions, speaker_name);
        var dialog_instance = instance_create_layer(pos.x, pos.y, self.layer, obj_dialog_box_x);
        // dialog_box_instances[| speaker_name] = dialog_instance;
        struct_set(dialog_box_instances, speaker_name, dialog_instance);
    }
}

/// @param {bool} interaction_button_pressed нажата ли кнопка для взаимодействия
process_dialog = function(interaction_button_pressed) {
    show_debug_message("processing dialogue phrases");
}

self.instance_init();