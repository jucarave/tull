/*var vx = x - camera_get_view_x(camera) - objLevel.xport;
var vy = y - camera_get_view_y(camera) - objLevel.yport;

if (vx < 0 || vy < 0) { exit; }*/

draw_sprite_ext(sprite_index, image_index, x + objLevel.xport, y + objLevel.yport, image_xscale, image_yscale, image_angle, image_blend, image_alpha);