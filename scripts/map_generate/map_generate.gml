function map_generate(){
	var rooms = [];

	map_gen_create_critical_path(rooms, 10);
	map_gen_create_level_with_rooms_boundaries(rooms);
	map_gen_parse_rooms(rooms, level, width);
	map_gen_add_walls(level, width, height);
	map_gen_print_map(level, width);

	r = rooms[0];
	var prefab = prefabs[r.ind];
	instance_create_layer((prefab.player[0] + r.x) * GRID_WIDTH, (prefab.player[1] + r.y) * GRID_HEIGHT, "Instances", objPlayer);
}