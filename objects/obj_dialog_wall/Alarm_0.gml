/// @description Insert description here
// You can write your code in this editor
instance_destroy(my_text_box);
self.phrase_ind += 1;
if (phrase_ind == array_length(self.text))
{
	global.dialog = false;
	instance_destroy();
}
else
{
	my_text_box = instance_create_depth(needx, needy, self.depth, self.goal_object, {
		text: other.text,
		phrase_ind: other.phrase_ind
		});
	alarm[0] = 180;
}