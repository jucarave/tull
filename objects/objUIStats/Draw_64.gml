var length = (objSystem.maxHP + 2) / 3;
draw_sprite_ext(sprUIBar, 0, 2, 357, 5/3, length, 0, c_white, 1);
draw_sprite_ext(sprHPBarFill, 0, 3, 356, 1, objSystem.hp, 0, c_white, 1);

var length = (objSystem.maxMP + 2) / 3;
draw_sprite_ext(sprUIBar, 0, 9, 357, 4/3, length, 0, c_white, 1);
draw_sprite_ext(sprMPBarFill, 0, 10, 356, 1, objSystem.mp, 0, c_white, 1);

draw_sprite(sprUIItemBack, 0, 15, 308);

ui_draw_weapons();