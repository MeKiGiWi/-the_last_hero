for (i = 0; i < 200; i++)
{
	instance_create_depth(irandom(room_width), irandom(room_height), self.depth, obj_snow);
}
