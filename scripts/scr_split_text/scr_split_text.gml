function scr_split_text(text, separator, max_width) {
    var lines = [];
    var words = string_split(text, " ");
    var current_line = "";
    
    for (var i = 0; i < array_length(words); i++) {
        var test_line = current_line;
        if (test_line != "") test_line += " ";
        test_line += words[i];
        
        // ПРОВЕРЯЕМ ШИРИНУ ТЕКСТА
        var text_width = string_width(test_line);
        
        if (text_width <= max_width) {
            current_line = test_line;
        } else {
            // ДОБАВЛЯЕМ ТЕКУЩУЮ СТРОКУ В МАССИВ
            if (current_line != "") {
                array_push(lines, current_line);
            }
            current_line = words[i];
        }
    }
    
    // ДОБАВЛЯЕМ ПОСЛЕДНЮЮ СТРОКУ
    if (current_line != "") {
        array_push(lines, current_line);
    }
    
    return lines;
}