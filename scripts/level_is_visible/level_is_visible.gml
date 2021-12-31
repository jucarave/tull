function level_is_visible(_x, _y){
	if (_x < 0 || _y < 0 || _x >= objLevel.width || _y >= objLevel.height) {
		return false;
	}
	
	return objLevel.viewMap[_y * objLevel.width + _x] == 2;
}