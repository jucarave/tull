function map_gen_create_level_with_rooms_boundaries(rooms){
	// Keeping the rooms inside the boundaries
	var boundaries = map_gen_keep_rooms_in_boundaries(rooms);

	// Create room level array
	width = boundaries.x2 - boundaries.x1 + 2;
	height = boundaries.y2 - boundaries.y1 + 2;
	var levelSize = width * height;
	level = array_create(levelSize, 0);
}