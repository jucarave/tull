function player_update_interact(){
	if (keyboard_check_pressed(KEY_INTERACT)) {
		var item = level_get_item_at(x, y);
		if (item != noone) {
			sys_set_action_text("Short sword picked", 5);
			instance_destroy(item);
		}
		
		actor_end_turn();
	}
}