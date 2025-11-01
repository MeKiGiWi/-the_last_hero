function Pos(_x=0, _y=0) constructor {
    /// @type {Real} 
    x = _x;
    /// @type {Real} 
    y = _y; 
}

/// @param {Id.Instance.obj_dialog_wall} wall_instance текущая стенка  
/// @param {String} name имя участника диалога
/// @param {Real} height текущая высота dialog box
/// @param {Real} width текущая ширина dialog box
/// @returns {Struct.Pos} x и y куда ставить dialog box
function get_dialogue_box_pos(wall_instance, name, height = 0, width = 0) {
    var _pos = new Pos();
    _pos.x = -1;
    _pos.y = -1;

    switch(name) {
        case "yura":
            if (height == 0) {
                height = 118;
            }
            if (width == 0) {
                width = 41;
            }
            var nearest_yura = instance_nearest(wall_instance.x, wall_instance.y, obj_yura);
            
            if (nearest_yura != noone) {
                _pos.x = nearest_yura.x - width;
                _pos.y = nearest_yura.y - height;
                return _pos;
            } else {
                return _pos;
            }
        default:
            return _pos;
    }
}