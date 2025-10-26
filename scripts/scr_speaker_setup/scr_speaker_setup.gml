/// @description Конструктор для настройки спикера
/// @param {String} _id Строковый идентификатор спикера
/// @param {Asset.GMSprite} _dialog_box_sprite Спрайт диалогового окна
/// @param {Real} _pos_x X позиция окна диалога
/// @param {Real} _pos_y Y позиция окна диалога
function SpeakerData(_id, _dialog_box_sprite, _pos_x, _pos_y) constructor {
    speaker_id = _id;

    dialog_box_sprite = _dialog_box_sprite;
    dialog_box_pos_x = _pos_x;
    dialog_box_pos_y = _pos_y;
}

/// @description Регистрация спикера в глобальной базе
/// @param {Struct.SpeakerData} _speaker_data Данные спикера
function register_speaker(_speaker_data) {
    global.speakers[$ _speaker_data.speaker_id] = _speaker_data;
}

/// @description Получение данных спикера по ID
/// @param {String} _speaker_id Строковый ID спикера
/// @return {Struct.SpeakerData}
function get_speaker(_speaker_id) {
    if (variable_struct_exists(global.speakers, _speaker_id)) {
        return global.speakers[$ _speaker_id];
    }
    
    // Если спикер не найден, вернуть дефолтного
    show_debug_message("Warning: Speaker '" + _speaker_id + "' not found!");
    return global.speakers[$ "default"];
}
 