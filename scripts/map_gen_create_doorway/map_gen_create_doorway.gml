function map_gen_create_doorway(roomA, exitInd){
	var _x, _y;
	var prefabA = prefabs[roomA.prefabIndex];
	
	if (exitInd == MAP_GEN_EXIT_NORTH) {
		_x = roomA.x + prefabA.exits[exitInd].x;
		_y = roomA.y - 1;
	} else if (exitInd == MAP_GEN_EXIT_EAST) {
		_x = roomA.x + roomA.w;
		_y = roomA.y + prefabA.exits[exitInd].y;
	} else if (exitInd == MAP_GEN_EXIT_SOUTH) {
		_x = roomA.x + prefabA.exits[exitInd].x;
		_y = roomA.y + roomA.h;
	} else if (exitInd == MAP_GEN_EXIT_WEST) {
		_x = roomA.x - 1;
		_y = roomA.y + prefabA.exits[exitInd].y;
	}
	
	return map_gen_create_room(-1, _x, _y, 1, 1);
}