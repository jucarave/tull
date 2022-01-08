var player = objSystem.playerStats;
var length = (player.maxHP + 2) / 3;
draw_sprite_ext(sprUIBar, 0, 2, 357, 5/3, length, 0, c_white, 1);
draw_sprite_ext(sprHPBarFill, 0, 3, 356, 1, player.hp, 0, c_white, 1);

var length = (player.maxMP + 2) / 3;
draw_sprite_ext(sprUIBar, 0, 9, 357, 4/3, length, 0, c_white, 1);
draw_sprite_ext(sprMPBarFill, 0, 10, 356, 1, player.mp, 0, c_white, 1);

var _y = 308;
draw_sprite(sprUIItemBack, 0, 15, _y);
if (objPlayer.state == objPlayer.STATES.INVENTORY && objSystem.inventoryTab == 1) {
	ui_draw_inventory(objSystem.consumables, objSystem.inventoryCursor + 1, _y);
}

_y = 334;

// Weapons inventory
draw_sprite(sprUIItemBack, 0, 15, _y);
if (objSystem.weapon != NO_WEAPON) {
	var item = objSystem.weapons[| objSystem.weapon];
	draw_sprite(item.sprite, 0, 15, _y);
}
if (objPlayer.state == objPlayer.STATES.INVENTORY && objSystem.inventoryTab == 0) {
	ui_draw_inventory(objSystem.weapons, objSystem.inventoryCursor + 1, _y);
}