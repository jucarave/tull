function player_attack_target(){
	var hor = keyboard_check_pressed(KEY_RIGHT) - keyboard_check_pressed(KEY_LEFT);
	
	if (hor != 0) {
		visibleTargetSelected += hor;
		if (visibleTargetSelected >= array_length(visibleTargets)) { 
			visibleTargetSelected = 0; 
		} else if (visibleTargetSelected < 0) { 
			visibleTargetSelected = array_length(visibleTargets) - 1; 
		}
		
		exit;
	}
	
	if (keyboard_check_pressed(KEY_CANCEL)) {
		visibleTargets = noone;
		state = STATES.IDLE;
		sys_set_action_text("");
		exit;
	}
	
	if (keyboard_check_pressed(KEY_INTERACT)) {
		var target = visibleTargets[visibleTargetSelected];
		attack_bow(id, target, player_get_weapon(), target.x, target.y);
		visibleTargets = noone;
		state = STATES.NONE;
	}
}