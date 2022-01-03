var camera = view_camera[0];
var camW = camera_get_view_width(camera);
var camH = camera_get_view_height(camera);

display_set_gui_size(camW, camH);

sys_new_game();

global.LANG = noone;
lan_es();