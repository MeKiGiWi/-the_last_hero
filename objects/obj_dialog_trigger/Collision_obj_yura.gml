/// @description Handle collision with player character (obj_yura)

// Set the activated flag
activated = true;

// Example dialog data - this would typically be set in the room editor or by another script
if (array_length_1d(dialog_data) == 0) {
    // Default example dialog if none is set
    dialog_data = [
        ["Hello, traveler!", 0],
        ["This is an example dialog from a trigger object.", 200],
        ["Press Enter to continue...", 0],
        ["Have a nice day!", 0]
    ];
}