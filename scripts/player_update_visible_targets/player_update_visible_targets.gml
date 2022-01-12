function player_update_visible_targets(){
	var count = 0;
	visibleTargets = [];
	visibleTargetSelected = 0;
	
	var length = instance_number(objMonster);
	for (var i=0;i<length;i++) {
		var ins = instance_find(objMonster, i);
		
		if (level_is_visible(floor(ins.x / GRID_WIDTH), floor(ins.y / GRID_HEIGHT))) {
			visibleTargets[count++] = ins;
		}
	}
	
	if (count > 0) {
		return true;
	} else {
		visibleTargets = noone;
		return false;
	}
}