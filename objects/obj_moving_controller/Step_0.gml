if (global.is_cutscene)
{
	if (next_delay > 0) 
	{
		--next_delay;
		if (next_delay <= 0) 
		{
			var object_x = random_range(self.min_spawn_x, self.max_spawn_x);
			var object_y = 0;
			var object = instance_create_layer(
				object_x,
				object_y,
				string(self.object_layer),
				obj_moving
			);
			
			var sprite = get_random_sprite(self.sprites);
			if (irandom_range(1, 100) <= 70 && sprite == spr_bog)
			{
				sprite = self.sprites[irandom_range(1, array_length(self.sprites)) - 1];
			}
			
			object.sprite = sprite;
			object.dead_line = self.dead_line;
			
			if (object.sprite == spr_dom_5) // sprite with bugged pipes
			{
				var smoke_from_pipes = instance_create_layer(
					object_x + 263,
					112,
					string(self.object_layer),
					obj_moving
				);
				smoke_from_pipes.sprite = spr_smoke;
				smoke_from_pipes.dead_line = self.dead_line;
			}
			
			set_next_delay(self.min_delay, self.max_delay);
		}
	}
	else
	{
		set_next_delay(self.min_delay, self.max_delay);
	}
}
else
{
	next_delay = 0;
}