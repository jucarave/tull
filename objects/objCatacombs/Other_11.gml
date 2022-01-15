var rooms = [];
var count = 0;

// Initial room
var ind = irandom(array_length(prefabs));
var prefab = prefabs[ind];
var r = { ind: ind, x: 0, y: 0, w: prefab.width, h: prefab.height };
rooms[count++] = r;

// Creating a hallway
r = { ind: -1, x: 5, y: 2, w: 8, h: 1 }
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

var prefab = prefabs[rooms[0].ind];
instance_create_layer(prefab.player[0] * GRID_WIDTH, prefab.player[1] + GRID_HEIGHT, "Instances", objPlayer);