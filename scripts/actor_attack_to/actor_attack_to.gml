function actor_attack_to(target, _x, _y){
	var weapon = player_get_weapon();
	
	switch (weapon.attackType) {
		case ATTACK_TYPE_PUNCH:
			attack_slash(target, weapon, _x, _y);
			break;
			
		case ATTACK_TYPE_SLASH:
			attack_slash(target, weapon, _x, _y);
			break;
	}

	state = STATES.NONE;
}