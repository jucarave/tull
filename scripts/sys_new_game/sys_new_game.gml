function sys_new_game(){
	weapons = ds_list_create();
	weapon = NO_WEAPON;
	
	playerStats = actor_create("player", 48, 40);
}