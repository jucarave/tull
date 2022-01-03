function ui_draw_weapons(){
	var _y = 334;
	draw_sprite(sprUIItemBack, 0, 15, _y);
	if (objSystem.weapon != -1) {
		var item = objSystem.weapons[| objSystem.weapon];
		draw_sprite(item.sprite, 0, 15, _y);
	}

	// Weapons inventory
	if (objPlayer.state == objPlayer.STATES.WEAPONS_MENU) {
		var length = ds_list_size(objSystem.weapons) + 1;
		var hor = 0;
		var cursor = objSystem.weapon + 1;
	
		for (var i=0;i<length;i++) {
			var _x = 33 + 19 * hor++;
			var selected = (cursor == i) ? 1 : 0;
			draw_sprite(sprUIItemBack, selected, _x, _y);
	
			if (i > 0) {
				var item = objSystem.weapons[| i - 1];
				draw_sprite(item.sprite, 0, _x, _y);
			}
		}
	}
}