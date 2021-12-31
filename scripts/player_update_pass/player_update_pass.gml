function player_update_pass(){
	if (keyboard_check_pressed(KEY_PASS)) {
		sys_set_action_text("Pass", 3);
		actor_end_turn();
	}
}