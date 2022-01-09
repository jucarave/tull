function sys_new_game(){
	weapons = ds_list_create();
	weapon = NO_WEAPON;
	
	consumables = ds_list_create();
	
	inventoryCursor = -1;
	inventoryTab = 0;
	inventoryLists = [weapons, consumables];
	
	playerStats = actor_create("player", 48, 40);
	
	var level = instance_create_layer(0, 0, "Level", objCatacombs);
	with (level) { event_user(0); }
}