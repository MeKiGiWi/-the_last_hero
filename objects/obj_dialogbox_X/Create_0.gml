// МАССИВ С РЕПЛИКАМИ ДИАЛОГА
dialog_lines = array_create(0);
  dialog_lines[0] = ["Привет!", 0];                
  dialog_lines[1] = ["Меня зовут Юра.", 112];      
  dialog_lines[2] = ["Я из России и мне тут очень-очень грустно...", 144];
  dialog_lines[3] = ["И холодно.", 78];
  dialog_lines[4] = ["Пиздец...", 78];


// БАЗОВЫЙ РАЗМЕР ОКНА
base_width = sprite_get_width(sprite_index);
base_height = sprite_get_height(sprite_index);

// ТЕКУЩИЙ НОМЕР РЕПЛИКИ
current_line = 0;

// ЗАГРУЖАЕМ ПЕРВУЮ РЕПЛИКУ
current_text = dialog_lines[current_line][0];

// ЗАПОМИНАЕМ НАЧАЛЬНУЮ ПОЗИЦИЮ ОКНА
initial_x = x;
initial_y = y;

// НАСТРОЙКИ ОТСТУПОВ ТЕКСТА
text_offset_x = 5;
text_offset_y = 3;

// ОСНОВНЫЕ ПЕРЕМЕННЫЕ ДЛЯ ТЕКСТА
text_speed = 0.35;
text_counter = 0;
text_finished = false;
current_length = 0;

// УСТАНАВЛИВАЕМ ВЫСОКИЙ ПРИОРИТЕТ ОТРИСОВКИ
depth = -10000;