function map_gen_room_has_exit(_room){
	var hasExits = array_find(_room.exits, noone);
	return (hasExits != -1);
}