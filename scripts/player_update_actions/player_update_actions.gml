function player_update_actions(){
	if (keyboard_check_pressed(KEY_INTERACT)) {
		var item = level_get_item_at(x, y);
		if (item != noone) {
			inventory_add_item(item.item);
			sys_set_action_text(item.item.name + " picked", ACTION_TEXT_SHORT);
			instance_destroy(item);
		}
		
		actor_end_turn();
	}else if (keyboard_check_pressed(KEY_WEAPONS)) {
		state = STATES.WEAPONS_MENU;
		prevWeapon = objSystem.weapon;
	}
}