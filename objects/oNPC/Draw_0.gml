/*draw_self();

if (player_near && !dialog_active)
{
    draw_set_color(c_white);
    draw_text_transformed(x - 5, y - 15, "Press E", 0.3, 0.3, 0);
}

if (dialog_active)
{
    box_w = 80;
    box_h = 12;
    
    box_x = (room_width - box_w) / 2;
    box_y = room_height - 60;

    draw_set_color(#333232);
    draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, false);

    draw_set_color(c_white);

    draw_text_transformed(box_x + 1, box_y + 3, dialog_text[dialog_index], 0.3, 0.3, 0);
}
*/

// GUI should be better

draw_self();

if (player_near && !dialog_active)
{
    draw_set_color(c_white);
    draw_text_transformed(x - 3, y - 15, "Press E", 0.3, 0.3, 0);
}