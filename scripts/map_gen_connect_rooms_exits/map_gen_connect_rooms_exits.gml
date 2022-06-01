function map_gen_connect_rooms_exits(roomA, roomB, exitInd){
	roomA.exits[@ exitInd] = roomB;
	roomB.exits[@ map_gen_inverse_door(exitInd)] = roomA;
}