for (var _y=0;_y<height;_y++) {
	var ver = _y * width;
	for (var _x=0;_x<width;_x++) {
	
		var tile = level[ver + _x];
		
		if (tile != 0) {
			draw_sprite(sprite_index, tile, _x * GRID_WIDTH, _y * GRID_HEIGHT);
		}
	}
}