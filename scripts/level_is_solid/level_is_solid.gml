function level_is_solid(_x, _y, useLightSolids = false) {
	if (_x < 0 || _y < 0 || _x >= objLevel.width || _y >= objLevel.height) {
		return true;
	}

	var ind = _y * objLevel.width + _x;
	var tile = objLevel.level[ind];
	
	if (useLightSolids) {
		return (array_find(objLevel.lightSolids, tile) >= 0);
	}
	
	return (array_find(objLevel.solids, tile) >= 0);
}