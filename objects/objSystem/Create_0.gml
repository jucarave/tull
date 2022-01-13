var camera = view_camera[0];
var camW = camera_get_view_width(camera);
var camH = camera_get_view_height(camera);

display_set_gui_size(camW, camH);

instance_create_layer(0, 0, "Instances", objCurrentTurn);

punch = item_create_weapon(noone, "punch", 1, ATTACK_TYPE_PUNCH, false);
slash2 = item_create_weapon(noone, "slash 2", 2, ATTACK_TYPE_SLASH, false);
bite2 = item_create_weapon(noone, "bite 2", 2, ATTACK_TYPE_BITE, false);

global.LANG = noone;
global.DMG_FONT = font_add_sprite_ext(sprDamageFont, "0123456789", true, 0);
lan_es();

if (global.LOAD_GAME) {
	sys_game_load_json();
} else {
	sys_new_game();
}

inventoryCursor = -1;
inventoryTab = 0;
inventoryLists = [weapons, consumables];