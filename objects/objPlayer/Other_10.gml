/// @description Step Event

switch (state) {
	case STATES.IDLE:
		player_update_movement();
		if (!acted) player_update_attack();
		break;
		
	case STATES.SELECT_DIRECTION:
		player_attack_direction();
		break;
}