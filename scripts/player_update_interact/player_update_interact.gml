function player_update_interact(){
	if (keyboard_check_pressed(KEY_INTERACT)) {
		var item = level_get_item_at(x, y);
		if (item != noone) {
			inventory_add_item(item.item);
			sys_set_action_text(item.item.name + " picked", 5);
			instance_destroy(item);
		}
		
		actor_end_turn();
	}
}