function enemy_pursue_player(){
	var path = level_get_path(x, y, objPlayer.x, objPlayer.y);
	if (array_length(path) > 0) {
		var point = path[0];
		var xTo = (point._x - x) / GRID_WIDTH;
		var yTo = (point._y - y) / GRID_HEIGHT;
			
		actor_move_to(xTo, yTo);
	} else {
		actor_end_turn();
	}
}