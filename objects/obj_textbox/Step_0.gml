if (keyboard_check_pressed(vk_enter)){
	if (page+1 < array_length(text)){
		page += 1;
	} else {
	    instance_destroy();
		
	}

}	