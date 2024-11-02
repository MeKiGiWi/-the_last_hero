if (place_meeting (x, y, obj_yura)){
	if (keyboard_check_pressed(vk_enter)){
	if (my_text_box == noone){
		my_text_box = instance_create_layer(192, 261, "Text", obj_textbox);
		my_text_box.text = my_text;
		my_text_box.creator = self;
	   }
	}
} else {
	if (my_text_box != noone){
		instance_destroy(my_text_box);
		my_text_box = noone;	
	}
}	
	
	