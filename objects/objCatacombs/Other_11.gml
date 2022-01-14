var rooms = [];
var count = 0;
var x1 = 0;
var y1 = 0;
var x2 = 0;
var y2 = 0;

// Initial room
var r = {
	ind: irandom(array_length(prefabs)),
	x: 0,
	y: 0
};

rooms[count++] = r;

for (var i=0;i<count;i++) {
	var r = rooms[i];
	var prefab = prefabs[r.ind];
	x1 = min(x1, r.x);
	y1 = min(y1, r.y);
	x2 = max(x2, r.x + prefab.width);
	y2 = max(y2, r.y + prefab.height);
}

width = x2 - x1;
height = y2 - y1;

level = array_create(width * height, 0);

for (var i=0;i<count;i++) {
	var r = rooms[i];
	r.x -= x1;
	r.y -= y1;
	
	var prefab = prefabs[r.ind];
	var pmap = prefab.map;
	var length = array_length(pmap);
	
	for (var j=0;j<length;j++) {
		var tile = pmap[j];
		var xx = r.x + j % prefab.width;
		var yy = r.y + floor(j / prefab.width);
		var ind = yy * width + xx;
		
		level[ind] = tile;
	}
}

var prefab = prefabs[rooms[0].ind];
instance_create_layer(prefab.player[0] * GRID_WIDTH, prefab.player[1] + GRID_HEIGHT, "Instances", objPlayer);