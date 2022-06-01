function map_gen_room_get_random_exit(_room) {
	if (!map_gen_room_has_exit(_room)) { 
		return noone;
	}
	
	var exitIndex;
	do {
		exitIndex = irandom(3);
	} until (_room.exits[exitIndex] == noone);
	
	return exitIndex;
}