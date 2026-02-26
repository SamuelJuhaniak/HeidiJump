gui_x = 1000;
gui_y = 50;
gui_space = 50;
gui_scale = 3;



for (i = 1; i <= maxHealth; i++){
	if(i <= currentHealth){
		draw_sprite_ext(sHealth, 5, gui_x + i * gui_space, gui_y, gui_scale, gui_scale, 0, c_white, 1)
	}else{
		draw_sprite_ext(sHealthDown, 5, gui_x + i * gui_space, gui_y, gui_scale, gui_scale, 0, c_white, 1)
	}
}

