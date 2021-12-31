function player_update_attack(){
	if (keyboard_check_pressed(KEY_ATTACK)) {
		state = STATES.SELECT_DIRECTION;
		sys_set_action_text("Select a direction to attack.");
	}
}