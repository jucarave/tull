function map_gen_connect_rooms(roomA, roomB, exitInd){
	var _x, _y;
	
	if (exitInd == 0) { // North
		_y = roomA.y - 1;
	} else if (exitInd == 1) { // East
		_x = roomA.x + roomA.w;
	} else if (exitInd == 2) { // South
		_y = roomA.y + roomA.h;
	} else if (exitInd == 3) { // West
		_x = roomA.x - 1;
	}
	
	if (exitInd == 0 || exitInd == 2) {
		var x1 = max(roomA.x, roomB.x);
		var x2 = min(roomA.x + roomA.w - 1, roomB.x + roomB.w - 1);
		
		_x = irandom_range(x1, x2);
	} else if (exitInd == 1 || exitInd == 3) {
		var y1 = max(roomA.y, roomB.y);
		var y2 = min(roomA.y + roomA.h - 1, roomB.y + roomB.h - 1);
		
		_y = irandom_range(y1, y2);
	}
	
	return map_gen_create_room(-1, _x, _y, 1, 1);
}