function lightcast(points) {
	var length = array_length(points);
	var px = floor(objPlayer.x / GRID_WIDTH);
	var py = floor(objPlayer.y / GRID_HEIGHT);
		
	for (var i=0;i<length;i++) {
		var p = points[i];
		var gx = p[0];
		var gy = p[1];
		
		var distance = point_distance(px, py, gx, gy);
		if (distance >= LIGHT_DISTANCE) {
			break;
		}
	
		objLevel.viewMap[gy * objLevel.width + gx] = 2;
		
		if (level_is_solid(gx, gy, true)) {
			break;
		}
	}
}

function level_update_light() {
	// Update shadows
	var length = array_length(objLevel.viewMap);
	for (var i=0;i<length;i++) {
		if (objLevel.viewMap[i] == 2) {
			objLevel.viewMap[i] = 1;
		}
	}

	// Update Light
	var px = floor(objPlayer.x / GRID_WIDTH);
	var py = floor(objPlayer.y / GRID_HEIGHT);
	var lineDistance = round(LIGHT_DISTANCE * 1.5);
	
	var _y = -lineDistance;
	var _x = -lineDistance;
	repeat(2) {
		for (_x=-lineDistance;_x<lineDistance;_x++) {
			var points = bresenham_line(px, py, px + _x, py + _y);
			lightcast(points);
		}
		
		_y = lineDistance;
	}
	
	_y = -lineDistance;
	_x = -lineDistance;
	repeat(2) {
		for (_y=-lineDistance;_y<lineDistance;_y++) {
			var points = bresenham_line(px, py, px + _x, py + _y);
			lightcast(points);
		}
		
		_x = lineDistance;
	}
}