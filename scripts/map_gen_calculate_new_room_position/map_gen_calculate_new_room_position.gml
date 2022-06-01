function map_gen_calculate_new_room_position(_room, exitInd, newRoomPrefab) {
	var _x, _y;
	var prefab = prefabs[_room.prefabIndex];
	var _roomExit = prefab.exits[exitInd];
	var _newRoomExit = newRoomPrefab.exits[map_gen_inverse_door(exitInd)];
	
	if (exitInd == 0) { // North
		_x = _room.x + _roomExit.x - _newRoomExit.x;
		_y = _room.y - newRoomPrefab.height - 1;
	} else if (exitInd == 1) { // East
		_x = _room.x + _room.w + 1;
		_y = _room.y + _roomExit.y - _newRoomExit.y;
	} else if (exitInd == 2) { // South
		_x = _room.x + _roomExit.x - _newRoomExit.x;
		_y = _room.y + _room.h + 1;
	} else if (exitInd == 3) { // West
		_x = _room.x - newRoomPrefab.width - 1;
		_y = _room.y + _roomExit.y - _newRoomExit.y;
	}
	
	return {x: _x, y: _y};
}