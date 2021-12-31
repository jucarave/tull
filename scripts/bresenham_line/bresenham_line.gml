function bresenham_line(x0, y0, x1, y1){
	var dx = abs(x1 - x0);
	var dy = abs(y1 - y0);
	var sx = (x0 < x1) ? 1 : -1;
	var sy = (y0 < y1) ? 1 : -1;
	var err = dx - dy;

	var points = [];
	var ind = 0;

	while(true) {
		points[ind++] = [x0, y0];

		if ((x0 == x1) && (y0 == y1)) {
			break;
		}

		var e2 = 2 * err;
	  
		if (e2 > -dy) { 
			err -= dy; 
			x0  += sx; 
		}
		
		if (e2 < dx) {
			err += dx; 
			y0  += sy; 
		}
	}
	
	return points;
}