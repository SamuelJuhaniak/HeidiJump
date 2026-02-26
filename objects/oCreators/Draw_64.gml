var txt = "Creators: \nStefan Tatar\nSamuel Juhaniak\n Patrik Sebastian Jakubec";
var margin = 16;

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_set_colour(#170000);


draw_text_transformed(room_width - margin, room_height - margin, txt, 0.7, 0.7, 0);