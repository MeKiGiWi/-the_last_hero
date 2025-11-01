/// @description Update text animation

// Animate text if not finished
if (!text_finished) {
    text_counter += text_speed;
    current_length = floor(text_counter);
    
    if (current_length >= string_length(text_content)) {
        current_length = string_length(text_content);
        text_finished = true;
    }
}