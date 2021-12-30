if (action == "") { exit; }

draw_set_font(fntConsolas10);
draw_set_halign(fa_center);
draw_text(camera_get_view_width(camera) / 2, 8, action);

draw_set_halign(fa_left);