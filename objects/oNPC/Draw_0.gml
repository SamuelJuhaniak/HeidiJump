draw_self();

// Hint ked je hrac blizko
if (player_near && !dialog_active)
{
    draw_set_color(c_white);
    draw_text(x - 35, y - 24, "Press E");
}

// ===== MALY DIALOG BOX =====
if (dialog_active)
{
    var box_w = 157;
    var box_h = 22;
    
    var box_x = (room_width - box_w) / 2;
    var box_y = room_height - 30;

    draw_set_color(c_black);
    draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, false);

    draw_set_color(c_white);
    draw_text(box_x + 1, box_y + 3, dialog_text[dialog_index]);
}