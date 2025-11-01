/// 
var _inst_cur_yura_collision = collision_rectangle(
    self.x,
    self.y,
    self.x + self.sprite_width,
    self.y + self.sprite_height,
    obj_yura,
    false,
    true
)

var _touched_by_yura;
if (_inst_cur_yura_collision) {
    _touched_by_yura = true;
} else {
    _touched_by_yura = false;
}

var _interaction_button_pressed = keyboard_check_pressed(vk_enter);

if (!_dialog_started && _touched_by_yura && _interaction_button_pressed) {
    self.start_dialog();
} else if (_dialog_started) {
    self.process_dialog(_interaction_button_pressed);    
}