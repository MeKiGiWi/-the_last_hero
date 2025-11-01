function Pos() constructor {
    /// @type {Real} 
    x = 0;
    /// @type {Real} 
    y = 0; 
}

/// @param {Id.Instance.obj_dialog_wall} wall_instance текущая стенка  
/// @param {String} name имя участника диалога
/// @param {Real} height текущая высота dialog box
/// @param {Real} width текущая ширина dialog box
/// @returns {Struct.Pos} x и y куда ставить dialog box
function get_dialogue_box_pos(wall_instance, name, height = 0, width = 0) {
    var _pos = new Pos();
    if (height == 0) {
        height = sprite_get_height(spr_dialog_anim_x) + sprite_get_height(spr_dialog_arrow_x);
    }
    if (width == 0) {
        width = sprite_get_width(spr_dialog_anim_x);
    }
    switch(name) {
        case "yura":
            var nearest_yura = instance_nearest(wall_instance.x, wall_instance.y, obj_yura);
            
            if (nearest_yura != noone) {
                _pos.x = nearest_yura.x + width;
                _pos.y = nearest_yura.y + height;
                return _pos;
            } else {
                _pos.x = -1;
                _pos.y = -1;
                return _pos;
            }
        default:
            _pos.x = -1;
            _pos.y = -1;
            return _pos;
    }
}