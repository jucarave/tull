function attack_slash(target, weapon, _x, _y){
	fx_add_animation(sprFXSlash, _x, _y);
	if (target != noone) { fx_perform_attack(target, weapon); }
	fx_end_turn(id);
	fx_set_state(id, STATES.IDLE);

	fx_start();
}