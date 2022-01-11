function player_attack_direction(){
	if (keyboard_check_pressed(KEY_CANCEL)) {
		state = STATES.IDLE;
		sys_set_action_text("");
		exit;
	}
	
	var hor = keyboard_check(KEY_RIGHT) - keyboard_check(KEY_LEFT);
	var ver = (hor != 0) ? 0 : keyboard_check(KEY_DOWN) - keyboard_check(KEY_UP);
	
	if (hor != 0 || ver != 0) {
		var xTo = x + hor * GRID_WIDTH;
		var yTo = y + ver * GRID_HEIGHT;
		
		sys_set_action_text("");
		
		var actor = actor_get_at(xTo, yTo);
		actor_attack_to(actor, player_get_weapon(), xTo, yTo);
	}
}