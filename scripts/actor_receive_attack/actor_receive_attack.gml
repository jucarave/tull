function actor_receive_attack(weapon){
	var instance = (object_index == objPlayer) ? objSystem.playerStats : actor;
	instance.hp -= weapon.damage;
	
	ui_create_damage(x, y, weapon.damage);

	if (instance.hp <= 0) {
		instance_destroy();
		sys_set_action_text(loc(instance.name + ".dies"), ACTION_TEXT_SHORT);
	}
}