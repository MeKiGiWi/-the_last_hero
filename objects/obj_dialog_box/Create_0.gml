/// @description Initialize the dialog box

// Initialize text variables
text_content = "";
current_length = 0;
text_finished = false;
text_speed = 0.35;
text_counter = 0;

// Initialize positioning
text_offset_x = 5;
text_offset_y = 3;

// Get base dimensions
base_width = sprite_get_width(sprite_index);
base_height = sprite_get_height(sprite_index);

// Store initial position
initial_x = x;
initial_y = y;

// Set depth for proper layering
depth = -900;

// Default width (will be adjusted based on dialog data)
image_xscale = 1;
image_yscale = 1;