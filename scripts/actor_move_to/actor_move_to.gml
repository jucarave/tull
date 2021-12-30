function actor_move_to(xTo, yTo){
	var _x = x + xTo * GRID_WIDTH;
	var _y = y + yTo * GRID_HEIGHT;
	
	if (!level_is_solid(floor(_x / GRID_WIDTH), floor(_y / GRID_HEIGHT))) {
		x = _x;
		y = _y;
	}
}