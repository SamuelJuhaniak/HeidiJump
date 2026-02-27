if (dialog_active)
{
    box_w = 350;
    box_h = 80;
    
    box_x = (display_get_gui_width() - box_w) / 2;
    box_y = display_get_gui_height() - 60;

    draw_set_color(#333232);
    draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, false);

    draw_set_color(c_white);
    draw_text_transformed(box_x + 1, box_y + 3, dialog_text[dialog_index], 1.5, 1.5, 0);
}