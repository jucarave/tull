function map_gen_add_room(rooms, currentRoom){
	var exitInd = map_gen_room_get_exit(currentRoom);
	var ind = irandom(array_length(prefabs) - 1);
	var prefab = prefabs[ind];
	var roomPosition = map_gen_room_get_exit_position(currentRoom, exitInd, prefab);
	var newRoom = map_gen_create_room(ind, roomPosition.x, roomPosition.y, prefab.width, prefab.height);
	
	if (map_gen_collides_with_room(rooms, newRoom)) {
		return noone;
	}
	
	currentRoom.exits[@ exitInd] = newRoom;
	newRoom.exits[@ 
	map_gen_inverse_door(exitInd)] = currentRoom;

	// Open tile connecting rooms
	var door = map_gen_connect_rooms(currentRoom, newRoom, exitInd);
	
	rooms[@ array_length(rooms)] = door;
	rooms[@ array_length(rooms)] = newRoom;
	
	return newRoom;
}