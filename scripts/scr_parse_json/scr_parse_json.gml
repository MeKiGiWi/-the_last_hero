/// @param {String} file_path Путь к файлу
/// @returns {Any} Спаршенный JSON из переданного файла
function parse_json_file_by_path(file_path) {
    var file = file_text_open_read(file_path);
    var result = undefined;
    
    var json_string = "";
    
    while (!file_text_eof(file)) {
        json_string += file_text_read_string(file);
        file_text_readln(file); 
        if (!file_text_eof(file)) {
            json_string += "\n";
        }
    }
    
    file_text_close(file);
    
    if (json_string != "") {
        result = json_parse(json_string);
    } else {
        show_debug_message("ERROR: JSON file is empty - " + file_path);
    }
}