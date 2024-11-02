/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 66E8E582
/// @DnDComment : // Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377
/// @DnDInput : 2
/// @DnDArgument : "funcName" "string_wrap"
/// @DnDArgument : "arg" "_text"
/// @DnDArgument : "arg_1" "_width"
function string_wrap(_text, _width) 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 36A0FCC8
	/// @DnDParent : 66E8E582
	/// @DnDArgument : "code" "var _text_wrapped = "";$(13_10)var _space = -1;$(13_10)var _char_pos = 1;$(13_10)while (string_length(_text) >= _char_pos)$(13_10)    {$(13_10)    if (string_width(string_copy(_text, 1, _char_pos)) > _width)$(13_10)        {$(13_10)        if (_space != -1)$(13_10)            {$(13_10)            _text_wrapped += string_copy(_text, 1, _space) + "\n";$(13_10)            _text = string_copy(_text, _space + 1, string_length(_text) - (_space));$(13_10)            _char_pos = 1;$(13_10)            _space = -1;$(13_10)            }$(13_10)        }$(13_10)    if (string_char_at(_text,_char_pos) == " ")$(13_10)        {$(13_10)        _space = _char_pos;$(13_10)        }$(13_10)    _char_pos += 1;$(13_10)    }$(13_10)if (string_length(_text) > 0)$(13_10)    {$(13_10)    _text_wrapped += _text;$(13_10)    }$(13_10)return _text_wrapped;"
	var _text_wrapped = "";
	var _space = -1;
	var _char_pos = 1;
	while (string_length(_text) >= _char_pos)
	    {
	    if (string_width(string_copy(_text, 1, _char_pos)) > _width)
	        {
	        if (_space != -1)
	            {
	            _text_wrapped += string_copy(_text, 1, _space) + "\n";
	            _text = string_copy(_text, _space + 1, string_length(_text) - (_space));
	            _char_pos = 1;
	            _space = -1;
	            }
	        }
	    if (string_char_at(_text,_char_pos) == " ")
	        {
	        _space = _char_pos;
	        }
	    _char_pos += 1;
	    }
	if (string_length(_text) > 0)
	    {
	    _text_wrapped += _text;
	    }
	return _text_wrapped;
}