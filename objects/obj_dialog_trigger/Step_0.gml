/// @description Check for player proximity and handle dialog activation

// Find nearest player
var player = instance_nearest(x, y, obj_yura);

// Check if player is colliding and not already in a dialog
if (player != noone && place_meeting(x, y, player) && !player.dialog_active && activated) {
    // Check if dialog data is available
    if (array_length_1d(dialog_data) > 0) {
        // Create the dialog using our system
        scr_create_dialog_from_array(dialog_data, player.x - 2, player.y - 75);
    }
}