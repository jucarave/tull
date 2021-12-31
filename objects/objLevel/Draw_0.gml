var x1 = floor(objPlayer.x / GRID_WIDTH) + xview;
var y1 = floor(objPlayer.y / GRID_HEIGHT) + yview;
var x2 = min(x1 + wview, width);
var y2 = min(y1 + hview, height);

x1 = max(x1, 0);
y1 = max(y1, 0);

for (var _y=y1;_y<y2;_y++) {
	var ver = _y * width;
	for (var _x=x1;_x<x2;_x++) {
	
		var tile = level[ver + _x];
		
		if (tile != 0) {
			draw_sprite(sprite_index, tile, _x * GRID_WIDTH + xport, _y * GRID_HEIGHT + yport);
		}
	}
}