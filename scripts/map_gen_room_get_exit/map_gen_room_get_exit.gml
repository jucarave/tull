function map_gen_room_get_exit(_room) {
	var hasExits = array_find(_room.exits, noone);
	if (hasExits == -1) { return noone; }
	
	var _exit = irandom(3);
	while (_room.exits[_exit] != noone) {
		_exit = irandom(3);
	}
	
	return _exit;
}