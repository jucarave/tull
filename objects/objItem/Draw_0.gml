if (!level_is_visible(floor(x / GRID_WIDTH), floor(y / GRID_HEIGHT))) { exit; }

draw_sprite(sprite_index, image_index, x + objLevel.xport, y + objLevel.yport);