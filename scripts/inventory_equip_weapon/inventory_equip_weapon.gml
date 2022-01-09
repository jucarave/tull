function inventory_equip_weapon(){
	objSystem.weapon = objSystem.inventoryCursor;
		
	if (objSystem.weapon != prevWeapon) {
		if (objSystem.weapon == -1) {
			sys_set_action_text(loc("item.weaponSheathed"), ACTION_TEXT_SHORT);
		} else {
			sys_set_action_text(loc(objSystem.weapons[| objSystem.weapon].name + ".equipped"), ACTION_TEXT_SHORT);
		}
	}
}