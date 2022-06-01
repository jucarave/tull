function map_gen_add_room(rooms, currentRoom){
	var exitInd = map_gen_room_get_random_exit(currentRoom);
	
	var prefabIndex = irandom(array_length(prefabs) - 1);
	var prefab = prefabs[prefabIndex];
	
	var roomPosition = map_gen_calculate_new_room_position(currentRoom, exitInd, prefab);
	var newRoom = map_gen_create_room(prefabIndex, roomPosition.x, roomPosition.y, prefab.width, prefab.height);
	
	if (map_gen_collides_with_room(rooms, newRoom)) {
		return noone;
	}
	
	map_gen_connect_rooms_exits(currentRoom, newRoom, exitInd);

	var doorway = map_gen_create_doorway(currentRoom, exitInd);
	
	array_push(rooms, doorway);
	array_push(rooms, newRoom);
	
	return newRoom;
}