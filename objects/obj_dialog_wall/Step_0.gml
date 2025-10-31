/// 
var _has_collision = collision_rectangle(
    self.x,
    self.y,
    self.x + self.sprite_width,
    self.y + self.sprite_height,
    obj_yura,
    false,
    true
)

var _touched_by_yura;
if (_has_collision) {
    _touched_by_yura = true;
} else {
    _touched_by_yura = false;
}

var _start_button_pressed = keyboard_check_pressed(vk_enter);

