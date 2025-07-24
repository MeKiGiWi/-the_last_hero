/// @description main controller of cutscene


// disable yura's visibility
obj_yura.image_alpha = 0;


/// creating objects for cutscene
var gray_background = instance_create_layer(0, 0, "gray_background", obj_background);
gray_background.sprite_index = spr_start_back1;
gray_background.background_layer = "gray_background";

var houses_controller = instance_create_layer(0, 0, "houses", obj_moving_controller);
houses_controller.sprites = [spr_bog, spr_dom_1, spr_dom_2, spr_dom_3, spr_dom_4, spr_dom_5];
houses_controller.object_layer = "houses";
houses_controller.min_spawn_x = 400;
houses_controller.max_spawn_x = 400;
houses_controller.min_delay = 2;
houses_controller.max_delay = 5;
houses_controller.dead_line = -450;

var trees_far_controller = instance_create_layer(0, 0, "trees_far", obj_moving_controller);
trees_far_controller.sprites = [spr_wood_2, spr_wood_3];
trees_far_controller.object_layer = "trees_far";
trees_far_controller.min_spawn_x = 400;
trees_far_controller.max_spawn_x = 500;
trees_far_controller.min_delay = 1;
trees_far_controller.max_delay = 3;
trees_far_controller.dead_line = -450;

var road_background = instance_create_layer(0, 0, "road_background", obj_background);
road_background.sprite_index = spr_start_road;
road_background.background_layer = "road_background";

var bus = instance_create_layer(216, 171, "bus", obj_bus1);
var light_from_bus = instance_create_layer(0, 0, "bus", obj_bus_light);

var snowfall_controller = instance_create_layer(0, 0, "snowfall", obj_snowfall_controller);

var sky_background = instance_create_layer(0, 0, "sky_background", obj_background);
sky_background.sprite_index = spr_sky;
sky_background.background_layer = "sky_background";

var trees_close_controller = instance_create_layer(0, 0, "trees_close", obj_moving_controller);
trees_close_controller.sprites = [spr_wood_1];
trees_close_controller.object_layer = "trees_close";
trees_close_controller.min_spawn_x = 450;
trees_close_controller.max_spawn_x = 600;
trees_close_controller.min_delay = 7;
trees_close_controller.max_delay = 20;
trees_close_controller.dead_line = -450;

var streetlamp_controller = instance_create_layer(0, 0, "streetlamp", obj_moving_controller);
streetlamp_controller.sprites = [spr_flashlight_ON, spr_flashlight_OFF];
streetlamp_controller.object_layer = "streetlamp"; 
streetlamp_controller.min_spawn_x = 450; // streetlamps had to stay in some order
streetlamp_controller.max_spawn_x = 450;
streetlamp_controller.min_delay = 10;
streetlamp_controller.max_delay = 10;
streetlamp_controller.dead_line = -450;

var bird_controller = instance_create_layer(0, 0, "birds", obj_bird_controller);
bird_controller.sprites = [spr_bird];
bird_controller.object_layer = "birds"; 
bird_controller.min_spawn_x = -60;
bird_controller.max_spawn_x = 700;
bird_controller.min_spawn_y = 110;
bird_controller.max_spawn_y = 130;
bird_controller.min_delay = 10;
bird_controller.max_delay = 25;
bird_controller.dead_line = -450;

var vingette = instance_create_layer(0, 0, "vingette_background", obj_bus_vingette);


// init values for blocking obj_yura and controlling cutscene
global.is_cutscene = true;
cutscene_step = 0;