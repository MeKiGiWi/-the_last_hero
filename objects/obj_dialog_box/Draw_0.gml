/// @description Draw the dialog box and animated text

// Draw the dialog box background
draw_self();

// Calculate actual window boundaries considering origin and scale
var window_top = y - (sprite_get_height(sprite_index) * image_yscale);    // Top of window
var window_left = x - (sprite_get_width(sprite_index) * image_xscale / 2); // Left edge of window
var window_width = sprite_get_width(sprite_index) * image_xscale;          // Window width

// Position text with configurable offsets
var text_x = window_left + text_offset_x;          // Configurable left offset
var text_y = window_top + text_offset_y;           // Configurable top offset
var text_width = window_width - (text_offset_x * 2); // Text width (minus offsets on both sides)

// Extract part of text for animation
var display_text = string_copy(text_content, 1, current_length);

// Set font and color
draw_set_font(fnt_dialog);
draw_set_color(c_white);

// Draw text with word wrapping
draw_text_ext(text_x, text_y, display_text, -1, text_width);