/// @description Базовый класс для действий
function DialogueAction() constructor {
    static execute = function() {
        // Переопределить в дочерних классах
    }
}

/// @description Установка глобального флага
function SetFlagAction(_flag_name, _value) : DialogueAction() constructor {
    flag_name = _flag_name;
    value = _value;
    
    static execute = function() {
        variable_global_set(flag_name, value);
    }
}

/// @description Воспроизведение звука
function PlaySoundAction(_sound_asset) : DialogueAction() constructor {
    sound = _sound_asset;
    
    static execute = function() {
        audio_play_sound(sound, 10, false);
    }
}

/// @description Запуск другого диалога
function StartDialogueAction(_dialogue_id) : DialogueAction() constructor {
    dialogue_id = _dialogue_id;
    
    static execute = function() {
        dialogue_start(dialogue_id);
    }
}
 