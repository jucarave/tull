function actor_move_to(xTo, yTo){
	var _x = x + xTo * GRID_WIDTH;
	var _y = y + yTo * GRID_HEIGHT;
	
	var gx = floor(_x / GRID_WIDTH);
	var gy = floor(_y / GRID_HEIGHT);
	
	if (!level_is_solid(gx, gy)) {
		if (level_is_visible(gx, gy)) {
			targetX = _x;
			targetY = _y;
			state = STATES.MOVING;
		} else {
			x = _x;
			y = _y;
			actor_end_turn();
		}
	}
}