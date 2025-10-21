// СОБЫТИЕ ROOM START
if (global.last_room != room) { // Проверка, что комната изменилась
    global.last_room = room; // Обновляем глобальную переменную предыдущей комнаты
    
    // Обновляем last_direction на основе текущего спрайта
    if (sprite_index == spr_yura_stat_RIGHT) {
        last_direction = "right";
    } else if (sprite_index == spr_yura_stat_LEFT) {
        last_direction = "left";
    }
}