draw_self()

draw_set_font(buttonFont);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x,y, button_name);
//draw_text_transformed_colour(x,y, button_name, 0.5,0.5,0,0,0,0,0,0)

draw_set_halign(fa_left);
draw_set_valign(fa_top);



/*draw_self();

// --- nastavenia fontu ---
draw_set_font(buttonFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// --- rozmery buttonu ---
var bw = sprite_width * image_xscale;
var bh = sprite_height * image_yscale;

// --- padding (aby text nezačínal od kraja) ---
var padding = 20; 

// --- veľkosť textu ---
var tw = string_width(button_name);
var th = string_height(button_name);

// --- dostupný priestor ---
var max_w = bw - padding;
var max_h = bh - padding;

// --- výpočet scale ---
var scale_w = max_w / tw;
var scale_h = max_h / th;

// použijeme menší scale aby sa zmestil aj na výšku aj na šírku
var final_scale = min(scale_w, scale_h, 0.5); // 1 = max veľkosť

// --- vykreslenie ---
draw_text_transformed(x, y, button_name, final_scale, final_scale, 0);

// reset
draw_set_halign(fa_left);
draw_set_valign(fa_top);

*/