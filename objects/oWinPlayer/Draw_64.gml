gui_x = view_wport[0] - 350;
gui_y = view_hport[0] - 710;
gui_space = 50;
gui_scale = 3;

for (i = 1; i <= maxHealth; i++){
	if(i <= currentHealth){
		draw_sprite_ext(sHealthWin, 5, gui_x + i * gui_space, gui_y, gui_scale, gui_scale, 0, c_white, 1)
	}
}

if (flash_alpha > 0) {
    draw_set_color(flash_color);
    draw_set_alpha(flash_alpha);
    draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
    draw_set_alpha(1);
}