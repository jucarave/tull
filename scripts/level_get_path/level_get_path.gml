function level_get_path(x1, y1, x2, y2){
	var path = path_add();
	
	var points = [];
	var pCount = 0;
	
	if (mp_grid_path(objLevel.mpGrid, path, x1, y1, x2, y2, false)) {
		var length = path_get_number(path);
		for (var i=1;i<length;i++) {
			var px = path_get_point_x(path, i) - GRID_WIDTH / 2;
			var py = path_get_point_y(path, i) - GRID_HEIGHT / 2;
			
			points[pCount++] = { _x: px, _y: py };
		}
	}
	
	path_delete(path);
	
	return points;
}