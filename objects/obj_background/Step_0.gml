--x;
if (!created_next && x <= -(sprite_get_width(self.sprite_index) - room_width))
{
	var inst = instance_create_layer(x + sprite_get_width(self.sprite_index), 0, self.background_layer, obj_background);
	inst.sprite_index = self.sprite_index;
	inst.background_layer = self.background_layer;
	created_next = true;
}
if (x <= -sprite_get_width(self.sprite_index))
{
	instance_destroy();
}