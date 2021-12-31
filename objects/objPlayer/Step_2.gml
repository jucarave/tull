// Camera adjustment
var cx = x + sprite_width / 2 + objLevel.xport - camW;
var cy = y + sprite_height / 2 + objLevel.yport - camH;

camera_set_view_pos(camera, cx, cy);