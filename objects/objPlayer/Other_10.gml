/// @description Step Event

switch (state) {
	case STATES.IDLE:
		player_update_movement();
		if (!acted) player_update_attack();
		if (!acted) player_update_pass();
		break;
		
	case STATES.SELECT_DIRECTION:
		player_attack_direction();
		break;
		
	case STATES.MOVING:
		actor_update_movement();
		if (acted) {
			level_update_light();
		}
		break;
}