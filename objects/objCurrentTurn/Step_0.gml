var ins = instancesList[| currentTurn];

with (ins) { event_user(EVENT_STEP); }

if (ins.acted) {
	currentTurn += 1;

	if (currentTurn >= ds_list_size(instancesList)) {
		currentTurn = 0;
	}
}