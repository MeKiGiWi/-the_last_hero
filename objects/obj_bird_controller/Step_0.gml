if (global.is_cutscene)
{
	if (next_delay > 0) 
	{
		--next_delay;
		if (next_delay <= 0) 
		{
			var object_x = self.min_spawn_x;
			var object_y = irandom_range(self.min_spawn_y, self.max_spawn_y);
			var count = irandom_range(1, self.max_count);
			for (var i = 0; i < count; ++i)
			{
				var object = instance_create_layer(
					object_x + choose(-1, 1) * irandom_range(15, 30),
					object_y + choose(-1, 1) * irandom_range(10, 25),
					string(self.object_layer),
					obj_bird
				);
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