if (step == noone) { exit; }

switch (step[FX_DIR_TYPE]) {
	case FX_DIR_ANIM:
		fx_execute_animation();
		break;
		
	case FX_DIR_SET_STATE:
		var obj = step[FX_DIR_SET_STATE_TARGET];
		obj.state = step[FX_DIR_SET_STATE_STATE];
		fx_next_step();
		break;
		
	case FX_DIR_ATTACK:
		var weapon = step[FX_DIR_ATTACK_WEAPON];
		with (step[FX_DIR_ATTACK_TARGET]) { actor_receive_attack(weapon); }
		fx_next_step();
		break;
		
	case FX_DIR_END_TURN:
		with (step[FX_DIR_END_TURN_ACTOR]) { actor_end_turn(); }
		fx_next_step();
		break;
}