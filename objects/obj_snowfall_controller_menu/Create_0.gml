/// @description create effect like snowfall


for (i = 0; i < 50; i++)
{
	instance_create_depth(irandom(room_width), irandom(room_height), self.depth, obj_snow_menu);
}