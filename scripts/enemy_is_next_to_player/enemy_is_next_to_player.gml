function enemy_is_next_to_player() {
	var dx = abs(x - objPlayer.x) / GRID_WIDTH;
	var dy = abs(y - objPlayer.y) / GRID_HEIGHT;
	
	return (dx == 1 && dy == 0) || (dx == 0 && dy == 1);
}