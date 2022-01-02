function actor_attack_to(target, _x, _y){
	fx_add_animation(sprFXSlash, _x, _y);
	if (target != noone) { fx_perform_attack(target); }
	fx_set_state(id, STATES.IDLE);
	fx_end_turn(id);

	fx_start();

	state = STATES.NONE;
}