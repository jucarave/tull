/// @description Step Event

switch (state) {
	case STATES.IDLE:
		var xTo = irandom_range(-1, 1);
		var yTo = (xTo == 0) ? irandom_range(-1, 1) : 0;

		if (xTo != 0 || yTo != 0) {
			actor_move_to(xTo, yTo);
		} else {
			actor_end_turn();
		}
		break;
		
	case STATES.MOVING:
		actor_update_movement();
		break;
}