/// @description Конструктор для одной строки диалога
/// @param {String} _speaker_id Строковый ID говорящего
/// @param {String} _text Текст реплики
/// @param {Real} _width Ширина окна (0 = использовать дефолтную)
function DialoguePhrase(_speaker_id, _text, _width) constructor {
    speaker_id = _speaker_id;
    text = _text;
    window_width = _width;
    
    actions = []; // Массив действий после этой реплики
    delay_after = 0; // Задержка перед следующей репликой
    
    /// @description Добавить действие к этой реплике
    static add_action = function(_action) {
        array_push(actions, _action);
        return self; // Для chaining
    }
    
    /// @description Выполнить все действия этой реплики
    static execute_actions = function() {
        for (var i = 0; i < array_length(actions); i++) {
            actions[i].execute();
        }
    }
}
 