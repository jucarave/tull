if (!level_is_visible(floor(x / GRID_WIDTH), floor(y / GRID_HEIGHT))) { exit; }

draw_sprite_ext(sprite_index, image_index, x + objLevel.xport, y + objLevel.yport, image_xscale, image_yscale, image_angle, image_blend, image_alpha);