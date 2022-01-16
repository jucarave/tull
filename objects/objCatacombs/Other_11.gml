var rooms = [];
var count = 0;

// Initial room
var ind = irandom(array_length(prefabs) - 1);
var prefab = prefabs[ind];
var r = map_gen_create_room(ind, x, y, prefab.width, prefab.height);
rooms[count++] = r;

// Creating the critical path
var exitInd = map_gen_room_get_exit(r);
ind = irandom(array_length(prefabs) - 1);
prefab = prefabs[ind];
var roomPosition = map_gen_room_get_exit_position(r, exitInd, prefab);
var newRoom = map_gen_create_room(ind, roomPosition.x, roomPosition.y, prefab.width, prefab.height);
r.exits[exitInd] = newRoom;

// Open tile connecting rooms
var door = map_gen_connect_rooms(r, newRoom, exitInd);
rooms[count++] = door;

r = newRoom;
rooms[count++] = r;

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