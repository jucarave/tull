/// @description Step Event

switch (state) {
	case STATES.IDLE:
		if (active) {
			enemy_pursue_player();
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