function player_update_attack(){
	if (keyboard_check_pressed(KEY_ATTACK)) {
		var weapon = player_get_weapon();
		if (weapon.ranged) {
			state = STATES.SELECT_TARGET;
			player_update_visible_targets();
			sys_set_action_text(loc("attack.selectTarget"));
		} else {
			state = STATES.SELECT_DIRECTION;
			sys_set_action_text(loc("attack.selectDir"));
		}
	}
}