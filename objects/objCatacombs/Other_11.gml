var rooms = [];

// Initial room
var ind = irandom(array_length(prefabs) - 1);
var prefab = prefabs[ind];
var r = map_gen_create_room(ind, x, y, prefab.width, prefab.height);
rooms[0] = r;

// Creating the critical path
for (var i=0;i<10;i++) {
	var newRoom = map_gen_add_room(rooms, r);
	if (newRoom == noone) {
		i--;
		continue;
	}
	
	r = newRoom;
}

// Keeping the rooms inside the boundaries
var boundaries = map_gen_keep_rooms_in_boundaries(rooms);

// Create room level array
width = boundaries.x2 - boundaries.x1 + 2;
height = boundaries.y2 - boundaries.y1 + 2;
var levelSize = width * height;
level = array_create(levelSize, 0);

// Parsing all the rooms
map_gen_parse_rooms(rooms, level, width);

// Add walls
map_gen_add_walls(level, width, height);

// Print generated map
map_gen_print_map(level, width);

r = rooms[0];
var prefab = prefabs[r.ind];
instance_create_layer((prefab.player[0] + r.x) * GRID_WIDTH, (prefab.player[1] + r.y) * GRID_HEIGHT, "Instances", objPlayer);