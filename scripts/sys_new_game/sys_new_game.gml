function sys_new_game(){
	weapons = ds_list_create();
	weapon = NO_WEAPON;
	
	consumables = ds_list_create();
	
	playerStats = actor_create("player", 48, 40);
}