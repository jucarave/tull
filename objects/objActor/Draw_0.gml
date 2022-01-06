if (!level_is_visible(xgrid, ygrid)) { exit; }

draw_sprite_ext(sprite_index, image_index, x + objLevel.xport, y + objLevel.yport, image_xscale, image_yscale, image_angle, image_blend, image_alpha);