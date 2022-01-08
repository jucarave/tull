function level_set_solids(instances, _solid, notme) {
	var length = instance_number(instances);
	for (var i=0;i<length;i++) {
		var ins = instance_find(instances, i);
		if (notme && ins.id == id) { continue; }
		
		var _x = floor(ins.x / GRID_WIDTH);
		var _y = floor(ins.y / GRID_HEIGHT);
		
		if (_solid) {
			mp_grid_add_cell(objLevel.mpGrid, _x, _y);
		} else {
			mp_grid_clear_cell(objLevel.mpGrid, _x, _y);
		}
	}
}