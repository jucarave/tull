function player_update_movement() {
	var hor = keyboard_check(vk_right) - keyboard_check(vk_left);
	var ver = (hor != 0) ? 0 : keyboard_check(vk_down) - keyboard_check(vk_up);
	
	if (movementDelay-- <= 0) {
		if (hor != 0 || ver != 0) {
			actor_move_to(hor, ver);
			actor_end_turn();
			
			movementDelay = 8;
		}
	}
}