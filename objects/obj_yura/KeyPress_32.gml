/// @description press space to skip cutscene 

if (global.is_cutscene)
{
	// just for testing cutscene in bus
	global.is_cutscene = false;
	var tp = instance_create_layer(50, 200, "objects", obj_goto);
	tp.room_to_go = rm_street_0;
	tp.roomx = 20;
	tp.roomy = 254;
	tp.start_sprite = spr_yura_stat_RIGHT;
	tp.type_of_door = "empty";
	tp.transition_effect = "blackscreen";
	tp.auto_transition = "yes";
}