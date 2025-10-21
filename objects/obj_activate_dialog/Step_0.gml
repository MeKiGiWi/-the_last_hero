// Событие Step
var hero = instance_nearest(x, y, obj_yura); // Поиск ближайшего героя
if (hero != noone && !place_meeting(x, y, hero)) { // Проверка на отсутствие пересечения
    activated = false; // Сброс переменной, если персонаж вышел из зоны
}