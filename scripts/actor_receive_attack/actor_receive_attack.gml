function actor_receive_attack(weapon){
	actor.hp -= weapon.damage;

	if (actor.hp <= 0) {
		instance_destroy();
		sys_set_action_text(loc(actor.name + ".dies"), ACTION_TEXT_SHORT);
	}
}