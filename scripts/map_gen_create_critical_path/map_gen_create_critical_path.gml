function map_gen_create_critical_path(rooms, length){
	// Initial room
	var ind = irandom(array_length(prefabs) - 1);
	var prefab = prefabs[ind];
	var r = map_gen_create_room(ind, x, y, prefab.width, prefab.height);
	rooms[@ 0] = r;

	// Creating the critical path
	for (var i=0;i<length;i++) {
		var newRoom = map_gen_add_room(rooms, r);
		if (newRoom == noone) {
			i--;
			continue;
		}
	
		r = newRoom;
	}
}