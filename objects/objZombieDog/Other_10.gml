/// @description Step Event

switch (state) {
	case STATES.NONE:
		break;
		
	case STATES.IDLE:
		if (active) {
			enemy_update_idle();
		} else if (level_is_visible(xgrid, ygrid)) {
			actor_activate();
		} else {
			actor_end_turn();
		}
		break;
		
	case STATES.MOVING:
		actor_update_movement();
		break;
}