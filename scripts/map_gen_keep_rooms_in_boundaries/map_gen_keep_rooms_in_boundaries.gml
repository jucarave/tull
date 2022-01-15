function map_gen_keep_rooms_in_boundaries(rooms){
	var count = array_length(rooms);
	var x1 = 0;
	var y1 = 0;
	var x2 = 0;
	var y2 = 0;
	
	// Finding boundaries of map
	for (var i=0;i<count;i++) {
		var r = rooms[i];
		x1 = min(x1, r.x);
		y1 = min(y1, r.y);
		x2 = max(x2, r.x + r.w);
		y2 = max(y2, r.y + r.h);
	}

	// Keeping the rooms inside the boundaries
	for (var i=0;i<count;i++) {
		var r = rooms[i];
	 
		r.x -= x1;
		r.y -= y1;
	}
	
	return {
		x1: x1,
		y1: y1,
		x2: x2,
		y2: y2
	};
}