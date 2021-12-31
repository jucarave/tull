function actor_update_movement(){
	var dx = targetX - x;
	var dy = targetY - y;
	
	if (dx > 0) {
		x += spd;
		
		if (x >= targetX) {
			x = targetX;
		} 
	} else if (dx < 0) {
		x -= spd;
		
		if (x <= targetX) {
			x = targetX;
		} 
	} else if (dy > 0) {
		y += spd;
		
		if (y >= targetY) {
			y = targetY;
		} 
	} else if (dy < 0) {
		y -= spd;
		
		if (y <= targetY) {
			y = targetY;
		} 
	}
	
	if (x == targetX && y == targetY) {
		actor_end_turn();
		state = STATES.IDLE;
	}
}