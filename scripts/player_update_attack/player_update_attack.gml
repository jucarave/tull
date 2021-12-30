function player_update_attack(){
	if (keyboard_check_pressed(ord("A"))) {
		state = STATES.SELECT_DIRECTION;
	}
}