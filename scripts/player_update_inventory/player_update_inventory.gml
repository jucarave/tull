function player_update_inventory(){
	var hor = keyboard_check_pressed(KEY_RIGHT) - keyboard_check_pressed(KEY_LEFT);
	var ver = keyboard_check_pressed(KEY_UP) - keyboard_check_pressed(KEY_DOWN);
	
	if (ver != 0) {
		objSystem.inventoryTab = clamp(objSystem.inventoryTab + ver, 0, array_length(objSystem.inventoryLists) - 1);
		objSystem.inventoryCursor = -1;
		exit;
	}
	
	var list = objSystem.inventoryLists[objSystem.inventoryTab];
	
	if (hor != 0) {
		objSystem.inventoryCursor = clamp(objSystem.inventoryCursor + hor, -1, ds_list_size(list) - 1);
	} else if (keyboard_check_pressed(KEY_INVENTORY)) {
		state = STATES.IDLE;
		inventory_reset();
	} else if (keyboard_check_pressed(KEY_INTERACT)) {
		switch (objSystem.inventoryTab) {
			case 0: // Weapons
				inventory_equip_weapon();
				break;
				
			case 1: // Consumables
				inventory_use_item(objSystem.playerStats);
				
				break;
		}
		
		state = STATES.IDLE;
		inventory_reset();
	}
}