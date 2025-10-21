var hero = instance_nearest(x, y, obj_yura);
var activate_obj = instance_nearest(x, y, obj_activate_dialog);

if (hero != noone && !hero.dialog_active) { // ТОЛЬКО ЭТА ПРОВЕРКА
    if (activate_obj != noone && activate_obj.activated) {
        hero.dialog_active = true;
        var dialogX = hero.x - 2;
        var dialogY = hero.y - 75;
        instance_create_layer(dialogX, dialogY, "snowfall", obj_dialog_anim_X);
    }
}