function enemy_pursue_player(){
	// Try to move while all the enmies are solid
	level_set_solids(objMonster, true, true);
	var path = level_get_path(x, y, objPlayer.x, objPlayer.y);
	level_set_solids(objMonster, false, true);
	
	// If no path was found then try again without the enemies
	if (array_length(path) == 0) {
		path = level_get_path(x, y, objPlayer.x, objPlayer.y);
	}
	
	if (array_length(path) > 0) {
		var point = path[0];
		
		if (actor_get_at(point._x, point._y)) {
			actor_end_turn();
			exit;
		}

		var xTo = (point._x - x) / GRID_WIDTH;
		var yTo = (point._y - y) / GRID_HEIGHT;
		
		actor_move_to(xTo, yTo);
	} else {
		actor_end_turn();
	}
}