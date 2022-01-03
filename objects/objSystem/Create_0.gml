var camera = view_camera[0];
var camW = camera_get_view_width(camera);
var camH = camera_get_view_height(camera);

display_set_gui_size(camW, camH);

sys_new_game();

punch = item_create_weapon(noone, "punch", 1, ATTACK_TYPE_PUNCH);

global.LANG = noone;
lan_es();