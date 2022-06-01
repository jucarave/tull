function map_gen_collides_with_room(rooms, _room){
	var length = array_length(rooms);
	var x1 = _room.x;
	var y1 = _room.y;
	var x2 = _room.x + _room.w;
	var y2 = _room.y + _room.h;
	
	for (var i=0;i<length;i++) {
		var r = rooms[i];
		
		if (!(x2 < r.x - 1 || x1 >= r.x + r.w + 1 || y2 < r.y - 1 || y1 >= r.y + r.h + 1)) {
			return true;
		}
	}
	
	return false;
}