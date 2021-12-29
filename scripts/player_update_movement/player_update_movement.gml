function player_update_movement() {
	var hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));
	
	if (movementDelay-- == 0) {
		x += hor * 16;
		y += ver * 24;
		
		movementDelay = 5;
		
		actor_end_turn();
	}
}