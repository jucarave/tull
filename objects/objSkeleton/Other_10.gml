/// @description Step Event

switch (state) {
	case STATES.IDLE:
		if (active) {
			enemy_pursue_player();
		} else if (level_is_visible(xgrid, ygrid)) {
			active = true;
			sys_set_action_text("You see a spooky skeleton", ACTION_TEXT_SHORT);
		} else {
			actor_end_turn();
		}
		break;
		
	case STATES.MOVING:
		actor_update_movement();
		break;
}