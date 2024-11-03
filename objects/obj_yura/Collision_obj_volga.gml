/// @description Insert description here
// You can write your code in this editor
if ((keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("e"))) && my_text_box == noone)
{
	my_text_box = instance_create_layer(192, 261, "Text", obj_textbox);
	my_text_box.text = my_text;
	my_text_box.creator = self;

}