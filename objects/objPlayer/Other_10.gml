/// @description Step Event

switch (state) {
	case STATES.NONE:
		break;
		
	case STATES.IDLE:
		player_update_movement();
		if (!acted) player_update_actions();
		if (!acted) player_update_attack();
		break;
		
	case STATES.SELECT_DIRECTION:
		player_attack_direction();
		break;
		
	case STATES.MOVING:
		actor_update_movement();
		if (acted) level_update_light();
		break;
		
	case STATES.INVENTORY:
		player_update_inventory();
		break;
}