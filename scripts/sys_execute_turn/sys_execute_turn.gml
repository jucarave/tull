function sys_execute_turn(){
	var ins = instancesList[| currentTurn];

	with (ins) { event_user(EVENT_STEP); }

	// If the actor finishes the turn then move to the next
	if (ins.acted) {
		currentTurn += 1;

		// Restart the turn list if overflowed
		if (currentTurn >= ds_list_size(instancesList)) {
			currentTurn = 0;
		}
	
		ins.acted = false;
		
		sys_execute_turn();
	}
}