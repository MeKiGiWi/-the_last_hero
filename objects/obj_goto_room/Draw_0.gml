/// @description Smooth black screen
// You can write your code in this editor


draw_set_color(c_black);
draw_set_alpha(self.opacity);
var _tmp_depth = self.depth
self.depth = -9999;
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);
draw_set_color(c_white);