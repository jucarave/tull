draw_set_font(fntConsolas10);
draw_set_color(c_white);
draw_set_halign(fa_center);

draw_text(320, 180, "New Game");
draw_text(320, 192, "Load Game");
draw_text(320, 204, "Exit");

draw_sprite(sprTitleCursor, 0, 270, 183 + cursor * 12);