draw_self()

if (hovered) {
    draw_set_color(c_gray);
} else {
    draw_set_color(c_white);
}

draw_set_font(buttonFont);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x,y, button_name);


draw_set_halign(fa_left);
draw_set_valign(fa_top);


