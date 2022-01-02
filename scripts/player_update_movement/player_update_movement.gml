function player_update_movement() {
	var hor = keyboard_check(KEY_RIGHT) - keyboard_check(KEY_LEFT);
	var ver = (hor != 0) ? 0 : keyboard_check(KEY_DOWN) - keyboard_check(KEY_UP);
	
	if (hor != 0 || ver != 0) {
		var xTo = x + hor * GRID_WIDTH;
		var yTo = y + ver * GRID_HEIGHT;
		var actor = actor_get_at(xTo, yTo);

		if (actor != noone) { // Bump melee attack
			actor_attack_to(actor, xTo, yTo);
		} else {
			actor_move_to(hor, ver);
		}
	}
}