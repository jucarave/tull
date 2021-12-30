function level_is_solid(_x, _y) {
	if (_x < 0 || _y < 0 || _x >= objLevel.width || _y >= objLevel.height) {
		return true;
	}

	var ind = _y * objLevel.width + _x;
	var tile = objLevel.level[ind];
	
	return (array_find(objLevel.solids, tile) >= 0);
}