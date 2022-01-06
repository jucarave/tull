function enemy_update_idle(){
	if (enemy_is_next_to_player()) {
		actor_attack_to(objPlayer, weapon, objPlayer.x, objPlayer.y);
		exit;
	}
	
	enemy_pursue_player();
}