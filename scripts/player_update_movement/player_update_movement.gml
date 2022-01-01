function player_update_movement() {
	var hor = keyboard_check(KEY_RIGHT) - keyboard_check(KEY_LEFT);
	var ver = (hor != 0) ? 0 : keyboard_check(KEY_DOWN) - keyboard_check(KEY_UP);
	
	movementDelay--;
	if (hor != 0 || ver != 0) {
		var actor = actor_get_at(x + hor * GRID_WIDTH, y + ver * GRID_HEIGHT);
		if (actor != noone) { // Bump melee attack
			actor_attack_to(actor);
			actor_end_turn();
			movementDelay = 8;
		} else if (movementDelay <= 0) {
			actor_move_to(hor, ver);
			
			movementDelay = 0;
		}
	}
}