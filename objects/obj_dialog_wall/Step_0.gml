/// @description dialog (STARTS ONLY WITH TEXT[0])
// You can write your code in this editor
var ENTER = keyboard_check_pressed(vk_enter);
if ((place_meeting(x, y, obj_yura)) && ENTER && !reading)
{
	my_text_box = instance_create_depth(needx, needy, self.depth, self.goal_object, {
		text: other.text,
		phrase_ind: other.phrase_ind,
		});
	global.dialog = true;
	alarm[0] = 180;
	self.reading = true;
}
else if(reading && ENTER)
{
	instance_destroy(my_text_box)
	self.phrase_ind += 1;
	if (phrase_ind == array_length(self.text))
	{
		global.dialog = false;
		instance_destroy();
	}
	else
	{
		my_text_box = instance_create_depth(needx, needy, self.depth, self.goal_object, {
			text:  other.text,
			phrase_ind: other.phrase_ind
			});
		alarm[0] = 180;
	}
}