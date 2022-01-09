draw_set_font(global.DMG_FONT);
draw_set_halign(fa_center);
draw_set_alpha(image_alpha);
draw_text(x + GRID_WIDTH / 2, y, damage);

draw_set_halign(fa_left);
draw_set_alpha(1);