/// @description Handle Enter key press to advance dialog

// Find the dialog box instance
if (!instance_exists(dialog_box_ref) || dialog_box_ref == undefined) {
    show_debug_message("Dialog box not found, ending dialog");
    // End the dialog
    with (obj_yura) {
        dialog_active = false;
    }
    instance_destroy();
    exit;
}

// If the text is not finished, finish it immediately
if (!dialog_box_ref.text_finished) {
    dialog_box_ref.current_length = string_length(dialog_box_ref.text_content);
    dialog_box_ref.text_finished = true;
} else {
    // Move to the next line
    current_line++;
    
    if (current_line < total_lines) {
        // Load the next dialog line
        var next_dialog_line = dialog_data[current_line];
        dialog_box_ref.text_content = next_dialog_line[0];      // The string part
        var new_width = next_dialog_line[1];                    // The width part
        
        // Update dialog box width if specified
        if (new_width > 0) {
            dialog_box_ref.image_xscale = new_width / dialog_box_ref.base_width;
        } else {
            // Use default width if 0 is specified
            dialog_box_ref.image_xscale = 1;
        }
        
        // Reset text animation
        dialog_box_ref.current_length = 0;
        dialog_box_ref.text_finished = false;
    } else {
        // Dialog is finished
        with (obj_yura) {
            dialog_active = false;
        }
        instance_destroy();
        
        // Also destroy the dialog box
        if (instance_exists(dialog_box_ref)) {
            instance_destroy(dialog_box_ref);
        }
    }
}