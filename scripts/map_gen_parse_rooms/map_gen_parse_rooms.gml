function map_gen_parse_rooms(rooms, level, levelWidth){
	var count = array_length(rooms);
	for (var i=0;i<count;i++) {
		var r = rooms[i];
		var pmap;
	
		if (r.ind != -1) {
			var prefab = prefabs[r.ind];
			pmap = prefab.map;
		} else {
			pmap = array_create(r.w * r.h, 1);
		}
	
		var length = array_length(pmap);
	
		for (var j=0;j<length;j++) {
			var tile = pmap[j];
			var xx = r.x + j % r.w + 1;
			var yy = r.y + floor(j / r.w) + 1;
			var ind = yy * levelWidth + xx;
		
			level[@ ind] = tile;
		}
	}
}