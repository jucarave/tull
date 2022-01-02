var length = (objSystem.maxHP + 2) / 3;
draw_sprite_ext(sprUIBar, 0, 2, 357, 5/3, length, 0, c_white, 1);
draw_sprite_ext(sprHPBarFill, 0, 3, 356, 1, objSystem.hp, 0, c_white, 1);