var rooms = [];
var count = 0;
var x1 = 0;
var y1 = 0;
var x2 = 0;
var y2 = 0;

// Initial room
var ind = irandom(array_length(prefabs));
var prefab = prefabs[ind];
var r = {
	ind: ind,
	x: 0,
	y: 0,
	w: prefab.width,
	h: prefab.height
};

rooms[count++] = r;

// Creating a hallway
r = {
	ind: -1,
	x: 5,
	y: 2,
	w: 8,
	h: 2
}
rooms[count++] = r;

// Finding boundaries of map
for (var i=0;i<count;i++) {
	var r = rooms[i];
	x1 = min(x1, r.x);
	y1 = min(y1, r.y);
	x2 = max(x2, r.x + r.w);
	y2 = max(y2, r.y + r.h);
}

width = x2 - x1 + 2;
height = y2 - y1 + 2;

var levelSize = width * height;
level = array_create(levelSize, 0);

// Parsing all the rooms
for (var i=0;i<count;i++) {
	var r = rooms[i];
	// Keeping the map inside the boundaries
	r.x -= x1;
	r.y -= y1;
	
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
		var ind = yy * width + xx;
		
		level[ind] = tile;
	}
}

// Add walls
for (var i=0;i<levelSize;i++) {
	var xx = i % width;
	var yy = floor(i / width);
	
	var tile = level[i];
	if (tile != 0) { continue; }
	
	var tu = (yy > 0) ? level[(yy - 1) * width + xx] : 0;
	var td = (yy < height - 1) ? level[(yy + 1) * width + xx] : 0;
	var tl = (xx > 0) ? level[yy * width + xx - 1] : 0;
	var tr = (xx < width - 1) ? level[yy * width + xx + 1] : 0;
	
	if (td == 1 || tu == 1 || tl == 1 || tr == 1) { 
		level[i] = 3;
		continue;
	}
	
	var tul = (yy > 0 && xx > 0)? level[(yy - 1) * width + (xx - 1)] : 0;
	var tur = (yy > 0 && xx < width - 1)? level[(yy - 1) * width + (xx + 1)] : 0;
	var tdl = (yy < height - 1 && xx > 0)? level[(yy + 1) * width + (xx - 1)] : 0;
	var tdr = (yy < height - 1 && xx < width - 1)? level[(yy + 1) * width + (xx + 1)] : 0;
	
	if (tul == 1 || tur == 1 || tdl == 1 || tdr == 1) { 
		level[i] = 3;
		continue;
	}
}

map_gen_print_map(level, width);

var prefab = prefabs[rooms[0].ind];
instance_create_layer(prefab.player[0] * GRID_WIDTH, prefab.player[1] + GRID_HEIGHT, "Instances", objPlayer);