/// @description just moving to left object

if (self.sprite != undefined)
{
	sprite_index = self.sprite;
}

--x;
if (x <= self.dead_line)
{
	instance_destroy();	
}