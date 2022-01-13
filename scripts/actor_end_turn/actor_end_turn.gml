function actor_end_turn(){
	turns -= 1;
	if (turns == 0) {
		acted = true;
		turns = maxTurns;
	}
}