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
}