function player_update_weapons_menu(){
	var hor = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
	
	if (hor != 0) {
		objSystem.weapon = clamp(objSystem.weapon + hor, -1, ds_list_size(objSystem.weapons) - 1);
	} else if (keyboard_check_pressed(KEY_WEAPONS)) {
		state = STATES.IDLE;
		
		if (objSystem.weapon != prevWeapon) {
			if (objSystem.weapon == -1) {
				sys_set_action_text(loc("item.weaponSheathed"), ACTION_TEXT_SHORT);
			} else {
				sys_set_action_text(loc(objSystem.weapons[| objSystem.weapon].name + ".equipped"), ACTION_TEXT_SHORT);
			}
		}
	}
}