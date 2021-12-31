function player_update_movement() {
	var hor = keyboard_check(KEY_RIGHT) - keyboard_check(KEY_LEFT);
	var ver = (hor != 0) ? 0 : keyboard_check(KEY_DOWN) - keyboard_check(KEY_UP);
	
	if (movementDelay-- <= 0) {
		if (hor != 0 || ver != 0) {
			actor_move_to(hor, ver);
			
			movementDelay = 0;
		}
	}
}