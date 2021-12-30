function player_attack_direction(){
	var hor = keyboard_check(vk_right) - keyboard_check(vk_left);
	var ver = (hor != 0) ? 0 : keyboard_check(vk_down) - keyboard_check(vk_up);
	
	if (hor != 0 || ver != 0) {
		var xTo = x + hor * GRID_WIDTH;
		var yTo = y + ver * GRID_HEIGHT;
		
		sys_set_action_text("");
		
		var actor = actor_get_at(xTo, yTo);
		if (actor != noone) {
			instance_destroy(actor);
			sys_set_action_text("Skeleton just died.", 5);
		}
		
		actor_end_turn();
		state = STATES.IDLE;
		
		movementDelay = 8;
	}
}