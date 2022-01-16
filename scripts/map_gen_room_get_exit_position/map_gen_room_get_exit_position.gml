function map_gen_room_get_exit_position(_room, exitInd, newRoomPrefab) {
	var _x, _y;
	
	if (exitInd == 0) { // North
		_x = irandom_range(_room.x + 1, _room.x + _room.w - 1);
		_y = _room.y - newRoomPrefab.height - 1;
	} else if (exitInd == 1) { // East
		_x = _room.x + _room.w + 1;
		_y = irandom_range(_room.y + 1, _room.y + _room.h - 1);
	} else if (exitInd == 2) { // South
		_x = irandom_range(_room.x + 1, _room.x + _room.w - 1);
		_y = _room.y + _room.h + 1;
	} else if (exitInd == 3) { // West
		_x = _room.x - newRoomPrefab.width - 1;
		_y = irandom_range(_room.y + 1, _room.y + _room.h - 1);
	}
	
	return {x: _x, y: _y};
}