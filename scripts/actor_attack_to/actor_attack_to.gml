function actor_attack_to(target, weapon, _x, _y){
	switch (weapon.attackType) {
		case ATTACK_TYPE_PUNCH:
			attack_slash(target, weapon, _x, _y);
			break;
			
		case ATTACK_TYPE_SLASH:
			attack_slash(target, weapon, _x, _y);
			break;
			
		case ATTACK_TYPE_BITE:
			attack_bite(target, weapon, _x, _y);
			break;
			
		case ATTACK_TYPE_BOW:
			attack_bow(id, target, weapon, _x, _y);
			break;
	}

	state = STATES.NONE;
}