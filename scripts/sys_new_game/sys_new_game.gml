function sys_new_game(){
	weapons = ds_list_create();
	weapon = NO_WEAPON;
	
	consumables = ds_list_create();
	
	inventoryCursor = -1;
	inventoryTab = 0;
	inventoryLists = [weapons, consumables];
	
	playerStats = actor_create("player", 48, 40);
}