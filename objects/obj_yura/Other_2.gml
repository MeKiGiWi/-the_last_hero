/// @description global variables init and screensize change
// You can write your code in this editor

global.dialog = false;
global.pause = false;
global.room = 0;
global.black_scr_opacity = 0;
global.to_black_scr = false;
global.gate_num = 0;


window_set_caption("The last hero");
window_set_size(display_get_width(), display_get_height());
window_center();